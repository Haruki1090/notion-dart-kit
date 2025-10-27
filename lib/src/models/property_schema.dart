import 'package:freezed_annotation/freezed_annotation.dart';

import 'property_value.dart' show SelectOption, StatusOption;

part 'property_schema.freezed.dart';

/// Represents a property schema definition in a data source
///
/// Property schemas define the structure and configuration of database properties.
/// Each property has an id, name, type, and type-specific configuration.
@Freezed(toJson: false, fromJson: false)
class PropertySchema with _$PropertySchema {
  const factory PropertySchema.checkbox({
    required String id,
    required String name,
  }) = CheckboxPropertySchema;

  const factory PropertySchema.richText({
    required String id,
    required String name,
  }) = RichTextPropertySchema;

  const factory PropertySchema.title({
    required String id,
    required String name,
  }) = TitlePropertySchema;

  const factory PropertySchema.number({
    required String id,
    required String name,
    required String format,
  }) = NumberPropertySchema;

  const factory PropertySchema.select({
    required String id,
    required String name,
    required List<SelectOption> options,
  }) = SelectPropertySchema;

  const factory PropertySchema.multiSelect({
    required String id,
    required String name,
    required List<SelectOption> options,
  }) = MultiSelectPropertySchema;

  const factory PropertySchema.status({
    required String id,
    required String name,
    required List<StatusOption> options,
    required Map<String, List<String>> groups,
  }) = StatusPropertySchema;

  const factory PropertySchema.date({
    required String id,
    required String name,
  }) = DatePropertySchema;

  const factory PropertySchema.people({
    required String id,
    required String name,
  }) = PeoplePropertySchema;

  const factory PropertySchema.files({
    required String id,
    required String name,
  }) = FilesPropertySchema;

  const factory PropertySchema.email({
    required String id,
    required String name,
  }) = EmailPropertySchema;

  const factory PropertySchema.phoneNumber({
    required String id,
    required String name,
  }) = PhoneNumberPropertySchema;

  const factory PropertySchema.url({required String id, required String name}) =
      UrlPropertySchema;

  const factory PropertySchema.createdTime({
    required String id,
    required String name,
  }) = CreatedTimePropertySchema;

  const factory PropertySchema.createdBy({
    required String id,
    required String name,
  }) = CreatedByPropertySchema;

  const factory PropertySchema.lastEditedTime({
    required String id,
    required String name,
  }) = LastEditedTimePropertySchema;

  const factory PropertySchema.lastEditedBy({
    required String id,
    required String name,
  }) = LastEditedByPropertySchema;

  const factory PropertySchema.formula({
    required String id,
    required String name,
    required String expression,
  }) = FormulaPropertySchema;

  const factory PropertySchema.relation({
    required String id,
    required String name,
    required String databaseId,
    String? syncedPropertyName,
    String? syncedPropertyId,
  }) = RelationPropertySchema;

  const factory PropertySchema.rollup({
    required String id,
    required String name,
    required String rollupPropertyName,
    required String relationPropertyName,
    required String rollupPropertyId,
    required String relationPropertyId,
    required String function,
  }) = RollupPropertySchema;

  const factory PropertySchema.uniqueId({
    required String id,
    required String name,
    String? prefix,
  }) = UniqueIdPropertySchema;

  const factory PropertySchema.verification({
    required String id,
    required String name,
  }) = VerificationPropertySchema;
  const PropertySchema._();

  factory PropertySchema.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    final id = json['id'] as String;
    final name = json['name'] as String;

    switch (type) {
      case 'checkbox':
        return PropertySchema.checkbox(id: id, name: name);
      case 'rich_text':
        return PropertySchema.richText(id: id, name: name);
      case 'title':
        return PropertySchema.title(id: id, name: name);
      case 'number':
        final numberData = json['number'] as Map<String, dynamic>?;
        final format = (numberData?['format'] as String?) ?? 'number';
        return PropertySchema.number(id: id, name: name, format: format);
      case 'select':
        final selectData = json['select'] as Map<String, dynamic>?;
        final options = (selectData?['options'] as List<dynamic>? ?? [])
            .map((e) => SelectOption.fromJson(e as Map<String, dynamic>))
            .toList();
        return PropertySchema.select(id: id, name: name, options: options);
      case 'multi_select':
        final multiSelectData = json['multi_select'] as Map<String, dynamic>?;
        final options = (multiSelectData?['options'] as List<dynamic>? ?? [])
            .map((e) => SelectOption.fromJson(e as Map<String, dynamic>))
            .toList();
        return PropertySchema.multiSelect(id: id, name: name, options: options);
      case 'status':
        final statusData = json['status'] as Map<String, dynamic>? ?? {};
        final options = (statusData['options'] as List<dynamic>? ?? [])
            .map((e) => StatusOption.fromJson(e as Map<String, dynamic>))
            .toList();
        final groups =
            (statusData['groups'] as Map<String, dynamic>? ?? {}).map(
          (key, value) =>
              MapEntry(key, (value as List<dynamic>).cast<String>()),
        );
        return PropertySchema.status(
          id: id,
          name: name,
          options: options,
          groups: groups,
        );
      case 'date':
        return PropertySchema.date(id: id, name: name);
      case 'people':
        return PropertySchema.people(id: id, name: name);
      case 'files':
        return PropertySchema.files(id: id, name: name);
      case 'email':
        return PropertySchema.email(id: id, name: name);
      case 'phone_number':
        return PropertySchema.phoneNumber(id: id, name: name);
      case 'url':
        return PropertySchema.url(id: id, name: name);
      case 'created_time':
        return PropertySchema.createdTime(id: id, name: name);
      case 'created_by':
        return PropertySchema.createdBy(id: id, name: name);
      case 'last_edited_time':
        return PropertySchema.lastEditedTime(id: id, name: name);
      case 'last_edited_by':
        return PropertySchema.lastEditedBy(id: id, name: name);
      case 'formula':
        final formulaData = json['formula'] as Map<String, dynamic>?;
        final expression = (formulaData?['expression'] as String?) ?? '';
        return PropertySchema.formula(
          id: id,
          name: name,
          expression: expression,
        );
      case 'relation':
        final relationData = json['relation'] as Map<String, dynamic>? ?? {};
        return PropertySchema.relation(
          id: id,
          name: name,
          databaseId: relationData['database_id'] as String? ?? '',
          syncedPropertyName: relationData['synced_property_name'] as String?,
          syncedPropertyId: relationData['synced_property_id'] as String?,
        );
      case 'rollup':
        final rollupData = json['rollup'] as Map<String, dynamic>? ?? {};
        return PropertySchema.rollup(
          id: id,
          name: name,
          rollupPropertyName:
              rollupData['rollup_property_name'] as String? ?? '',
          relationPropertyName:
              rollupData['relation_property_name'] as String? ?? '',
          rollupPropertyId: rollupData['rollup_property_id'] as String? ?? '',
          relationPropertyId:
              rollupData['relation_property_id'] as String? ?? '',
          function: rollupData['function'] as String? ?? '',
        );
      case 'unique_id':
        final uniqueIdData = json['unique_id'] as Map<String, dynamic>?;
        final prefix = uniqueIdData?['prefix'] as String?;
        return PropertySchema.uniqueId(id: id, name: name, prefix: prefix);
      case 'verification':
        return PropertySchema.verification(id: id, name: name);
      default:
        throw UnimplementedError('Unknown property type: $type');
    }
  }

  Map<String, dynamic> toJson() => when(
        checkbox: (id, name) => {
          'id': id,
          'name': name,
          'type': 'checkbox',
          'checkbox': {},
        },
        richText: (id, name) => {
          'id': id,
          'name': name,
          'type': 'rich_text',
          'rich_text': {},
        },
        title: (id, name) =>
            {'id': id, 'name': name, 'type': 'title', 'title': {}},
        number: (id, name, format) => {
          'id': id,
          'name': name,
          'type': 'number',
          'number': {'format': format},
        },
        select: (id, name, options) => {
          'id': id,
          'name': name,
          'type': 'select',
          'select': {'options': options.map((e) => e.toJson()).toList()},
        },
        multiSelect: (id, name, options) => {
          'id': id,
          'name': name,
          'type': 'multi_select',
          'multi_select': {'options': options.map((e) => e.toJson()).toList()},
        },
        status: (id, name, options, groups) => {
          'id': id,
          'name': name,
          'type': 'status',
          'status': {
            'options': options.map((e) => e.toJson()).toList(),
            'groups': groups,
          },
        },
        date: (id, name) =>
            {'id': id, 'name': name, 'type': 'date', 'date': {}},
        people: (id, name) => {
          'id': id,
          'name': name,
          'type': 'people',
          'people': {},
        },
        files: (id, name) =>
            {'id': id, 'name': name, 'type': 'files', 'files': {}},
        email: (id, name) =>
            {'id': id, 'name': name, 'type': 'email', 'email': {}},
        phoneNumber: (id, name) => {
          'id': id,
          'name': name,
          'type': 'phone_number',
          'phone_number': {},
        },
        url: (id, name) => {'id': id, 'name': name, 'type': 'url', 'url': {}},
        createdTime: (id, name) => {
          'id': id,
          'name': name,
          'type': 'created_time',
          'created_time': {},
        },
        createdBy: (id, name) => {
          'id': id,
          'name': name,
          'type': 'created_by',
          'created_by': {},
        },
        lastEditedTime: (id, name) => {
          'id': id,
          'name': name,
          'type': 'last_edited_time',
          'last_edited_time': {},
        },
        lastEditedBy: (id, name) => {
          'id': id,
          'name': name,
          'type': 'last_edited_by',
          'last_edited_by': {},
        },
        formula: (id, name, expression) => {
          'id': id,
          'name': name,
          'type': 'formula',
          'formula': {'expression': expression},
        },
        relation:
            (id, name, databaseId, syncedPropertyName, syncedPropertyId) => {
          'id': id,
          'name': name,
          'type': 'relation',
          'relation': {
            'database_id': databaseId,
            if (syncedPropertyName != null)
              'synced_property_name': syncedPropertyName,
            if (syncedPropertyId != null)
              'synced_property_id': syncedPropertyId,
          },
        },
        rollup: (
          id,
          name,
          rollupPropertyName,
          relationPropertyName,
          rollupPropertyId,
          relationPropertyId,
          function,
        ) =>
            {
          'id': id,
          'name': name,
          'type': 'rollup',
          'rollup': {
            'rollup_property_name': rollupPropertyName,
            'relation_property_name': relationPropertyName,
            'rollup_property_id': rollupPropertyId,
            'relation_property_id': relationPropertyId,
            'function': function,
          },
        },
        uniqueId: (id, name, prefix) => {
          'id': id,
          'name': name,
          'type': 'unique_id',
          'unique_id': {if (prefix != null) 'prefix': prefix},
        },
        verification: (id, name) => {
          'id': id,
          'name': name,
          'type': 'verification',
          'verification': {},
        },
      );
}
