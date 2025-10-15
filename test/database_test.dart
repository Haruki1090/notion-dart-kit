import 'dart:io';

import 'package:notion_dart_kit/notion_dart_kit.dart';
import 'package:test/test.dart';

RichText _rt(String s) => RichText.text(
  text: TextContent(content: s),
  annotations: const Annotations(),
  plainText: s,
);

void main() {
  final token = Platform.environment['NOTION_TOKEN'];
  final parentPageId = Platform.environment['NOTION_PARENT_PAGE_ID'];
  final enabled =
      token != null &&
      token.isNotEmpty &&
      parentPageId != null &&
      parentPageId.isNotEmpty;

  group('Database Integration (21 property types)', () {
    test(
      'creates database, performs CRUD, filters, sorts, and pagination',
      () async {
        final client = NotionClient(token: token!);

        // 1) Create a related database for relation/rollup scenarios
        final relatedDb = await client.databases.create(
          parent: Parent.page(pageId: parentPageId!),
          title: [_rt('Integration Related DB')],
          properties: {
            'Title': {'title': {}},
            'Amount': {
              'number': {'format': 'number'},
            },
          },
        );

        // Create one page in related DB to later link via relation
        final relatedPage = await client.pages.create(
          parent: Parent.database(databaseId: relatedDb.id),
          properties: {
            'Title': {
              'title': [
                {
                  'type': 'text',
                  'text': {'content': 'Related Item'},
                },
              ],
            },
            'Amount': {'number': 10},
          },
        );

        // 2) Create the main database with all 21 property types
        final mainDb = await client.databases.create(
          parent: Parent.page(pageId: parentPageId),
          title: [_rt('Integration Main DB')],
          properties: {
            // Editable properties
            'Title': {'title': {}},
            'Rich': {'rich_text': {}},
            'Number': {
              'number': {'format': 'number'},
            },
            'Select': {
              'select': {
                'options': [
                  {'name': 'A', 'color': 'blue'},
                  {'name': 'B', 'color': 'green'},
                ],
              },
            },
            'Multi': {
              'multi_select': {
                'options': [
                  {'name': 'Red', 'color': 'red'},
                  {'name': 'Blue', 'color': 'blue'},
                ],
              },
            },
            'Date': {'date': {}},
            'People': {'people': {}},
            'Done': {'checkbox': {}},
            'URL': {'url': {}},
            'Email': {'email': {}},
            'Phone': {'phone_number': {}},
            'Files': {'files': {}},
            'Status': {
              'status': {
                'options': [
                  {'name': 'Todo', 'color': 'blue'},
                  {'name': 'In Progress', 'color': 'yellow'},
                  {'name': 'Done', 'color': 'green'},
                ],
              },
            },

            // Read-only/computed properties
            'Created': {'created_time': {}},
            'CreatedBy': {'created_by': {}},
            'Edited': {'last_edited_time': {}},
            'EditedBy': {'last_edited_by': {}},
            'Unique': {
              'unique_id': {'prefix': 'ID'},
            },
            'Formula': {
              'formula': {
                // reference Number property
                'expression': 'prop("Number") + 1',
              },
            },
            'Relation': {
              'relation': {'database_id': relatedDb.id},
            },
            'Rollup': {
              'rollup': {
                'relation_property_name': 'Relation',
                'rollup_property_name': 'Amount',
                'function': 'sum',
              },
            },
          },
        );

        // 3) Create one page in the main database covering CRUD-able properties
        final me = await client.users.me();
        final page = await client.pages.create(
          parent: Parent.database(databaseId: mainDb.id),
          properties: {
            'Title': {
              'title': [
                {
                  'type': 'text',
                  'text': {'content': 'Item1'},
                },
              ],
            },
            'Rich': {
              'rich_text': [
                {
                  'type': 'text',
                  'text': {'content': 'Hello'},
                },
              ],
            },
            'Number': {'number': 5},
            'Select': {
              'select': {'name': 'A'},
            },
            'Multi': {
              'multi_select': [
                {'name': 'Red'},
                {'name': 'Blue'},
              ],
            },
            'Date': {
              'date': {'start': DateTime.now().toUtc().toIso8601String()},
            },
            'People': {
              'people': [
                {'id': me.id},
              ],
            },
            'Done': {'checkbox': true},
            'URL': {'url': 'https://example.com'},
            'Email': {'email': 'test@example.com'},
            'Phone': {'phone_number': '+15550001111'},
            'Files': {
              'files': [
                {
                  'type': 'external',
                  'name': 'Example',
                  'external': {'url': 'https://example.com/example.pdf'},
                },
              ],
            },
            'Status': {
              'status': {'name': 'Todo'},
            },
            'Relation': {
              'relation': [
                {'id': relatedPage.id},
              ],
            },
          },
        );

        // 4) Update some mutable properties
        final updated = await client.pages.update(
          page.id,
          properties: {
            'Number': {'number': 9},
            'Done': {'checkbox': false},
            'Select': {
              'select': {'name': 'B'},
            },
          },
        );

        expect(updated.properties['Number']?.type, 'number');
        expect(updated.properties['Done']?.type, 'checkbox');
        expect(updated.properties['Select']?.type, 'select');

        // 5) Filter + Sort: Number > 3, sort by Number desc
        const filter = Filter.property(
          name: 'Number',
          filter: PropertyFilter.numberGreaterThan(3),
        );
        final sorts = ['Number'.descending().toJson()];

        final query1 = await client.databases.query(
          mainDb.id,
          filter: filter.toJson(),
          sorts: sorts.cast<Map<String, dynamic>>(),
          pageSize: 10,
        );
        expect(query1.results.isNotEmpty, isTrue);

        // 6) Pagination: create extra pages and page through results
        for (var i = 0; i < 2; i++) {
          await client.pages.create(
            parent: Parent.database(databaseId: mainDb.id),
            properties: {
              'Title': {
                'title': [
                  {
                    'type': 'text',
                    'text': {'content': 'Item${i + 2}'},
                  },
                ],
              },
              'Number': {'number': i + 1},
            },
          );
        }

        final page1 = await client.databases.query(mainDb.id, pageSize: 2);
        expect(page1.results.length, inInclusiveRange(1, 2));
        if (page1.hasMore && page1.nextCursor != null) {
          final page2 = await client.databases.query(
            mainDb.id,
            startCursor: page1.nextCursor,
            pageSize: 2,
          );
          expect(page2.results, isNotEmpty);
        }

        // Basic sanity checks for read-only properties presence
        final fetched = await client.pages.retrieve(page.id);
        expect(fetched.properties.containsKey('Created'), isTrue);
        expect(fetched.properties.containsKey('Edited'), isTrue);
        expect(fetched.properties.containsKey('CreatedBy'), isTrue);
        expect(fetched.properties.containsKey('EditedBy'), isTrue);
        expect(fetched.properties.containsKey('Unique'), isTrue);
        expect(fetched.properties.containsKey('Formula'), isTrue);
        expect(fetched.properties.containsKey('Rollup'), isTrue);

        // Optional cleanup (archive databases)
        await client.databases.archive(mainDb.id);
        await client.databases.archive(relatedDb.id);

        client.close();
      },
      skip: enabled
          ? false
          : 'Set NOTION_TOKEN and NOTION_PARENT_PAGE_ID to run integration tests',
      timeout: const Timeout(Duration(minutes: 5)),
    );
  });
}
