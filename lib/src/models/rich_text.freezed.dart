// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Annotations _$AnnotationsFromJson(Map<String, dynamic> json) {
  return _Annotations.fromJson(json);
}

/// @nodoc
mixin _$Annotations {
  bool get bold => throw _privateConstructorUsedError;
  bool get italic => throw _privateConstructorUsedError;
  bool get strikethrough => throw _privateConstructorUsedError;
  bool get underline => throw _privateConstructorUsedError;
  bool get code => throw _privateConstructorUsedError;
  RichTextColor get color => throw _privateConstructorUsedError;

  /// Serializes this Annotations to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Annotations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnotationsCopyWith<Annotations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnotationsCopyWith<$Res> {
  factory $AnnotationsCopyWith(
          Annotations value, $Res Function(Annotations) then) =
      _$AnnotationsCopyWithImpl<$Res, Annotations>;
  @useResult
  $Res call(
      {bool bold,
      bool italic,
      bool strikethrough,
      bool underline,
      bool code,
      RichTextColor color});
}

/// @nodoc
class _$AnnotationsCopyWithImpl<$Res, $Val extends Annotations>
    implements $AnnotationsCopyWith<$Res> {
  _$AnnotationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Annotations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bold = null,
    Object? italic = null,
    Object? strikethrough = null,
    Object? underline = null,
    Object? code = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      bold: null == bold
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      italic: null == italic
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      strikethrough: null == strikethrough
          ? _value.strikethrough
          : strikethrough // ignore: cast_nullable_to_non_nullable
              as bool,
      underline: null == underline
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as RichTextColor,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnotationsImplCopyWith<$Res>
    implements $AnnotationsCopyWith<$Res> {
  factory _$$AnnotationsImplCopyWith(
          _$AnnotationsImpl value, $Res Function(_$AnnotationsImpl) then) =
      __$$AnnotationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool bold,
      bool italic,
      bool strikethrough,
      bool underline,
      bool code,
      RichTextColor color});
}

/// @nodoc
class __$$AnnotationsImplCopyWithImpl<$Res>
    extends _$AnnotationsCopyWithImpl<$Res, _$AnnotationsImpl>
    implements _$$AnnotationsImplCopyWith<$Res> {
  __$$AnnotationsImplCopyWithImpl(
      _$AnnotationsImpl _value, $Res Function(_$AnnotationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Annotations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bold = null,
    Object? italic = null,
    Object? strikethrough = null,
    Object? underline = null,
    Object? code = null,
    Object? color = null,
  }) {
    return _then(_$AnnotationsImpl(
      bold: null == bold
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      italic: null == italic
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      strikethrough: null == strikethrough
          ? _value.strikethrough
          : strikethrough // ignore: cast_nullable_to_non_nullable
              as bool,
      underline: null == underline
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as RichTextColor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnotationsImpl implements _Annotations {
  const _$AnnotationsImpl(
      {this.bold = false,
      this.italic = false,
      this.strikethrough = false,
      this.underline = false,
      this.code = false,
      this.color = RichTextColor.defaultColor});

  factory _$AnnotationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnotationsImplFromJson(json);

  @override
  @JsonKey()
  final bool bold;
  @override
  @JsonKey()
  final bool italic;
  @override
  @JsonKey()
  final bool strikethrough;
  @override
  @JsonKey()
  final bool underline;
  @override
  @JsonKey()
  final bool code;
  @override
  @JsonKey()
  final RichTextColor color;

  @override
  String toString() {
    return 'Annotations(bold: $bold, italic: $italic, strikethrough: $strikethrough, underline: $underline, code: $code, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnotationsImpl &&
            (identical(other.bold, bold) || other.bold == bold) &&
            (identical(other.italic, italic) || other.italic == italic) &&
            (identical(other.strikethrough, strikethrough) ||
                other.strikethrough == strikethrough) &&
            (identical(other.underline, underline) ||
                other.underline == underline) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, bold, italic, strikethrough, underline, code, color);

  /// Create a copy of Annotations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnotationsImplCopyWith<_$AnnotationsImpl> get copyWith =>
      __$$AnnotationsImplCopyWithImpl<_$AnnotationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnotationsImplToJson(
      this,
    );
  }
}

abstract class _Annotations implements Annotations {
  const factory _Annotations(
      {final bool bold,
      final bool italic,
      final bool strikethrough,
      final bool underline,
      final bool code,
      final RichTextColor color}) = _$AnnotationsImpl;

  factory _Annotations.fromJson(Map<String, dynamic> json) =
      _$AnnotationsImpl.fromJson;

  @override
  bool get bold;
  @override
  bool get italic;
  @override
  bool get strikethrough;
  @override
  bool get underline;
  @override
  bool get code;
  @override
  RichTextColor get color;

  /// Create a copy of Annotations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnotationsImplCopyWith<_$AnnotationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TextContent _$TextContentFromJson(Map<String, dynamic> json) {
  return _TextContent.fromJson(json);
}

/// @nodoc
mixin _$TextContent {
  String get content => throw _privateConstructorUsedError;
  TextLink? get link => throw _privateConstructorUsedError;

  /// Serializes this TextContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextContentCopyWith<TextContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextContentCopyWith<$Res> {
  factory $TextContentCopyWith(
          TextContent value, $Res Function(TextContent) then) =
      _$TextContentCopyWithImpl<$Res, TextContent>;
  @useResult
  $Res call({String content, TextLink? link});

  $TextLinkCopyWith<$Res>? get link;
}

/// @nodoc
class _$TextContentCopyWithImpl<$Res, $Val extends TextContent>
    implements $TextContentCopyWith<$Res> {
  _$TextContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as TextLink?,
    ) as $Val);
  }

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextLinkCopyWith<$Res>? get link {
    if (_value.link == null) {
      return null;
    }

    return $TextLinkCopyWith<$Res>(_value.link!, (value) {
      return _then(_value.copyWith(link: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextContentImplCopyWith<$Res>
    implements $TextContentCopyWith<$Res> {
  factory _$$TextContentImplCopyWith(
          _$TextContentImpl value, $Res Function(_$TextContentImpl) then) =
      __$$TextContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, TextLink? link});

  @override
  $TextLinkCopyWith<$Res>? get link;
}

/// @nodoc
class __$$TextContentImplCopyWithImpl<$Res>
    extends _$TextContentCopyWithImpl<$Res, _$TextContentImpl>
    implements _$$TextContentImplCopyWith<$Res> {
  __$$TextContentImplCopyWithImpl(
      _$TextContentImpl _value, $Res Function(_$TextContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? link = freezed,
  }) {
    return _then(_$TextContentImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as TextLink?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextContentImpl implements _TextContent {
  const _$TextContentImpl({required this.content, this.link});

  factory _$TextContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextContentImplFromJson(json);

  @override
  final String content;
  @override
  final TextLink? link;

  @override
  String toString() {
    return 'TextContent(content: $content, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextContentImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, link);

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextContentImplCopyWith<_$TextContentImpl> get copyWith =>
      __$$TextContentImplCopyWithImpl<_$TextContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextContentImplToJson(
      this,
    );
  }
}

abstract class _TextContent implements TextContent {
  const factory _TextContent(
      {required final String content,
      final TextLink? link}) = _$TextContentImpl;

  factory _TextContent.fromJson(Map<String, dynamic> json) =
      _$TextContentImpl.fromJson;

  @override
  String get content;
  @override
  TextLink? get link;

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextContentImplCopyWith<_$TextContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TextLink _$TextLinkFromJson(Map<String, dynamic> json) {
  return _TextLink.fromJson(json);
}

/// @nodoc
mixin _$TextLink {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this TextLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextLinkCopyWith<TextLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextLinkCopyWith<$Res> {
  factory $TextLinkCopyWith(TextLink value, $Res Function(TextLink) then) =
      _$TextLinkCopyWithImpl<$Res, TextLink>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$TextLinkCopyWithImpl<$Res, $Val extends TextLink>
    implements $TextLinkCopyWith<$Res> {
  _$TextLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextLinkImplCopyWith<$Res>
    implements $TextLinkCopyWith<$Res> {
  factory _$$TextLinkImplCopyWith(
          _$TextLinkImpl value, $Res Function(_$TextLinkImpl) then) =
      __$$TextLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$TextLinkImplCopyWithImpl<$Res>
    extends _$TextLinkCopyWithImpl<$Res, _$TextLinkImpl>
    implements _$$TextLinkImplCopyWith<$Res> {
  __$$TextLinkImplCopyWithImpl(
      _$TextLinkImpl _value, $Res Function(_$TextLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$TextLinkImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextLinkImpl implements _TextLink {
  const _$TextLinkImpl({required this.url});

  factory _$TextLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextLinkImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'TextLink(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextLinkImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of TextLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextLinkImplCopyWith<_$TextLinkImpl> get copyWith =>
      __$$TextLinkImplCopyWithImpl<_$TextLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextLinkImplToJson(
      this,
    );
  }
}

abstract class _TextLink implements TextLink {
  const factory _TextLink({required final String url}) = _$TextLinkImpl;

  factory _TextLink.fromJson(Map<String, dynamic> json) =
      _$TextLinkImpl.fromJson;

  @override
  String get url;

  /// Create a copy of TextLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextLinkImplCopyWith<_$TextLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EquationContent _$EquationContentFromJson(Map<String, dynamic> json) {
  return _EquationContent.fromJson(json);
}

/// @nodoc
mixin _$EquationContent {
  String get expression => throw _privateConstructorUsedError;

  /// Serializes this EquationContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EquationContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EquationContentCopyWith<EquationContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquationContentCopyWith<$Res> {
  factory $EquationContentCopyWith(
          EquationContent value, $Res Function(EquationContent) then) =
      _$EquationContentCopyWithImpl<$Res, EquationContent>;
  @useResult
  $Res call({String expression});
}

/// @nodoc
class _$EquationContentCopyWithImpl<$Res, $Val extends EquationContent>
    implements $EquationContentCopyWith<$Res> {
  _$EquationContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EquationContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expression = null,
  }) {
    return _then(_value.copyWith(
      expression: null == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquationContentImplCopyWith<$Res>
    implements $EquationContentCopyWith<$Res> {
  factory _$$EquationContentImplCopyWith(_$EquationContentImpl value,
          $Res Function(_$EquationContentImpl) then) =
      __$$EquationContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String expression});
}

/// @nodoc
class __$$EquationContentImplCopyWithImpl<$Res>
    extends _$EquationContentCopyWithImpl<$Res, _$EquationContentImpl>
    implements _$$EquationContentImplCopyWith<$Res> {
  __$$EquationContentImplCopyWithImpl(
      _$EquationContentImpl _value, $Res Function(_$EquationContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of EquationContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expression = null,
  }) {
    return _then(_$EquationContentImpl(
      expression: null == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EquationContentImpl implements _EquationContent {
  const _$EquationContentImpl({required this.expression});

  factory _$EquationContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquationContentImplFromJson(json);

  @override
  final String expression;

  @override
  String toString() {
    return 'EquationContent(expression: $expression)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquationContentImpl &&
            (identical(other.expression, expression) ||
                other.expression == expression));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expression);

  /// Create a copy of EquationContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EquationContentImplCopyWith<_$EquationContentImpl> get copyWith =>
      __$$EquationContentImplCopyWithImpl<_$EquationContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquationContentImplToJson(
      this,
    );
  }
}

abstract class _EquationContent implements EquationContent {
  const factory _EquationContent({required final String expression}) =
      _$EquationContentImpl;

  factory _EquationContent.fromJson(Map<String, dynamic> json) =
      _$EquationContentImpl.fromJson;

  @override
  String get expression;

  /// Create a copy of EquationContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EquationContentImplCopyWith<_$EquationContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MentionContent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) database,
    required TResult Function(DateTime start, DateTime? end) date,
    required TResult Function(String url) linkPreview,
    required TResult Function(String id) page,
    required TResult Function(String value) templateMentionDate,
    required TResult Function(String value) templateMentionUser,
    required TResult Function(String id) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? database,
    TResult? Function(DateTime start, DateTime? end)? date,
    TResult? Function(String url)? linkPreview,
    TResult? Function(String id)? page,
    TResult? Function(String value)? templateMentionDate,
    TResult? Function(String value)? templateMentionUser,
    TResult? Function(String id)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? database,
    TResult Function(DateTime start, DateTime? end)? date,
    TResult Function(String url)? linkPreview,
    TResult Function(String id)? page,
    TResult Function(String value)? templateMentionDate,
    TResult Function(String value)? templateMentionUser,
    TResult Function(String id)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseMention value) database,
    required TResult Function(DateMention value) date,
    required TResult Function(LinkPreviewMention value) linkPreview,
    required TResult Function(PageMention value) page,
    required TResult Function(TemplateMentionDate value) templateMentionDate,
    required TResult Function(TemplateMentionUser value) templateMentionUser,
    required TResult Function(UserMention value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseMention value)? database,
    TResult? Function(DateMention value)? date,
    TResult? Function(LinkPreviewMention value)? linkPreview,
    TResult? Function(PageMention value)? page,
    TResult? Function(TemplateMentionDate value)? templateMentionDate,
    TResult? Function(TemplateMentionUser value)? templateMentionUser,
    TResult? Function(UserMention value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseMention value)? database,
    TResult Function(DateMention value)? date,
    TResult Function(LinkPreviewMention value)? linkPreview,
    TResult Function(PageMention value)? page,
    TResult Function(TemplateMentionDate value)? templateMentionDate,
    TResult Function(TemplateMentionUser value)? templateMentionUser,
    TResult Function(UserMention value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionContentCopyWith<$Res> {
  factory $MentionContentCopyWith(
          MentionContent value, $Res Function(MentionContent) then) =
      _$MentionContentCopyWithImpl<$Res, MentionContent>;
}

/// @nodoc
class _$MentionContentCopyWithImpl<$Res, $Val extends MentionContent>
    implements $MentionContentCopyWith<$Res> {
  _$MentionContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DatabaseMentionImplCopyWith<$Res> {
  factory _$$DatabaseMentionImplCopyWith(_$DatabaseMentionImpl value,
          $Res Function(_$DatabaseMentionImpl) then) =
      __$$DatabaseMentionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DatabaseMentionImplCopyWithImpl<$Res>
    extends _$MentionContentCopyWithImpl<$Res, _$DatabaseMentionImpl>
    implements _$$DatabaseMentionImplCopyWith<$Res> {
  __$$DatabaseMentionImplCopyWithImpl(
      _$DatabaseMentionImpl _value, $Res Function(_$DatabaseMentionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DatabaseMentionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DatabaseMentionImpl extends DatabaseMention {
  const _$DatabaseMentionImpl({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'MentionContent.database(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseMentionImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseMentionImplCopyWith<_$DatabaseMentionImpl> get copyWith =>
      __$$DatabaseMentionImplCopyWithImpl<_$DatabaseMentionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) database,
    required TResult Function(DateTime start, DateTime? end) date,
    required TResult Function(String url) linkPreview,
    required TResult Function(String id) page,
    required TResult Function(String value) templateMentionDate,
    required TResult Function(String value) templateMentionUser,
    required TResult Function(String id) user,
  }) {
    return database(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? database,
    TResult? Function(DateTime start, DateTime? end)? date,
    TResult? Function(String url)? linkPreview,
    TResult? Function(String id)? page,
    TResult? Function(String value)? templateMentionDate,
    TResult? Function(String value)? templateMentionUser,
    TResult? Function(String id)? user,
  }) {
    return database?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? database,
    TResult Function(DateTime start, DateTime? end)? date,
    TResult Function(String url)? linkPreview,
    TResult Function(String id)? page,
    TResult Function(String value)? templateMentionDate,
    TResult Function(String value)? templateMentionUser,
    TResult Function(String id)? user,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseMention value) database,
    required TResult Function(DateMention value) date,
    required TResult Function(LinkPreviewMention value) linkPreview,
    required TResult Function(PageMention value) page,
    required TResult Function(TemplateMentionDate value) templateMentionDate,
    required TResult Function(TemplateMentionUser value) templateMentionUser,
    required TResult Function(UserMention value) user,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseMention value)? database,
    TResult? Function(DateMention value)? date,
    TResult? Function(LinkPreviewMention value)? linkPreview,
    TResult? Function(PageMention value)? page,
    TResult? Function(TemplateMentionDate value)? templateMentionDate,
    TResult? Function(TemplateMentionUser value)? templateMentionUser,
    TResult? Function(UserMention value)? user,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseMention value)? database,
    TResult Function(DateMention value)? date,
    TResult Function(LinkPreviewMention value)? linkPreview,
    TResult Function(PageMention value)? page,
    TResult Function(TemplateMentionDate value)? templateMentionDate,
    TResult Function(TemplateMentionUser value)? templateMentionUser,
    TResult Function(UserMention value)? user,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class DatabaseMention extends MentionContent {
  const factory DatabaseMention({required final String id}) =
      _$DatabaseMentionImpl;
  const DatabaseMention._() : super._();

  String get id;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseMentionImplCopyWith<_$DatabaseMentionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateMentionImplCopyWith<$Res> {
  factory _$$DateMentionImplCopyWith(
          _$DateMentionImpl value, $Res Function(_$DateMentionImpl) then) =
      __$$DateMentionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime start, DateTime? end});
}

/// @nodoc
class __$$DateMentionImplCopyWithImpl<$Res>
    extends _$MentionContentCopyWithImpl<$Res, _$DateMentionImpl>
    implements _$$DateMentionImplCopyWith<$Res> {
  __$$DateMentionImplCopyWithImpl(
      _$DateMentionImpl _value, $Res Function(_$DateMentionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = freezed,
  }) {
    return _then(_$DateMentionImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$DateMentionImpl extends DateMention {
  const _$DateMentionImpl({required this.start, this.end}) : super._();

  @override
  final DateTime start;
  @override
  final DateTime? end;

  @override
  String toString() {
    return 'MentionContent.date(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateMentionImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateMentionImplCopyWith<_$DateMentionImpl> get copyWith =>
      __$$DateMentionImplCopyWithImpl<_$DateMentionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) database,
    required TResult Function(DateTime start, DateTime? end) date,
    required TResult Function(String url) linkPreview,
    required TResult Function(String id) page,
    required TResult Function(String value) templateMentionDate,
    required TResult Function(String value) templateMentionUser,
    required TResult Function(String id) user,
  }) {
    return date(start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? database,
    TResult? Function(DateTime start, DateTime? end)? date,
    TResult? Function(String url)? linkPreview,
    TResult? Function(String id)? page,
    TResult? Function(String value)? templateMentionDate,
    TResult? Function(String value)? templateMentionUser,
    TResult? Function(String id)? user,
  }) {
    return date?.call(start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? database,
    TResult Function(DateTime start, DateTime? end)? date,
    TResult Function(String url)? linkPreview,
    TResult Function(String id)? page,
    TResult Function(String value)? templateMentionDate,
    TResult Function(String value)? templateMentionUser,
    TResult Function(String id)? user,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseMention value) database,
    required TResult Function(DateMention value) date,
    required TResult Function(LinkPreviewMention value) linkPreview,
    required TResult Function(PageMention value) page,
    required TResult Function(TemplateMentionDate value) templateMentionDate,
    required TResult Function(TemplateMentionUser value) templateMentionUser,
    required TResult Function(UserMention value) user,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseMention value)? database,
    TResult? Function(DateMention value)? date,
    TResult? Function(LinkPreviewMention value)? linkPreview,
    TResult? Function(PageMention value)? page,
    TResult? Function(TemplateMentionDate value)? templateMentionDate,
    TResult? Function(TemplateMentionUser value)? templateMentionUser,
    TResult? Function(UserMention value)? user,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseMention value)? database,
    TResult Function(DateMention value)? date,
    TResult Function(LinkPreviewMention value)? linkPreview,
    TResult Function(PageMention value)? page,
    TResult Function(TemplateMentionDate value)? templateMentionDate,
    TResult Function(TemplateMentionUser value)? templateMentionUser,
    TResult Function(UserMention value)? user,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }
}

abstract class DateMention extends MentionContent {
  const factory DateMention(
      {required final DateTime start, final DateTime? end}) = _$DateMentionImpl;
  const DateMention._() : super._();

  DateTime get start;
  DateTime? get end;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateMentionImplCopyWith<_$DateMentionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LinkPreviewMentionImplCopyWith<$Res> {
  factory _$$LinkPreviewMentionImplCopyWith(_$LinkPreviewMentionImpl value,
          $Res Function(_$LinkPreviewMentionImpl) then) =
      __$$LinkPreviewMentionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$LinkPreviewMentionImplCopyWithImpl<$Res>
    extends _$MentionContentCopyWithImpl<$Res, _$LinkPreviewMentionImpl>
    implements _$$LinkPreviewMentionImplCopyWith<$Res> {
  __$$LinkPreviewMentionImplCopyWithImpl(_$LinkPreviewMentionImpl _value,
      $Res Function(_$LinkPreviewMentionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$LinkPreviewMentionImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LinkPreviewMentionImpl extends LinkPreviewMention {
  const _$LinkPreviewMentionImpl({required this.url}) : super._();

  @override
  final String url;

  @override
  String toString() {
    return 'MentionContent.linkPreview(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkPreviewMentionImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkPreviewMentionImplCopyWith<_$LinkPreviewMentionImpl> get copyWith =>
      __$$LinkPreviewMentionImplCopyWithImpl<_$LinkPreviewMentionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) database,
    required TResult Function(DateTime start, DateTime? end) date,
    required TResult Function(String url) linkPreview,
    required TResult Function(String id) page,
    required TResult Function(String value) templateMentionDate,
    required TResult Function(String value) templateMentionUser,
    required TResult Function(String id) user,
  }) {
    return linkPreview(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? database,
    TResult? Function(DateTime start, DateTime? end)? date,
    TResult? Function(String url)? linkPreview,
    TResult? Function(String id)? page,
    TResult? Function(String value)? templateMentionDate,
    TResult? Function(String value)? templateMentionUser,
    TResult? Function(String id)? user,
  }) {
    return linkPreview?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? database,
    TResult Function(DateTime start, DateTime? end)? date,
    TResult Function(String url)? linkPreview,
    TResult Function(String id)? page,
    TResult Function(String value)? templateMentionDate,
    TResult Function(String value)? templateMentionUser,
    TResult Function(String id)? user,
    required TResult orElse(),
  }) {
    if (linkPreview != null) {
      return linkPreview(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseMention value) database,
    required TResult Function(DateMention value) date,
    required TResult Function(LinkPreviewMention value) linkPreview,
    required TResult Function(PageMention value) page,
    required TResult Function(TemplateMentionDate value) templateMentionDate,
    required TResult Function(TemplateMentionUser value) templateMentionUser,
    required TResult Function(UserMention value) user,
  }) {
    return linkPreview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseMention value)? database,
    TResult? Function(DateMention value)? date,
    TResult? Function(LinkPreviewMention value)? linkPreview,
    TResult? Function(PageMention value)? page,
    TResult? Function(TemplateMentionDate value)? templateMentionDate,
    TResult? Function(TemplateMentionUser value)? templateMentionUser,
    TResult? Function(UserMention value)? user,
  }) {
    return linkPreview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseMention value)? database,
    TResult Function(DateMention value)? date,
    TResult Function(LinkPreviewMention value)? linkPreview,
    TResult Function(PageMention value)? page,
    TResult Function(TemplateMentionDate value)? templateMentionDate,
    TResult Function(TemplateMentionUser value)? templateMentionUser,
    TResult Function(UserMention value)? user,
    required TResult orElse(),
  }) {
    if (linkPreview != null) {
      return linkPreview(this);
    }
    return orElse();
  }
}

abstract class LinkPreviewMention extends MentionContent {
  const factory LinkPreviewMention({required final String url}) =
      _$LinkPreviewMentionImpl;
  const LinkPreviewMention._() : super._();

  String get url;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkPreviewMentionImplCopyWith<_$LinkPreviewMentionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PageMentionImplCopyWith<$Res> {
  factory _$$PageMentionImplCopyWith(
          _$PageMentionImpl value, $Res Function(_$PageMentionImpl) then) =
      __$$PageMentionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$PageMentionImplCopyWithImpl<$Res>
    extends _$MentionContentCopyWithImpl<$Res, _$PageMentionImpl>
    implements _$$PageMentionImplCopyWith<$Res> {
  __$$PageMentionImplCopyWithImpl(
      _$PageMentionImpl _value, $Res Function(_$PageMentionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$PageMentionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PageMentionImpl extends PageMention {
  const _$PageMentionImpl({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'MentionContent.page(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageMentionImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageMentionImplCopyWith<_$PageMentionImpl> get copyWith =>
      __$$PageMentionImplCopyWithImpl<_$PageMentionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) database,
    required TResult Function(DateTime start, DateTime? end) date,
    required TResult Function(String url) linkPreview,
    required TResult Function(String id) page,
    required TResult Function(String value) templateMentionDate,
    required TResult Function(String value) templateMentionUser,
    required TResult Function(String id) user,
  }) {
    return page(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? database,
    TResult? Function(DateTime start, DateTime? end)? date,
    TResult? Function(String url)? linkPreview,
    TResult? Function(String id)? page,
    TResult? Function(String value)? templateMentionDate,
    TResult? Function(String value)? templateMentionUser,
    TResult? Function(String id)? user,
  }) {
    return page?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? database,
    TResult Function(DateTime start, DateTime? end)? date,
    TResult Function(String url)? linkPreview,
    TResult Function(String id)? page,
    TResult Function(String value)? templateMentionDate,
    TResult Function(String value)? templateMentionUser,
    TResult Function(String id)? user,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseMention value) database,
    required TResult Function(DateMention value) date,
    required TResult Function(LinkPreviewMention value) linkPreview,
    required TResult Function(PageMention value) page,
    required TResult Function(TemplateMentionDate value) templateMentionDate,
    required TResult Function(TemplateMentionUser value) templateMentionUser,
    required TResult Function(UserMention value) user,
  }) {
    return page(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseMention value)? database,
    TResult? Function(DateMention value)? date,
    TResult? Function(LinkPreviewMention value)? linkPreview,
    TResult? Function(PageMention value)? page,
    TResult? Function(TemplateMentionDate value)? templateMentionDate,
    TResult? Function(TemplateMentionUser value)? templateMentionUser,
    TResult? Function(UserMention value)? user,
  }) {
    return page?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseMention value)? database,
    TResult Function(DateMention value)? date,
    TResult Function(LinkPreviewMention value)? linkPreview,
    TResult Function(PageMention value)? page,
    TResult Function(TemplateMentionDate value)? templateMentionDate,
    TResult Function(TemplateMentionUser value)? templateMentionUser,
    TResult Function(UserMention value)? user,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(this);
    }
    return orElse();
  }
}

abstract class PageMention extends MentionContent {
  const factory PageMention({required final String id}) = _$PageMentionImpl;
  const PageMention._() : super._();

  String get id;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageMentionImplCopyWith<_$PageMentionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TemplateMentionDateImplCopyWith<$Res> {
  factory _$$TemplateMentionDateImplCopyWith(_$TemplateMentionDateImpl value,
          $Res Function(_$TemplateMentionDateImpl) then) =
      __$$TemplateMentionDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$TemplateMentionDateImplCopyWithImpl<$Res>
    extends _$MentionContentCopyWithImpl<$Res, _$TemplateMentionDateImpl>
    implements _$$TemplateMentionDateImplCopyWith<$Res> {
  __$$TemplateMentionDateImplCopyWithImpl(_$TemplateMentionDateImpl _value,
      $Res Function(_$TemplateMentionDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TemplateMentionDateImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TemplateMentionDateImpl extends TemplateMentionDate {
  const _$TemplateMentionDateImpl({required this.value}) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'MentionContent.templateMentionDate(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateMentionDateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateMentionDateImplCopyWith<_$TemplateMentionDateImpl> get copyWith =>
      __$$TemplateMentionDateImplCopyWithImpl<_$TemplateMentionDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) database,
    required TResult Function(DateTime start, DateTime? end) date,
    required TResult Function(String url) linkPreview,
    required TResult Function(String id) page,
    required TResult Function(String value) templateMentionDate,
    required TResult Function(String value) templateMentionUser,
    required TResult Function(String id) user,
  }) {
    return templateMentionDate(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? database,
    TResult? Function(DateTime start, DateTime? end)? date,
    TResult? Function(String url)? linkPreview,
    TResult? Function(String id)? page,
    TResult? Function(String value)? templateMentionDate,
    TResult? Function(String value)? templateMentionUser,
    TResult? Function(String id)? user,
  }) {
    return templateMentionDate?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? database,
    TResult Function(DateTime start, DateTime? end)? date,
    TResult Function(String url)? linkPreview,
    TResult Function(String id)? page,
    TResult Function(String value)? templateMentionDate,
    TResult Function(String value)? templateMentionUser,
    TResult Function(String id)? user,
    required TResult orElse(),
  }) {
    if (templateMentionDate != null) {
      return templateMentionDate(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseMention value) database,
    required TResult Function(DateMention value) date,
    required TResult Function(LinkPreviewMention value) linkPreview,
    required TResult Function(PageMention value) page,
    required TResult Function(TemplateMentionDate value) templateMentionDate,
    required TResult Function(TemplateMentionUser value) templateMentionUser,
    required TResult Function(UserMention value) user,
  }) {
    return templateMentionDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseMention value)? database,
    TResult? Function(DateMention value)? date,
    TResult? Function(LinkPreviewMention value)? linkPreview,
    TResult? Function(PageMention value)? page,
    TResult? Function(TemplateMentionDate value)? templateMentionDate,
    TResult? Function(TemplateMentionUser value)? templateMentionUser,
    TResult? Function(UserMention value)? user,
  }) {
    return templateMentionDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseMention value)? database,
    TResult Function(DateMention value)? date,
    TResult Function(LinkPreviewMention value)? linkPreview,
    TResult Function(PageMention value)? page,
    TResult Function(TemplateMentionDate value)? templateMentionDate,
    TResult Function(TemplateMentionUser value)? templateMentionUser,
    TResult Function(UserMention value)? user,
    required TResult orElse(),
  }) {
    if (templateMentionDate != null) {
      return templateMentionDate(this);
    }
    return orElse();
  }
}

abstract class TemplateMentionDate extends MentionContent {
  const factory TemplateMentionDate({required final String value}) =
      _$TemplateMentionDateImpl;
  const TemplateMentionDate._() : super._();

  String get value;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemplateMentionDateImplCopyWith<_$TemplateMentionDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TemplateMentionUserImplCopyWith<$Res> {
  factory _$$TemplateMentionUserImplCopyWith(_$TemplateMentionUserImpl value,
          $Res Function(_$TemplateMentionUserImpl) then) =
      __$$TemplateMentionUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$TemplateMentionUserImplCopyWithImpl<$Res>
    extends _$MentionContentCopyWithImpl<$Res, _$TemplateMentionUserImpl>
    implements _$$TemplateMentionUserImplCopyWith<$Res> {
  __$$TemplateMentionUserImplCopyWithImpl(_$TemplateMentionUserImpl _value,
      $Res Function(_$TemplateMentionUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TemplateMentionUserImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TemplateMentionUserImpl extends TemplateMentionUser {
  const _$TemplateMentionUserImpl({required this.value}) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'MentionContent.templateMentionUser(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateMentionUserImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateMentionUserImplCopyWith<_$TemplateMentionUserImpl> get copyWith =>
      __$$TemplateMentionUserImplCopyWithImpl<_$TemplateMentionUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) database,
    required TResult Function(DateTime start, DateTime? end) date,
    required TResult Function(String url) linkPreview,
    required TResult Function(String id) page,
    required TResult Function(String value) templateMentionDate,
    required TResult Function(String value) templateMentionUser,
    required TResult Function(String id) user,
  }) {
    return templateMentionUser(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? database,
    TResult? Function(DateTime start, DateTime? end)? date,
    TResult? Function(String url)? linkPreview,
    TResult? Function(String id)? page,
    TResult? Function(String value)? templateMentionDate,
    TResult? Function(String value)? templateMentionUser,
    TResult? Function(String id)? user,
  }) {
    return templateMentionUser?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? database,
    TResult Function(DateTime start, DateTime? end)? date,
    TResult Function(String url)? linkPreview,
    TResult Function(String id)? page,
    TResult Function(String value)? templateMentionDate,
    TResult Function(String value)? templateMentionUser,
    TResult Function(String id)? user,
    required TResult orElse(),
  }) {
    if (templateMentionUser != null) {
      return templateMentionUser(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseMention value) database,
    required TResult Function(DateMention value) date,
    required TResult Function(LinkPreviewMention value) linkPreview,
    required TResult Function(PageMention value) page,
    required TResult Function(TemplateMentionDate value) templateMentionDate,
    required TResult Function(TemplateMentionUser value) templateMentionUser,
    required TResult Function(UserMention value) user,
  }) {
    return templateMentionUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseMention value)? database,
    TResult? Function(DateMention value)? date,
    TResult? Function(LinkPreviewMention value)? linkPreview,
    TResult? Function(PageMention value)? page,
    TResult? Function(TemplateMentionDate value)? templateMentionDate,
    TResult? Function(TemplateMentionUser value)? templateMentionUser,
    TResult? Function(UserMention value)? user,
  }) {
    return templateMentionUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseMention value)? database,
    TResult Function(DateMention value)? date,
    TResult Function(LinkPreviewMention value)? linkPreview,
    TResult Function(PageMention value)? page,
    TResult Function(TemplateMentionDate value)? templateMentionDate,
    TResult Function(TemplateMentionUser value)? templateMentionUser,
    TResult Function(UserMention value)? user,
    required TResult orElse(),
  }) {
    if (templateMentionUser != null) {
      return templateMentionUser(this);
    }
    return orElse();
  }
}

abstract class TemplateMentionUser extends MentionContent {
  const factory TemplateMentionUser({required final String value}) =
      _$TemplateMentionUserImpl;
  const TemplateMentionUser._() : super._();

  String get value;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemplateMentionUserImplCopyWith<_$TemplateMentionUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserMentionImplCopyWith<$Res> {
  factory _$$UserMentionImplCopyWith(
          _$UserMentionImpl value, $Res Function(_$UserMentionImpl) then) =
      __$$UserMentionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UserMentionImplCopyWithImpl<$Res>
    extends _$MentionContentCopyWithImpl<$Res, _$UserMentionImpl>
    implements _$$UserMentionImplCopyWith<$Res> {
  __$$UserMentionImplCopyWithImpl(
      _$UserMentionImpl _value, $Res Function(_$UserMentionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UserMentionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserMentionImpl extends UserMention {
  const _$UserMentionImpl({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'MentionContent.user(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMentionImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMentionImplCopyWith<_$UserMentionImpl> get copyWith =>
      __$$UserMentionImplCopyWithImpl<_$UserMentionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) database,
    required TResult Function(DateTime start, DateTime? end) date,
    required TResult Function(String url) linkPreview,
    required TResult Function(String id) page,
    required TResult Function(String value) templateMentionDate,
    required TResult Function(String value) templateMentionUser,
    required TResult Function(String id) user,
  }) {
    return user(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? database,
    TResult? Function(DateTime start, DateTime? end)? date,
    TResult? Function(String url)? linkPreview,
    TResult? Function(String id)? page,
    TResult? Function(String value)? templateMentionDate,
    TResult? Function(String value)? templateMentionUser,
    TResult? Function(String id)? user,
  }) {
    return user?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? database,
    TResult Function(DateTime start, DateTime? end)? date,
    TResult Function(String url)? linkPreview,
    TResult Function(String id)? page,
    TResult Function(String value)? templateMentionDate,
    TResult Function(String value)? templateMentionUser,
    TResult Function(String id)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseMention value) database,
    required TResult Function(DateMention value) date,
    required TResult Function(LinkPreviewMention value) linkPreview,
    required TResult Function(PageMention value) page,
    required TResult Function(TemplateMentionDate value) templateMentionDate,
    required TResult Function(TemplateMentionUser value) templateMentionUser,
    required TResult Function(UserMention value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseMention value)? database,
    TResult? Function(DateMention value)? date,
    TResult? Function(LinkPreviewMention value)? linkPreview,
    TResult? Function(PageMention value)? page,
    TResult? Function(TemplateMentionDate value)? templateMentionDate,
    TResult? Function(TemplateMentionUser value)? templateMentionUser,
    TResult? Function(UserMention value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseMention value)? database,
    TResult Function(DateMention value)? date,
    TResult Function(LinkPreviewMention value)? linkPreview,
    TResult Function(PageMention value)? page,
    TResult Function(TemplateMentionDate value)? templateMentionDate,
    TResult Function(TemplateMentionUser value)? templateMentionUser,
    TResult Function(UserMention value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class UserMention extends MentionContent {
  const factory UserMention({required final String id}) = _$UserMentionImpl;
  const UserMention._() : super._();

  String get id;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserMentionImplCopyWith<_$UserMentionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RichText {
  Annotations get annotations => throw _privateConstructorUsedError;
  String get plainText => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextContent text, Annotations annotations,
            String plainText, String? href)
        text,
    required TResult Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)
        mention,
    required TResult Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)
        equation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextContent text, Annotations annotations,
            String plainText, String? href)?
        text,
    TResult? Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)?
        mention,
    TResult? Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)?
        equation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextContent text, Annotations annotations,
            String plainText, String? href)?
        text,
    TResult Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)?
        mention,
    TResult Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)?
        equation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextRichText value) text,
    required TResult Function(MentionRichText value) mention,
    required TResult Function(EquationRichText value) equation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextRichText value)? text,
    TResult? Function(MentionRichText value)? mention,
    TResult? Function(EquationRichText value)? equation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextRichText value)? text,
    TResult Function(MentionRichText value)? mention,
    TResult Function(EquationRichText value)? equation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RichTextCopyWith<RichText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RichTextCopyWith<$Res> {
  factory $RichTextCopyWith(RichText value, $Res Function(RichText) then) =
      _$RichTextCopyWithImpl<$Res, RichText>;
  @useResult
  $Res call({Annotations annotations, String plainText, String? href});

  $AnnotationsCopyWith<$Res> get annotations;
}

/// @nodoc
class _$RichTextCopyWithImpl<$Res, $Val extends RichText>
    implements $RichTextCopyWith<$Res> {
  _$RichTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? annotations = null,
    Object? plainText = null,
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      annotations: null == annotations
          ? _value.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as Annotations,
      plainText: null == plainText
          ? _value.plainText
          : plainText // ignore: cast_nullable_to_non_nullable
              as String,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnotationsCopyWith<$Res> get annotations {
    return $AnnotationsCopyWith<$Res>(_value.annotations, (value) {
      return _then(_value.copyWith(annotations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextRichTextImplCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory _$$TextRichTextImplCopyWith(
          _$TextRichTextImpl value, $Res Function(_$TextRichTextImpl) then) =
      __$$TextRichTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextContent text,
      Annotations annotations,
      String plainText,
      String? href});

  $TextContentCopyWith<$Res> get text;
  @override
  $AnnotationsCopyWith<$Res> get annotations;
}

/// @nodoc
class __$$TextRichTextImplCopyWithImpl<$Res>
    extends _$RichTextCopyWithImpl<$Res, _$TextRichTextImpl>
    implements _$$TextRichTextImplCopyWith<$Res> {
  __$$TextRichTextImplCopyWithImpl(
      _$TextRichTextImpl _value, $Res Function(_$TextRichTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? annotations = null,
    Object? plainText = null,
    Object? href = freezed,
  }) {
    return _then(_$TextRichTextImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextContent,
      annotations: null == annotations
          ? _value.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as Annotations,
      plainText: null == plainText
          ? _value.plainText
          : plainText // ignore: cast_nullable_to_non_nullable
              as String,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextContentCopyWith<$Res> get text {
    return $TextContentCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value));
    });
  }
}

/// @nodoc

class _$TextRichTextImpl extends TextRichText {
  const _$TextRichTextImpl(
      {required this.text,
      required this.annotations,
      required this.plainText,
      this.href})
      : super._();

  @override
  final TextContent text;
  @override
  final Annotations annotations;
  @override
  final String plainText;
  @override
  final String? href;

  @override
  String toString() {
    return 'RichText.text(text: $text, annotations: $annotations, plainText: $plainText, href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextRichTextImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.annotations, annotations) ||
                other.annotations == annotations) &&
            (identical(other.plainText, plainText) ||
                other.plainText == plainText) &&
            (identical(other.href, href) || other.href == href));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, text, annotations, plainText, href);

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextRichTextImplCopyWith<_$TextRichTextImpl> get copyWith =>
      __$$TextRichTextImplCopyWithImpl<_$TextRichTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextContent text, Annotations annotations,
            String plainText, String? href)
        text,
    required TResult Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)
        mention,
    required TResult Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)
        equation,
  }) {
    return text(this.text, annotations, plainText, href);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextContent text, Annotations annotations,
            String plainText, String? href)?
        text,
    TResult? Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)?
        mention,
    TResult? Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)?
        equation,
  }) {
    return text?.call(this.text, annotations, plainText, href);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextContent text, Annotations annotations,
            String plainText, String? href)?
        text,
    TResult Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)?
        mention,
    TResult Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)?
        equation,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text, annotations, plainText, href);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextRichText value) text,
    required TResult Function(MentionRichText value) mention,
    required TResult Function(EquationRichText value) equation,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextRichText value)? text,
    TResult? Function(MentionRichText value)? mention,
    TResult? Function(EquationRichText value)? equation,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextRichText value)? text,
    TResult Function(MentionRichText value)? mention,
    TResult Function(EquationRichText value)? equation,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextRichText extends RichText {
  const factory TextRichText(
      {required final TextContent text,
      required final Annotations annotations,
      required final String plainText,
      final String? href}) = _$TextRichTextImpl;
  const TextRichText._() : super._();

  TextContent get text;
  @override
  Annotations get annotations;
  @override
  String get plainText;
  @override
  String? get href;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextRichTextImplCopyWith<_$TextRichTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MentionRichTextImplCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory _$$MentionRichTextImplCopyWith(_$MentionRichTextImpl value,
          $Res Function(_$MentionRichTextImpl) then) =
      __$$MentionRichTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MentionContent mention,
      Annotations annotations,
      String plainText,
      String? href});

  $MentionContentCopyWith<$Res> get mention;
  @override
  $AnnotationsCopyWith<$Res> get annotations;
}

/// @nodoc
class __$$MentionRichTextImplCopyWithImpl<$Res>
    extends _$RichTextCopyWithImpl<$Res, _$MentionRichTextImpl>
    implements _$$MentionRichTextImplCopyWith<$Res> {
  __$$MentionRichTextImplCopyWithImpl(
      _$MentionRichTextImpl _value, $Res Function(_$MentionRichTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mention = null,
    Object? annotations = null,
    Object? plainText = null,
    Object? href = freezed,
  }) {
    return _then(_$MentionRichTextImpl(
      mention: null == mention
          ? _value.mention
          : mention // ignore: cast_nullable_to_non_nullable
              as MentionContent,
      annotations: null == annotations
          ? _value.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as Annotations,
      plainText: null == plainText
          ? _value.plainText
          : plainText // ignore: cast_nullable_to_non_nullable
              as String,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MentionContentCopyWith<$Res> get mention {
    return $MentionContentCopyWith<$Res>(_value.mention, (value) {
      return _then(_value.copyWith(mention: value));
    });
  }
}

/// @nodoc

class _$MentionRichTextImpl extends MentionRichText {
  const _$MentionRichTextImpl(
      {required this.mention,
      required this.annotations,
      required this.plainText,
      this.href})
      : super._();

  @override
  final MentionContent mention;
  @override
  final Annotations annotations;
  @override
  final String plainText;
  @override
  final String? href;

  @override
  String toString() {
    return 'RichText.mention(mention: $mention, annotations: $annotations, plainText: $plainText, href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentionRichTextImpl &&
            (identical(other.mention, mention) || other.mention == mention) &&
            (identical(other.annotations, annotations) ||
                other.annotations == annotations) &&
            (identical(other.plainText, plainText) ||
                other.plainText == plainText) &&
            (identical(other.href, href) || other.href == href));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, mention, annotations, plainText, href);

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentionRichTextImplCopyWith<_$MentionRichTextImpl> get copyWith =>
      __$$MentionRichTextImplCopyWithImpl<_$MentionRichTextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextContent text, Annotations annotations,
            String plainText, String? href)
        text,
    required TResult Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)
        mention,
    required TResult Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)
        equation,
  }) {
    return mention(this.mention, annotations, plainText, href);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextContent text, Annotations annotations,
            String plainText, String? href)?
        text,
    TResult? Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)?
        mention,
    TResult? Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)?
        equation,
  }) {
    return mention?.call(this.mention, annotations, plainText, href);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextContent text, Annotations annotations,
            String plainText, String? href)?
        text,
    TResult Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)?
        mention,
    TResult Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)?
        equation,
    required TResult orElse(),
  }) {
    if (mention != null) {
      return mention(this.mention, annotations, plainText, href);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextRichText value) text,
    required TResult Function(MentionRichText value) mention,
    required TResult Function(EquationRichText value) equation,
  }) {
    return mention(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextRichText value)? text,
    TResult? Function(MentionRichText value)? mention,
    TResult? Function(EquationRichText value)? equation,
  }) {
    return mention?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextRichText value)? text,
    TResult Function(MentionRichText value)? mention,
    TResult Function(EquationRichText value)? equation,
    required TResult orElse(),
  }) {
    if (mention != null) {
      return mention(this);
    }
    return orElse();
  }
}

abstract class MentionRichText extends RichText {
  const factory MentionRichText(
      {required final MentionContent mention,
      required final Annotations annotations,
      required final String plainText,
      final String? href}) = _$MentionRichTextImpl;
  const MentionRichText._() : super._();

  MentionContent get mention;
  @override
  Annotations get annotations;
  @override
  String get plainText;
  @override
  String? get href;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentionRichTextImplCopyWith<_$MentionRichTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EquationRichTextImplCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory _$$EquationRichTextImplCopyWith(_$EquationRichTextImpl value,
          $Res Function(_$EquationRichTextImpl) then) =
      __$$EquationRichTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EquationContent equation,
      Annotations annotations,
      String plainText,
      String? href});

  $EquationContentCopyWith<$Res> get equation;
  @override
  $AnnotationsCopyWith<$Res> get annotations;
}

/// @nodoc
class __$$EquationRichTextImplCopyWithImpl<$Res>
    extends _$RichTextCopyWithImpl<$Res, _$EquationRichTextImpl>
    implements _$$EquationRichTextImplCopyWith<$Res> {
  __$$EquationRichTextImplCopyWithImpl(_$EquationRichTextImpl _value,
      $Res Function(_$EquationRichTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equation = null,
    Object? annotations = null,
    Object? plainText = null,
    Object? href = freezed,
  }) {
    return _then(_$EquationRichTextImpl(
      equation: null == equation
          ? _value.equation
          : equation // ignore: cast_nullable_to_non_nullable
              as EquationContent,
      annotations: null == annotations
          ? _value.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as Annotations,
      plainText: null == plainText
          ? _value.plainText
          : plainText // ignore: cast_nullable_to_non_nullable
              as String,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EquationContentCopyWith<$Res> get equation {
    return $EquationContentCopyWith<$Res>(_value.equation, (value) {
      return _then(_value.copyWith(equation: value));
    });
  }
}

/// @nodoc

class _$EquationRichTextImpl extends EquationRichText {
  const _$EquationRichTextImpl(
      {required this.equation,
      required this.annotations,
      required this.plainText,
      this.href})
      : super._();

  @override
  final EquationContent equation;
  @override
  final Annotations annotations;
  @override
  final String plainText;
  @override
  final String? href;

  @override
  String toString() {
    return 'RichText.equation(equation: $equation, annotations: $annotations, plainText: $plainText, href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquationRichTextImpl &&
            (identical(other.equation, equation) ||
                other.equation == equation) &&
            (identical(other.annotations, annotations) ||
                other.annotations == annotations) &&
            (identical(other.plainText, plainText) ||
                other.plainText == plainText) &&
            (identical(other.href, href) || other.href == href));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, equation, annotations, plainText, href);

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EquationRichTextImplCopyWith<_$EquationRichTextImpl> get copyWith =>
      __$$EquationRichTextImplCopyWithImpl<_$EquationRichTextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextContent text, Annotations annotations,
            String plainText, String? href)
        text,
    required TResult Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)
        mention,
    required TResult Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)
        equation,
  }) {
    return equation(this.equation, annotations, plainText, href);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextContent text, Annotations annotations,
            String plainText, String? href)?
        text,
    TResult? Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)?
        mention,
    TResult? Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)?
        equation,
  }) {
    return equation?.call(this.equation, annotations, plainText, href);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextContent text, Annotations annotations,
            String plainText, String? href)?
        text,
    TResult Function(MentionContent mention, Annotations annotations,
            String plainText, String? href)?
        mention,
    TResult Function(EquationContent equation, Annotations annotations,
            String plainText, String? href)?
        equation,
    required TResult orElse(),
  }) {
    if (equation != null) {
      return equation(this.equation, annotations, plainText, href);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextRichText value) text,
    required TResult Function(MentionRichText value) mention,
    required TResult Function(EquationRichText value) equation,
  }) {
    return equation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextRichText value)? text,
    TResult? Function(MentionRichText value)? mention,
    TResult? Function(EquationRichText value)? equation,
  }) {
    return equation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextRichText value)? text,
    TResult Function(MentionRichText value)? mention,
    TResult Function(EquationRichText value)? equation,
    required TResult orElse(),
  }) {
    if (equation != null) {
      return equation(this);
    }
    return orElse();
  }
}

abstract class EquationRichText extends RichText {
  const factory EquationRichText(
      {required final EquationContent equation,
      required final Annotations annotations,
      required final String plainText,
      final String? href}) = _$EquationRichTextImpl;
  const EquationRichText._() : super._();

  EquationContent get equation;
  @override
  Annotations get annotations;
  @override
  String get plainText;
  @override
  String? get href;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EquationRichTextImplCopyWith<_$EquationRichTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
