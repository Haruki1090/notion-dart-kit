// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckboxProperty _$CheckboxPropertyFromJson(Map<String, dynamic> json) =>
    CheckboxProperty(
      id: json['id'] as String,
      checkbox: json['checkbox'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CheckboxPropertyToJson(CheckboxProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'checkbox': instance.checkbox,
      'runtimeType': instance.$type,
    };

RichTextProperty _$RichTextPropertyFromJson(Map<String, dynamic> json) =>
    RichTextProperty(
      id: json['id'] as String,
      richText: (json['richText'] as List<dynamic>)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$RichTextPropertyToJson(RichTextProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'richText': instance.richText,
      'runtimeType': instance.$type,
    };

TitleProperty _$TitlePropertyFromJson(Map<String, dynamic> json) =>
    TitleProperty(
      id: json['id'] as String,
      title: (json['title'] as List<dynamic>)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$TitlePropertyToJson(TitleProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'runtimeType': instance.$type,
    };

NumberProperty _$NumberPropertyFromJson(Map<String, dynamic> json) =>
    NumberProperty(
      id: json['id'] as String,
      number: (json['number'] as num?)?.toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NumberPropertyToJson(NumberProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'runtimeType': instance.$type,
    };

SelectProperty _$SelectPropertyFromJson(Map<String, dynamic> json) =>
    SelectProperty(
      id: json['id'] as String,
      select: json['select'] == null
          ? null
          : SelectOption.fromJson(json['select'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SelectPropertyToJson(SelectProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'select': instance.select,
      'runtimeType': instance.$type,
    };

MultiSelectProperty _$MultiSelectPropertyFromJson(Map<String, dynamic> json) =>
    MultiSelectProperty(
      id: json['id'] as String,
      multiSelect: (json['multiSelect'] as List<dynamic>)
          .map((e) => SelectOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MultiSelectPropertyToJson(
        MultiSelectProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'multiSelect': instance.multiSelect,
      'runtimeType': instance.$type,
    };

StatusProperty _$StatusPropertyFromJson(Map<String, dynamic> json) =>
    StatusProperty(
      id: json['id'] as String,
      status: json['status'] == null
          ? null
          : StatusOption.fromJson(json['status'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$StatusPropertyToJson(StatusProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'runtimeType': instance.$type,
    };

DateProperty _$DatePropertyFromJson(Map<String, dynamic> json) => DateProperty(
      id: json['id'] as String,
      date: json['date'] == null
          ? null
          : DateValue.fromJson(json['date'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DatePropertyToJson(DateProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'runtimeType': instance.$type,
    };

PeopleProperty _$PeoplePropertyFromJson(Map<String, dynamic> json) =>
    PeopleProperty(
      id: json['id'] as String,
      people: (json['people'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PeoplePropertyToJson(PeopleProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'people': instance.people,
      'runtimeType': instance.$type,
    };

FilesProperty _$FilesPropertyFromJson(Map<String, dynamic> json) =>
    FilesProperty(
      id: json['id'] as String,
      files: (json['files'] as List<dynamic>)
          .map((e) => NotionFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$FilesPropertyToJson(FilesProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'files': instance.files,
      'runtimeType': instance.$type,
    };

EmailProperty _$EmailPropertyFromJson(Map<String, dynamic> json) =>
    EmailProperty(
      id: json['id'] as String,
      email: json['email'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$EmailPropertyToJson(EmailProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'runtimeType': instance.$type,
    };

PhoneNumberProperty _$PhoneNumberPropertyFromJson(Map<String, dynamic> json) =>
    PhoneNumberProperty(
      id: json['id'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PhoneNumberPropertyToJson(
        PhoneNumberProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'runtimeType': instance.$type,
    };

UrlProperty _$UrlPropertyFromJson(Map<String, dynamic> json) => UrlProperty(
      id: json['id'] as String,
      url: json['url'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UrlPropertyToJson(UrlProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'runtimeType': instance.$type,
    };

CreatedTimeProperty _$CreatedTimePropertyFromJson(Map<String, dynamic> json) =>
    CreatedTimeProperty(
      id: json['id'] as String,
      createdTime: DateTime.parse(json['createdTime'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CreatedTimePropertyToJson(
        CreatedTimeProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdTime': instance.createdTime.toIso8601String(),
      'runtimeType': instance.$type,
    };

CreatedByProperty _$CreatedByPropertyFromJson(Map<String, dynamic> json) =>
    CreatedByProperty(
      id: json['id'] as String,
      createdBy: User.fromJson(json['createdBy'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CreatedByPropertyToJson(CreatedByProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'runtimeType': instance.$type,
    };

LastEditedTimeProperty _$LastEditedTimePropertyFromJson(
        Map<String, dynamic> json) =>
    LastEditedTimeProperty(
      id: json['id'] as String,
      lastEditedTime: DateTime.parse(json['lastEditedTime'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$LastEditedTimePropertyToJson(
        LastEditedTimeProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastEditedTime': instance.lastEditedTime.toIso8601String(),
      'runtimeType': instance.$type,
    };

LastEditedByProperty _$LastEditedByPropertyFromJson(
        Map<String, dynamic> json) =>
    LastEditedByProperty(
      id: json['id'] as String,
      lastEditedBy: User.fromJson(json['lastEditedBy'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$LastEditedByPropertyToJson(
        LastEditedByProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastEditedBy': instance.lastEditedBy,
      'runtimeType': instance.$type,
    };

FormulaProperty _$FormulaPropertyFromJson(Map<String, dynamic> json) =>
    FormulaProperty(
      id: json['id'] as String,
      formula: FormulaValue.fromJson(json['formula'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$FormulaPropertyToJson(FormulaProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'formula': instance.formula,
      'runtimeType': instance.$type,
    };

RelationProperty _$RelationPropertyFromJson(Map<String, dynamic> json) =>
    RelationProperty(
      id: json['id'] as String,
      relation: (json['relation'] as List<dynamic>)
          .map((e) => RelationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$RelationPropertyToJson(RelationProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'relation': instance.relation,
      'runtimeType': instance.$type,
    };

RollupProperty _$RollupPropertyFromJson(Map<String, dynamic> json) =>
    RollupProperty(
      id: json['id'] as String,
      rollup: RollupValue.fromJson(json['rollup'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$RollupPropertyToJson(RollupProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rollup': instance.rollup,
      'runtimeType': instance.$type,
    };

UniqueIdProperty _$UniqueIdPropertyFromJson(Map<String, dynamic> json) =>
    UniqueIdProperty(
      id: json['id'] as String,
      uniqueId: UniqueId.fromJson(json['uniqueId'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UniqueIdPropertyToJson(UniqueIdProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uniqueId': instance.uniqueId,
      'runtimeType': instance.$type,
    };

VerificationProperty _$VerificationPropertyFromJson(
        Map<String, dynamic> json) =>
    VerificationProperty(
      id: json['id'] as String,
      verification: json['verification'] == null
          ? null
          : VerificationValue.fromJson(
              json['verification'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$VerificationPropertyToJson(
        VerificationProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verification': instance.verification,
      'runtimeType': instance.$type,
    };

_SelectOption _$SelectOptionFromJson(Map<String, dynamic> json) =>
    _SelectOption(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$SelectOptionToJson(_SelectOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
    };

_StatusOption _$StatusOptionFromJson(Map<String, dynamic> json) =>
    _StatusOption(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$StatusOptionToJson(_StatusOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
    };

_DateValue _$DateValueFromJson(Map<String, dynamic> json) => _DateValue(
      start: json['start'] as String,
      end: json['end'] as String?,
      timeZone: json['timeZone'] as String?,
    );

Map<String, dynamic> _$DateValueToJson(_DateValue instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'timeZone': instance.timeZone,
    };

BooleanFormulaValue _$BooleanFormulaValueFromJson(Map<String, dynamic> json) =>
    BooleanFormulaValue(
      boolean: json['boolean'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BooleanFormulaValueToJson(
        BooleanFormulaValue instance) =>
    <String, dynamic>{
      'boolean': instance.boolean,
      'runtimeType': instance.$type,
    };

DateFormulaValue _$DateFormulaValueFromJson(Map<String, dynamic> json) =>
    DateFormulaValue(
      date: json['date'] == null
          ? null
          : DateValue.fromJson(json['date'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DateFormulaValueToJson(DateFormulaValue instance) =>
    <String, dynamic>{
      'date': instance.date,
      'runtimeType': instance.$type,
    };

NumberFormulaValue _$NumberFormulaValueFromJson(Map<String, dynamic> json) =>
    NumberFormulaValue(
      number: (json['number'] as num?)?.toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NumberFormulaValueToJson(NumberFormulaValue instance) =>
    <String, dynamic>{
      'number': instance.number,
      'runtimeType': instance.$type,
    };

StringFormulaValue _$StringFormulaValueFromJson(Map<String, dynamic> json) =>
    StringFormulaValue(
      string: json['string'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$StringFormulaValueToJson(StringFormulaValue instance) =>
    <String, dynamic>{
      'string': instance.string,
      'runtimeType': instance.$type,
    };

_RelationItem _$RelationItemFromJson(Map<String, dynamic> json) =>
    _RelationItem(
      id: json['id'] as String,
    );

Map<String, dynamic> _$RelationItemToJson(_RelationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

NumberRollupValue _$NumberRollupValueFromJson(Map<String, dynamic> json) =>
    NumberRollupValue(
      number: (json['number'] as num?)?.toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NumberRollupValueToJson(NumberRollupValue instance) =>
    <String, dynamic>{
      'number': instance.number,
      'runtimeType': instance.$type,
    };

DateRollupValue _$DateRollupValueFromJson(Map<String, dynamic> json) =>
    DateRollupValue(
      date: json['date'] == null
          ? null
          : DateValue.fromJson(json['date'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DateRollupValueToJson(DateRollupValue instance) =>
    <String, dynamic>{
      'date': instance.date,
      'runtimeType': instance.$type,
    };

ArrayRollupValue _$ArrayRollupValueFromJson(Map<String, dynamic> json) =>
    ArrayRollupValue(
      array: (json['array'] as List<dynamic>)
          .map((e) => PropertyValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ArrayRollupValueToJson(ArrayRollupValue instance) =>
    <String, dynamic>{
      'array': instance.array,
      'runtimeType': instance.$type,
    };

UnsupportedRollupValue _$UnsupportedRollupValueFromJson(
        Map<String, dynamic> json) =>
    UnsupportedRollupValue(
      data: json['data'] as Map<String, dynamic>,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UnsupportedRollupValueToJson(
        UnsupportedRollupValue instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };

_UniqueId _$UniqueIdFromJson(Map<String, dynamic> json) => _UniqueId(
      number: (json['number'] as num).toInt(),
      prefix: json['prefix'] as String?,
    );

Map<String, dynamic> _$UniqueIdToJson(_UniqueId instance) => <String, dynamic>{
      'number': instance.number,
      'prefix': instance.prefix,
    };

_VerificationValue _$VerificationValueFromJson(Map<String, dynamic> json) =>
    _VerificationValue(
      state: json['state'] as String,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      verifiedBy: json['verifiedBy'] == null
          ? null
          : User.fromJson(json['verifiedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerificationValueToJson(_VerificationValue instance) =>
    <String, dynamic>{
      'state': instance.state,
      'date': instance.date?.toIso8601String(),
      'verifiedBy': instance.verifiedBy,
    };
