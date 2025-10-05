import 'package:test/test.dart';
import 'package:notion_dart_kit/notion_dart_kit.dart';

void main() {
  group('Property Value Tests', () {
    group('Basic Property Types', () {
      test('Checkbox property', () {
        final prop = PropertyValue.checkbox(
          id: 'test_id',
          checkbox: true,
        );

        expect(prop.id, 'test_id');
        prop.when(
          checkbox: (id, checkbox) {
            expect(checkbox, true);
          },
          richText: (_, __) => fail('Should be checkbox'),
          title: (_, __) => fail('Should be checkbox'),
          number: (_, __) => fail('Should be checkbox'),
          select: (_, __) => fail('Should be checkbox'),
          multiSelect: (_, __) => fail('Should be checkbox'),
          status: (_, __) => fail('Should be checkbox'),
          date: (_, __) => fail('Should be checkbox'),
          people: (_, __) => fail('Should be checkbox'),
          files: (_, __) => fail('Should be checkbox'),
          email: (_, __) => fail('Should be checkbox'),
          phoneNumber: (_, __) => fail('Should be checkbox'),
          url: (_, __) => fail('Should be checkbox'),
          createdTime: (_, __) => fail('Should be checkbox'),
          createdBy: (_, __) => fail('Should be checkbox'),
          lastEditedTime: (_, __) => fail('Should be checkbox'),
          lastEditedBy: (_, __) => fail('Should be checkbox'),
          formula: (_, __) => fail('Should be checkbox'),
          relation: (_, __) => fail('Should be checkbox'),
          rollup: (_, __) => fail('Should be checkbox'),
          uniqueId: (_, __) => fail('Should be checkbox'),
          verification: (_, __) => fail('Should be checkbox'),
        );
      });

      test('Number property', () {
        final prop = PropertyValue.number(
          id: 'num_id',
          number: 42.5,
        );

        prop.when(
          number: (id, number) {
            expect(id, 'num_id');
            expect(number, 42.5);
          },
          checkbox: (_, __) => fail('Should be number'),
          richText: (_, __) => fail('Should be number'),
          title: (_, __) => fail('Should be number'),
          select: (_, __) => fail('Should be number'),
          multiSelect: (_, __) => fail('Should be number'),
          status: (_, __) => fail('Should be number'),
          date: (_, __) => fail('Should be number'),
          people: (_, __) => fail('Should be number'),
          files: (_, __) => fail('Should be number'),
          email: (_, __) => fail('Should be number'),
          phoneNumber: (_, __) => fail('Should be number'),
          url: (_, __) => fail('Should be number'),
          createdTime: (_, __) => fail('Should be number'),
          createdBy: (_, __) => fail('Should be number'),
          lastEditedTime: (_, __) => fail('Should be number'),
          lastEditedBy: (_, __) => fail('Should be number'),
          formula: (_, __) => fail('Should be number'),
          relation: (_, __) => fail('Should be number'),
          rollup: (_, __) => fail('Should be number'),
          uniqueId: (_, __) => fail('Should be number'),
          verification: (_, __) => fail('Should be number'),
        );
      });

      test('Email property', () {
        final prop = PropertyValue.email(
          id: 'email_id',
          email: 'test@example.com',
        );

        prop.when(
          email: (id, email) {
            expect(id, 'email_id');
            expect(email, 'test@example.com');
          },
          checkbox: (_, __) => fail('Should be email'),
          richText: (_, __) => fail('Should be email'),
          title: (_, __) => fail('Should be email'),
          number: (_, __) => fail('Should be email'),
          select: (_, __) => fail('Should be email'),
          multiSelect: (_, __) => fail('Should be email'),
          status: (_, __) => fail('Should be email'),
          date: (_, __) => fail('Should be email'),
          people: (_, __) => fail('Should be email'),
          files: (_, __) => fail('Should be email'),
          phoneNumber: (_, __) => fail('Should be email'),
          url: (_, __) => fail('Should be email'),
          createdTime: (_, __) => fail('Should be email'),
          createdBy: (_, __) => fail('Should be email'),
          lastEditedTime: (_, __) => fail('Should be email'),
          lastEditedBy: (_, __) => fail('Should be email'),
          formula: (_, __) => fail('Should be email'),
          relation: (_, __) => fail('Should be email'),
          rollup: (_, __) => fail('Should be email'),
          uniqueId: (_, __) => fail('Should be email'),
          verification: (_, __) => fail('Should be email'),
        );
      });
    });

    group('Select and Status Properties', () {
      test('Select property with option', () {
        final option = SelectOption(
          id: 'opt1',
          name: 'High Priority',
          color: 'red',
        );

        final prop = PropertyValue.select(
          id: 'select_id',
          select: option,
        );

        prop.when(
          select: (id, select) {
            expect(id, 'select_id');
            expect(select?.name, 'High Priority');
            expect(select?.color, 'red');
          },
          checkbox: (_, __) => fail('Should be select'),
          richText: (_, __) => fail('Should be select'),
          title: (_, __) => fail('Should be select'),
          number: (_, __) => fail('Should be select'),
          multiSelect: (_, __) => fail('Should be select'),
          status: (_, __) => fail('Should be select'),
          date: (_, __) => fail('Should be select'),
          people: (_, __) => fail('Should be select'),
          files: (_, __) => fail('Should be select'),
          email: (_, __) => fail('Should be select'),
          phoneNumber: (_, __) => fail('Should be select'),
          url: (_, __) => fail('Should be select'),
          createdTime: (_, __) => fail('Should be select'),
          createdBy: (_, __) => fail('Should be select'),
          lastEditedTime: (_, __) => fail('Should be select'),
          lastEditedBy: (_, __) => fail('Should be select'),
          formula: (_, __) => fail('Should be select'),
          relation: (_, __) => fail('Should be select'),
          rollup: (_, __) => fail('Should be select'),
          uniqueId: (_, __) => fail('Should be select'),
          verification: (_, __) => fail('Should be select'),
        );
      });

      test('Multi-select property', () {
        final options = [
          SelectOption(id: '1', name: 'Tag1', color: 'blue'),
          SelectOption(id: '2', name: 'Tag2', color: 'green'),
        ];

        final prop = PropertyValue.multiSelect(
          id: 'multi_id',
          multiSelect: options,
        );

        prop.when(
          multiSelect: (id, multiSelect) {
            expect(id, 'multi_id');
            expect(multiSelect.length, 2);
            expect(multiSelect[0].name, 'Tag1');
            expect(multiSelect[1].color, 'green');
          },
          checkbox: (_, __) => fail('Should be multiSelect'),
          richText: (_, __) => fail('Should be multiSelect'),
          title: (_, __) => fail('Should be multiSelect'),
          number: (_, __) => fail('Should be multiSelect'),
          select: (_, __) => fail('Should be multiSelect'),
          status: (_, __) => fail('Should be multiSelect'),
          date: (_, __) => fail('Should be multiSelect'),
          people: (_, __) => fail('Should be multiSelect'),
          files: (_, __) => fail('Should be multiSelect'),
          email: (_, __) => fail('Should be multiSelect'),
          phoneNumber: (_, __) => fail('Should be multiSelect'),
          url: (_, __) => fail('Should be multiSelect'),
          createdTime: (_, __) => fail('Should be multiSelect'),
          createdBy: (_, __) => fail('Should be multiSelect'),
          lastEditedTime: (_, __) => fail('Should be multiSelect'),
          lastEditedBy: (_, __) => fail('Should be multiSelect'),
          formula: (_, __) => fail('Should be multiSelect'),
          relation: (_, __) => fail('Should be multiSelect'),
          rollup: (_, __) => fail('Should be multiSelect'),
          uniqueId: (_, __) => fail('Should be multiSelect'),
          verification: (_, __) => fail('Should be multiSelect'),
        );
      });
    });

    group('Date and Time Properties', () {
      test('Date property with range', () {
        final dateValue = DateValue(
          start: '2025-10-05',
          end: '2025-10-10',
          timeZone: 'America/New_York',
        );

        final prop = PropertyValue.date(
          id: 'date_id',
          date: dateValue,
        );

        prop.when(
          date: (id, date) {
            expect(id, 'date_id');
            expect(date?.start, '2025-10-05');
            expect(date?.end, '2025-10-10');
            expect(date?.timeZone, 'America/New_York');
          },
          checkbox: (_, __) => fail('Should be date'),
          richText: (_, __) => fail('Should be date'),
          title: (_, __) => fail('Should be date'),
          number: (_, __) => fail('Should be date'),
          select: (_, __) => fail('Should be date'),
          multiSelect: (_, __) => fail('Should be date'),
          status: (_, __) => fail('Should be date'),
          people: (_, __) => fail('Should be date'),
          files: (_, __) => fail('Should be date'),
          email: (_, __) => fail('Should be date'),
          phoneNumber: (_, __) => fail('Should be date'),
          url: (_, __) => fail('Should be date'),
          createdTime: (_, __) => fail('Should be date'),
          createdBy: (_, __) => fail('Should be date'),
          lastEditedTime: (_, __) => fail('Should be date'),
          lastEditedBy: (_, __) => fail('Should be date'),
          formula: (_, __) => fail('Should be date'),
          relation: (_, __) => fail('Should be date'),
          rollup: (_, __) => fail('Should be date'),
          uniqueId: (_, __) => fail('Should be date'),
          verification: (_, __) => fail('Should be date'),
        );
      });

      test('Created time property', () {
        final now = DateTime.now();
        final prop = PropertyValue.createdTime(
          id: 'created_id',
          createdTime: now,
        );

        prop.when(
          createdTime: (id, createdTime) {
            expect(id, 'created_id');
            expect(createdTime, now);
          },
          checkbox: (_, __) => fail('Should be createdTime'),
          richText: (_, __) => fail('Should be createdTime'),
          title: (_, __) => fail('Should be createdTime'),
          number: (_, __) => fail('Should be createdTime'),
          select: (_, __) => fail('Should be createdTime'),
          multiSelect: (_, __) => fail('Should be createdTime'),
          status: (_, __) => fail('Should be createdTime'),
          date: (_, __) => fail('Should be createdTime'),
          people: (_, __) => fail('Should be createdTime'),
          files: (_, __) => fail('Should be createdTime'),
          email: (_, __) => fail('Should be createdTime'),
          phoneNumber: (_, __) => fail('Should be createdTime'),
          url: (_, __) => fail('Should be createdTime'),
          createdBy: (_, __) => fail('Should be createdTime'),
          lastEditedTime: (_, __) => fail('Should be createdTime'),
          lastEditedBy: (_, __) => fail('Should be createdTime'),
          formula: (_, __) => fail('Should be createdTime'),
          relation: (_, __) => fail('Should be createdTime'),
          rollup: (_, __) => fail('Should be createdTime'),
          uniqueId: (_, __) => fail('Should be createdTime'),
          verification: (_, __) => fail('Should be createdTime'),
        );
      });
    });

    group('Formula Properties', () {
      test('Formula with number result', () {
        final formula = FormulaValue.number(number: 42.0);
        final prop = PropertyValue.formula(
          id: 'formula_id',
          formula: formula,
        );

        prop.when(
          formula: (id, formula) {
            expect(id, 'formula_id');
            formula.when(
              number: (number) => expect(number, 42.0),
              boolean: (_) => fail('Should be number formula'),
              date: (_) => fail('Should be number formula'),
              string: (_) => fail('Should be number formula'),
            );
          },
          checkbox: (_, __) => fail('Should be formula'),
          richText: (_, __) => fail('Should be formula'),
          title: (_, __) => fail('Should be formula'),
          number: (_, __) => fail('Should be formula'),
          select: (_, __) => fail('Should be formula'),
          multiSelect: (_, __) => fail('Should be formula'),
          status: (_, __) => fail('Should be formula'),
          date: (_, __) => fail('Should be formula'),
          people: (_, __) => fail('Should be formula'),
          files: (_, __) => fail('Should be formula'),
          email: (_, __) => fail('Should be formula'),
          phoneNumber: (_, __) => fail('Should be formula'),
          url: (_, __) => fail('Should be formula'),
          createdTime: (_, __) => fail('Should be formula'),
          createdBy: (_, __) => fail('Should be formula'),
          lastEditedTime: (_, __) => fail('Should be formula'),
          lastEditedBy: (_, __) => fail('Should be formula'),
          relation: (_, __) => fail('Should be formula'),
          rollup: (_, __) => fail('Should be formula'),
          uniqueId: (_, __) => fail('Should be formula'),
          verification: (_, __) => fail('Should be formula'),
        );
      });

      test('Formula with boolean result', () {
        final formula = FormulaValue.boolean(boolean: true);
        final prop = PropertyValue.formula(
          id: 'formula_id',
          formula: formula,
        );

        prop.when(
          formula: (id, formula) {
            formula.when(
              boolean: (boolean) => expect(boolean, true),
              number: (_) => fail('Should be boolean formula'),
              date: (_) => fail('Should be boolean formula'),
              string: (_) => fail('Should be boolean formula'),
            );
          },
          checkbox: (_, __) => fail('Should be formula'),
          richText: (_, __) => fail('Should be formula'),
          title: (_, __) => fail('Should be formula'),
          number: (_, __) => fail('Should be formula'),
          select: (_, __) => fail('Should be formula'),
          multiSelect: (_, __) => fail('Should be formula'),
          status: (_, __) => fail('Should be formula'),
          date: (_, __) => fail('Should be formula'),
          people: (_, __) => fail('Should be formula'),
          files: (_, __) => fail('Should be formula'),
          email: (_, __) => fail('Should be formula'),
          phoneNumber: (_, __) => fail('Should be formula'),
          url: (_, __) => fail('Should be formula'),
          createdTime: (_, __) => fail('Should be formula'),
          createdBy: (_, __) => fail('Should be formula'),
          lastEditedTime: (_, __) => fail('Should be formula'),
          lastEditedBy: (_, __) => fail('Should be formula'),
          relation: (_, __) => fail('Should be formula'),
          rollup: (_, __) => fail('Should be formula'),
          uniqueId: (_, __) => fail('Should be formula'),
          verification: (_, __) => fail('Should be formula'),
        );
      });
    });

    group('Relation and Rollup Properties', () {
      test('Relation property', () {
        final relations = [
          RelationItem(id: 'page1'),
          RelationItem(id: 'page2'),
        ];

        final prop = PropertyValue.relation(
          id: 'relation_id',
          relation: relations,
        );

        prop.when(
          relation: (id, relation) {
            expect(id, 'relation_id');
            expect(relation.length, 2);
            expect(relation[0].id, 'page1');
            expect(relation[1].id, 'page2');
          },
          checkbox: (_, __) => fail('Should be relation'),
          richText: (_, __) => fail('Should be relation'),
          title: (_, __) => fail('Should be relation'),
          number: (_, __) => fail('Should be relation'),
          select: (_, __) => fail('Should be relation'),
          multiSelect: (_, __) => fail('Should be relation'),
          status: (_, __) => fail('Should be relation'),
          date: (_, __) => fail('Should be relation'),
          people: (_, __) => fail('Should be relation'),
          files: (_, __) => fail('Should be relation'),
          email: (_, __) => fail('Should be relation'),
          phoneNumber: (_, __) => fail('Should be relation'),
          url: (_, __) => fail('Should be relation'),
          createdTime: (_, __) => fail('Should be relation'),
          createdBy: (_, __) => fail('Should be relation'),
          lastEditedTime: (_, __) => fail('Should be relation'),
          lastEditedBy: (_, __) => fail('Should be relation'),
          formula: (_, __) => fail('Should be relation'),
          rollup: (_, __) => fail('Should be relation'),
          uniqueId: (_, __) => fail('Should be relation'),
          verification: (_, __) => fail('Should be relation'),
        );
      });

      test('Rollup with number result', () {
        final rollup = RollupValue.number(number: 100.0);
        final prop = PropertyValue.rollup(
          id: 'rollup_id',
          rollup: rollup,
        );

        prop.when(
          rollup: (id, rollup) {
            expect(id, 'rollup_id');
            rollup.when(
              number: (number) => expect(number, 100.0),
              date: (_) => fail('Should be number rollup'),
              array: (_) => fail('Should be number rollup'),
              unsupported: (_) => fail('Should be number rollup'),
            );
          },
          checkbox: (_, __) => fail('Should be rollup'),
          richText: (_, __) => fail('Should be rollup'),
          title: (_, __) => fail('Should be rollup'),
          number: (_, __) => fail('Should be rollup'),
          select: (_, __) => fail('Should be rollup'),
          multiSelect: (_, __) => fail('Should be rollup'),
          status: (_, __) => fail('Should be rollup'),
          date: (_, __) => fail('Should be rollup'),
          people: (_, __) => fail('Should be rollup'),
          files: (_, __) => fail('Should be rollup'),
          email: (_, __) => fail('Should be rollup'),
          phoneNumber: (_, __) => fail('Should be rollup'),
          url: (_, __) => fail('Should be rollup'),
          createdTime: (_, __) => fail('Should be rollup'),
          createdBy: (_, __) => fail('Should be rollup'),
          lastEditedTime: (_, __) => fail('Should be rollup'),
          lastEditedBy: (_, __) => fail('Should be rollup'),
          formula: (_, __) => fail('Should be rollup'),
          relation: (_, __) => fail('Should be rollup'),
          uniqueId: (_, __) => fail('Should be rollup'),
          verification: (_, __) => fail('Should be rollup'),
        );
      });
    });

    group('Unique ID and Verification Properties', () {
      test('Unique ID property', () {
        final uniqueId = UniqueId(number: 42, prefix: 'TASK');
        final prop = PropertyValue.uniqueId(
          id: 'uid_id',
          uniqueId: uniqueId,
        );

        prop.when(
          uniqueId: (id, uniqueId) {
            expect(id, 'uid_id');
            expect(uniqueId.number, 42);
            expect(uniqueId.prefix, 'TASK');
          },
          checkbox: (_, __) => fail('Should be uniqueId'),
          richText: (_, __) => fail('Should be uniqueId'),
          title: (_, __) => fail('Should be uniqueId'),
          number: (_, __) => fail('Should be uniqueId'),
          select: (_, __) => fail('Should be uniqueId'),
          multiSelect: (_, __) => fail('Should be uniqueId'),
          status: (_, __) => fail('Should be uniqueId'),
          date: (_, __) => fail('Should be uniqueId'),
          people: (_, __) => fail('Should be uniqueId'),
          files: (_, __) => fail('Should be uniqueId'),
          email: (_, __) => fail('Should be uniqueId'),
          phoneNumber: (_, __) => fail('Should be uniqueId'),
          url: (_, __) => fail('Should be uniqueId'),
          createdTime: (_, __) => fail('Should be uniqueId'),
          createdBy: (_, __) => fail('Should be uniqueId'),
          lastEditedTime: (_, __) => fail('Should be uniqueId'),
          lastEditedBy: (_, __) => fail('Should be uniqueId'),
          formula: (_, __) => fail('Should be uniqueId'),
          relation: (_, __) => fail('Should be uniqueId'),
          rollup: (_, __) => fail('Should be uniqueId'),
          verification: (_, __) => fail('Should be uniqueId'),
        );
      });
    });
  });
}
