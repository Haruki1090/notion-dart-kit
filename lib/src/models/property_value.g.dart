// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckboxPropertyImpl _$$CheckboxPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckboxPropertyImpl(
      id: json['id'] as String,
      checkbox: json['checkbox'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CheckboxPropertyImplToJson(
        _$CheckboxPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'checkbox': instance.checkbox,
      'runtimeType': instance.$type,
    };

_$RichTextPropertyImpl _$$RichTextPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$RichTextPropertyImpl(
      id: json['id'] as String,
      richText: (json['richText'] as List<dynamic>)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RichTextPropertyImplToJson(
        _$RichTextPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'richText': instance.richText,
      'runtimeType': instance.$type,
    };

_$TitlePropertyImpl _$$TitlePropertyImplFromJson(Map<String, dynamic> json) =>
    _$TitlePropertyImpl(
      id: json['id'] as String,
      title: (json['title'] as List<dynamic>)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TitlePropertyImplToJson(_$TitlePropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'runtimeType': instance.$type,
    };

_$NumberPropertyImpl _$$NumberPropertyImplFromJson(Map<String, dynamic> json) =>
    _$NumberPropertyImpl(
      id: json['id'] as String,
      number: (json['number'] as num?)?.toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NumberPropertyImplToJson(
        _$NumberPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'runtimeType': instance.$type,
    };

_$SelectPropertyImpl _$$SelectPropertyImplFromJson(Map<String, dynamic> json) =>
    _$SelectPropertyImpl(
      id: json['id'] as String,
      select: json['select'] == null
          ? null
          : SelectOption.fromJson(json['select'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SelectPropertyImplToJson(
        _$SelectPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'select': instance.select,
      'runtimeType': instance.$type,
    };

_$MultiSelectPropertyImpl _$$MultiSelectPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$MultiSelectPropertyImpl(
      id: json['id'] as String,
      multiSelect: (json['multiSelect'] as List<dynamic>)
          .map((e) => SelectOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MultiSelectPropertyImplToJson(
        _$MultiSelectPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'multiSelect': instance.multiSelect,
      'runtimeType': instance.$type,
    };

_$StatusPropertyImpl _$$StatusPropertyImplFromJson(Map<String, dynamic> json) =>
    _$StatusPropertyImpl(
      id: json['id'] as String,
      status: json['status'] == null
          ? null
          : StatusOption.fromJson(json['status'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StatusPropertyImplToJson(
        _$StatusPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'runtimeType': instance.$type,
    };

_$DatePropertyImpl _$$DatePropertyImplFromJson(Map<String, dynamic> json) =>
    _$DatePropertyImpl(
      id: json['id'] as String,
      date: json['date'] == null
          ? null
          : DateValue.fromJson(json['date'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DatePropertyImplToJson(_$DatePropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'runtimeType': instance.$type,
    };

_$PeoplePropertyImpl _$$PeoplePropertyImplFromJson(Map<String, dynamic> json) =>
    _$PeoplePropertyImpl(
      id: json['id'] as String,
      people: (json['people'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PeoplePropertyImplToJson(
        _$PeoplePropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'people': instance.people,
      'runtimeType': instance.$type,
    };

_$FilesPropertyImpl _$$FilesPropertyImplFromJson(Map<String, dynamic> json) =>
    _$FilesPropertyImpl(
      id: json['id'] as String,
      files: (json['files'] as List<dynamic>)
          .map((e) => NotionFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FilesPropertyImplToJson(_$FilesPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'files': instance.files,
      'runtimeType': instance.$type,
    };

_$EmailPropertyImpl _$$EmailPropertyImplFromJson(Map<String, dynamic> json) =>
    _$EmailPropertyImpl(
      id: json['id'] as String,
      email: json['email'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EmailPropertyImplToJson(_$EmailPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'runtimeType': instance.$type,
    };

_$PhoneNumberPropertyImpl _$$PhoneNumberPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$PhoneNumberPropertyImpl(
      id: json['id'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PhoneNumberPropertyImplToJson(
        _$PhoneNumberPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'runtimeType': instance.$type,
    };

_$UrlPropertyImpl _$$UrlPropertyImplFromJson(Map<String, dynamic> json) =>
    _$UrlPropertyImpl(
      id: json['id'] as String,
      url: json['url'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UrlPropertyImplToJson(_$UrlPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'runtimeType': instance.$type,
    };

_$CreatedTimePropertyImpl _$$CreatedTimePropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatedTimePropertyImpl(
      id: json['id'] as String,
      createdTime: DateTime.parse(json['createdTime'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CreatedTimePropertyImplToJson(
        _$CreatedTimePropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdTime': instance.createdTime.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$CreatedByPropertyImpl _$$CreatedByPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatedByPropertyImpl(
      id: json['id'] as String,
      createdBy: User.fromJson(json['createdBy'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CreatedByPropertyImplToJson(
        _$CreatedByPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'runtimeType': instance.$type,
    };

_$LastEditedTimePropertyImpl _$$LastEditedTimePropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$LastEditedTimePropertyImpl(
      id: json['id'] as String,
      lastEditedTime: DateTime.parse(json['lastEditedTime'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LastEditedTimePropertyImplToJson(
        _$LastEditedTimePropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastEditedTime': instance.lastEditedTime.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$LastEditedByPropertyImpl _$$LastEditedByPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$LastEditedByPropertyImpl(
      id: json['id'] as String,
      lastEditedBy: User.fromJson(json['lastEditedBy'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LastEditedByPropertyImplToJson(
        _$LastEditedByPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastEditedBy': instance.lastEditedBy,
      'runtimeType': instance.$type,
    };

_$FormulaPropertyImpl _$$FormulaPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$FormulaPropertyImpl(
      id: json['id'] as String,
      formula: FormulaValue.fromJson(json['formula'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FormulaPropertyImplToJson(
        _$FormulaPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'formula': instance.formula,
      'runtimeType': instance.$type,
    };

_$RelationPropertyImpl _$$RelationPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$RelationPropertyImpl(
      id: json['id'] as String,
      relation: (json['relation'] as List<dynamic>)
          .map((e) => RelationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelationPropertyImplToJson(
        _$RelationPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'relation': instance.relation,
      'runtimeType': instance.$type,
    };

_$RollupPropertyImpl _$$RollupPropertyImplFromJson(Map<String, dynamic> json) =>
    _$RollupPropertyImpl(
      id: json['id'] as String,
      rollup: RollupValue.fromJson(json['rollup'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RollupPropertyImplToJson(
        _$RollupPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rollup': instance.rollup,
      'runtimeType': instance.$type,
    };

_$UniqueIdPropertyImpl _$$UniqueIdPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$UniqueIdPropertyImpl(
      id: json['id'] as String,
      uniqueId: UniqueId.fromJson(json['uniqueId'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UniqueIdPropertyImplToJson(
        _$UniqueIdPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uniqueId': instance.uniqueId,
      'runtimeType': instance.$type,
    };

_$VerificationPropertyImpl _$$VerificationPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationPropertyImpl(
      id: json['id'] as String,
      verification: json['verification'] == null
          ? null
          : VerificationValue.fromJson(
              json['verification'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$VerificationPropertyImplToJson(
        _$VerificationPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verification': instance.verification,
      'runtimeType': instance.$type,
    };

_$SelectOptionImpl _$$SelectOptionImplFromJson(Map<String, dynamic> json) =>
    _$SelectOptionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$SelectOptionImplToJson(_$SelectOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
    };

_$StatusOptionImpl _$$StatusOptionImplFromJson(Map<String, dynamic> json) =>
    _$StatusOptionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$StatusOptionImplToJson(_$StatusOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
    };

_$DateValueImpl _$$DateValueImplFromJson(Map<String, dynamic> json) =>
    _$DateValueImpl(
      start: json['start'] as String,
      end: json['end'] as String?,
      timeZone: json['timeZone'] as String?,
    );

Map<String, dynamic> _$$DateValueImplToJson(_$DateValueImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'timeZone': instance.timeZone,
    };

_$BooleanFormulaValueImpl _$$BooleanFormulaValueImplFromJson(
        Map<String, dynamic> json) =>
    _$BooleanFormulaValueImpl(
      boolean: json['boolean'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BooleanFormulaValueImplToJson(
        _$BooleanFormulaValueImpl instance) =>
    <String, dynamic>{
      'boolean': instance.boolean,
      'runtimeType': instance.$type,
    };

_$DateFormulaValueImpl _$$DateFormulaValueImplFromJson(
        Map<String, dynamic> json) =>
    _$DateFormulaValueImpl(
      date: json['date'] == null
          ? null
          : DateValue.fromJson(json['date'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DateFormulaValueImplToJson(
        _$DateFormulaValueImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'runtimeType': instance.$type,
    };

_$NumberFormulaValueImpl _$$NumberFormulaValueImplFromJson(
        Map<String, dynamic> json) =>
    _$NumberFormulaValueImpl(
      number: (json['number'] as num?)?.toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NumberFormulaValueImplToJson(
        _$NumberFormulaValueImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'runtimeType': instance.$type,
    };

_$StringFormulaValueImpl _$$StringFormulaValueImplFromJson(
        Map<String, dynamic> json) =>
    _$StringFormulaValueImpl(
      string: json['string'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StringFormulaValueImplToJson(
        _$StringFormulaValueImpl instance) =>
    <String, dynamic>{
      'string': instance.string,
      'runtimeType': instance.$type,
    };

_$RelationItemImpl _$$RelationItemImplFromJson(Map<String, dynamic> json) =>
    _$RelationItemImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$RelationItemImplToJson(_$RelationItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$NumberRollupValueImpl _$$NumberRollupValueImplFromJson(
        Map<String, dynamic> json) =>
    _$NumberRollupValueImpl(
      number: (json['number'] as num?)?.toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NumberRollupValueImplToJson(
        _$NumberRollupValueImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'runtimeType': instance.$type,
    };

_$DateRollupValueImpl _$$DateRollupValueImplFromJson(
        Map<String, dynamic> json) =>
    _$DateRollupValueImpl(
      date: json['date'] == null
          ? null
          : DateValue.fromJson(json['date'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DateRollupValueImplToJson(
        _$DateRollupValueImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'runtimeType': instance.$type,
    };

_$ArrayRollupValueImpl _$$ArrayRollupValueImplFromJson(
        Map<String, dynamic> json) =>
    _$ArrayRollupValueImpl(
      array: (json['array'] as List<dynamic>)
          .map((e) => PropertyValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ArrayRollupValueImplToJson(
        _$ArrayRollupValueImpl instance) =>
    <String, dynamic>{
      'array': instance.array,
      'runtimeType': instance.$type,
    };

_$UnsupportedRollupValueImpl _$$UnsupportedRollupValueImplFromJson(
        Map<String, dynamic> json) =>
    _$UnsupportedRollupValueImpl(
      data: json['data'] as Map<String, dynamic>,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnsupportedRollupValueImplToJson(
        _$UnsupportedRollupValueImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };

_$UniqueIdImpl _$$UniqueIdImplFromJson(Map<String, dynamic> json) =>
    _$UniqueIdImpl(
      number: (json['number'] as num).toInt(),
      prefix: json['prefix'] as String?,
    );

Map<String, dynamic> _$$UniqueIdImplToJson(_$UniqueIdImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'prefix': instance.prefix,
    };

_$VerificationValueImpl _$$VerificationValueImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationValueImpl(
      state: json['state'] as String,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      verifiedBy: json['verifiedBy'] == null
          ? null
          : User.fromJson(json['verifiedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerificationValueImplToJson(
        _$VerificationValueImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'date': instance.date?.toIso8601String(),
      'verifiedBy': instance.verifiedBy,
    };
