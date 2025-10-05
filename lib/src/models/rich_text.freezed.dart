// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Annotations {
  bool get bold;
  bool get italic;
  bool get strikethrough;
  bool get underline;
  bool get code;
  RichTextColor get color;

  /// Create a copy of Annotations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnnotationsCopyWith<Annotations> get copyWith =>
      _$AnnotationsCopyWithImpl<Annotations>(this as Annotations, _$identity);

  /// Serializes this Annotations to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Annotations &&
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

  @override
  String toString() {
    return 'Annotations(bold: $bold, italic: $italic, strikethrough: $strikethrough, underline: $underline, code: $code, color: $color)';
  }
}

/// @nodoc
abstract mixin class $AnnotationsCopyWith<$Res> {
  factory $AnnotationsCopyWith(
          Annotations value, $Res Function(Annotations) _then) =
      _$AnnotationsCopyWithImpl;
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
class _$AnnotationsCopyWithImpl<$Res> implements $AnnotationsCopyWith<$Res> {
  _$AnnotationsCopyWithImpl(this._self, this._then);

  final Annotations _self;
  final $Res Function(Annotations) _then;

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
    return _then(_self.copyWith(
      bold: null == bold
          ? _self.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      italic: null == italic
          ? _self.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      strikethrough: null == strikethrough
          ? _self.strikethrough
          : strikethrough // ignore: cast_nullable_to_non_nullable
              as bool,
      underline: null == underline
          ? _self.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as RichTextColor,
    ));
  }
}

/// Adds pattern-matching-related methods to [Annotations].
extension AnnotationsPatterns on Annotations {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Annotations value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Annotations() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Annotations value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Annotations():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Annotations value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Annotations() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool bold, bool italic, bool strikethrough, bool underline,
            bool code, RichTextColor color)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Annotations() when $default != null:
        return $default(_that.bold, _that.italic, _that.strikethrough,
            _that.underline, _that.code, _that.color);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool bold, bool italic, bool strikethrough, bool underline,
            bool code, RichTextColor color)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Annotations():
        return $default(_that.bold, _that.italic, _that.strikethrough,
            _that.underline, _that.code, _that.color);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool bold, bool italic, bool strikethrough,
            bool underline, bool code, RichTextColor color)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Annotations() when $default != null:
        return $default(_that.bold, _that.italic, _that.strikethrough,
            _that.underline, _that.code, _that.color);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Annotations implements Annotations {
  const _Annotations(
      {this.bold = false,
      this.italic = false,
      this.strikethrough = false,
      this.underline = false,
      this.code = false,
      this.color = RichTextColor.defaultColor});
  factory _Annotations.fromJson(Map<String, dynamic> json) =>
      _$AnnotationsFromJson(json);

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

  /// Create a copy of Annotations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnnotationsCopyWith<_Annotations> get copyWith =>
      __$AnnotationsCopyWithImpl<_Annotations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnnotationsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Annotations &&
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

  @override
  String toString() {
    return 'Annotations(bold: $bold, italic: $italic, strikethrough: $strikethrough, underline: $underline, code: $code, color: $color)';
  }
}

/// @nodoc
abstract mixin class _$AnnotationsCopyWith<$Res>
    implements $AnnotationsCopyWith<$Res> {
  factory _$AnnotationsCopyWith(
          _Annotations value, $Res Function(_Annotations) _then) =
      __$AnnotationsCopyWithImpl;
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
class __$AnnotationsCopyWithImpl<$Res> implements _$AnnotationsCopyWith<$Res> {
  __$AnnotationsCopyWithImpl(this._self, this._then);

  final _Annotations _self;
  final $Res Function(_Annotations) _then;

  /// Create a copy of Annotations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bold = null,
    Object? italic = null,
    Object? strikethrough = null,
    Object? underline = null,
    Object? code = null,
    Object? color = null,
  }) {
    return _then(_Annotations(
      bold: null == bold
          ? _self.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      italic: null == italic
          ? _self.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      strikethrough: null == strikethrough
          ? _self.strikethrough
          : strikethrough // ignore: cast_nullable_to_non_nullable
              as bool,
      underline: null == underline
          ? _self.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as RichTextColor,
    ));
  }
}

/// @nodoc
mixin _$TextContent {
  String get content;
  TextLink? get link;

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TextContentCopyWith<TextContent> get copyWith =>
      _$TextContentCopyWithImpl<TextContent>(this as TextContent, _$identity);

  /// Serializes this TextContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextContent &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, link);

  @override
  String toString() {
    return 'TextContent(content: $content, link: $link)';
  }
}

/// @nodoc
abstract mixin class $TextContentCopyWith<$Res> {
  factory $TextContentCopyWith(
          TextContent value, $Res Function(TextContent) _then) =
      _$TextContentCopyWithImpl;
  @useResult
  $Res call({String content, TextLink? link});

  $TextLinkCopyWith<$Res>? get link;
}

/// @nodoc
class _$TextContentCopyWithImpl<$Res> implements $TextContentCopyWith<$Res> {
  _$TextContentCopyWithImpl(this._self, this._then);

  final TextContent _self;
  final $Res Function(TextContent) _then;

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? link = freezed,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as TextLink?,
    ));
  }

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextLinkCopyWith<$Res>? get link {
    if (_self.link == null) {
      return null;
    }

    return $TextLinkCopyWith<$Res>(_self.link!, (value) {
      return _then(_self.copyWith(link: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TextContent].
extension TextContentPatterns on TextContent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TextContent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TextContent() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TextContent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextContent():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TextContent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextContent() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String content, TextLink? link)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TextContent() when $default != null:
        return $default(_that.content, _that.link);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String content, TextLink? link) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextContent():
        return $default(_that.content, _that.link);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String content, TextLink? link)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextContent() when $default != null:
        return $default(_that.content, _that.link);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TextContent implements TextContent {
  const _TextContent({required this.content, this.link});
  factory _TextContent.fromJson(Map<String, dynamic> json) =>
      _$TextContentFromJson(json);

  @override
  final String content;
  @override
  final TextLink? link;

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TextContentCopyWith<_TextContent> get copyWith =>
      __$TextContentCopyWithImpl<_TextContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TextContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TextContent &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, link);

  @override
  String toString() {
    return 'TextContent(content: $content, link: $link)';
  }
}

/// @nodoc
abstract mixin class _$TextContentCopyWith<$Res>
    implements $TextContentCopyWith<$Res> {
  factory _$TextContentCopyWith(
          _TextContent value, $Res Function(_TextContent) _then) =
      __$TextContentCopyWithImpl;
  @override
  @useResult
  $Res call({String content, TextLink? link});

  @override
  $TextLinkCopyWith<$Res>? get link;
}

/// @nodoc
class __$TextContentCopyWithImpl<$Res> implements _$TextContentCopyWith<$Res> {
  __$TextContentCopyWithImpl(this._self, this._then);

  final _TextContent _self;
  final $Res Function(_TextContent) _then;

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? link = freezed,
  }) {
    return _then(_TextContent(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as TextLink?,
    ));
  }

  /// Create a copy of TextContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextLinkCopyWith<$Res>? get link {
    if (_self.link == null) {
      return null;
    }

    return $TextLinkCopyWith<$Res>(_self.link!, (value) {
      return _then(_self.copyWith(link: value));
    });
  }
}

/// @nodoc
mixin _$TextLink {
  String get url;

  /// Create a copy of TextLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TextLinkCopyWith<TextLink> get copyWith =>
      _$TextLinkCopyWithImpl<TextLink>(this as TextLink, _$identity);

  /// Serializes this TextLink to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextLink &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'TextLink(url: $url)';
  }
}

/// @nodoc
abstract mixin class $TextLinkCopyWith<$Res> {
  factory $TextLinkCopyWith(TextLink value, $Res Function(TextLink) _then) =
      _$TextLinkCopyWithImpl;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$TextLinkCopyWithImpl<$Res> implements $TextLinkCopyWith<$Res> {
  _$TextLinkCopyWithImpl(this._self, this._then);

  final TextLink _self;
  final $Res Function(TextLink) _then;

  /// Create a copy of TextLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [TextLink].
extension TextLinkPatterns on TextLink {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TextLink value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TextLink() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TextLink value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextLink():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TextLink value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextLink() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String url)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TextLink() when $default != null:
        return $default(_that.url);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String url) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextLink():
        return $default(_that.url);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String url)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextLink() when $default != null:
        return $default(_that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TextLink implements TextLink {
  const _TextLink({required this.url});
  factory _TextLink.fromJson(Map<String, dynamic> json) =>
      _$TextLinkFromJson(json);

  @override
  final String url;

  /// Create a copy of TextLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TextLinkCopyWith<_TextLink> get copyWith =>
      __$TextLinkCopyWithImpl<_TextLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TextLinkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TextLink &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'TextLink(url: $url)';
  }
}

/// @nodoc
abstract mixin class _$TextLinkCopyWith<$Res>
    implements $TextLinkCopyWith<$Res> {
  factory _$TextLinkCopyWith(_TextLink value, $Res Function(_TextLink) _then) =
      __$TextLinkCopyWithImpl;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$TextLinkCopyWithImpl<$Res> implements _$TextLinkCopyWith<$Res> {
  __$TextLinkCopyWithImpl(this._self, this._then);

  final _TextLink _self;
  final $Res Function(_TextLink) _then;

  /// Create a copy of TextLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
  }) {
    return _then(_TextLink(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$EquationContent {
  String get expression;

  /// Create a copy of EquationContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EquationContentCopyWith<EquationContent> get copyWith =>
      _$EquationContentCopyWithImpl<EquationContent>(
          this as EquationContent, _$identity);

  /// Serializes this EquationContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EquationContent &&
            (identical(other.expression, expression) ||
                other.expression == expression));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expression);

  @override
  String toString() {
    return 'EquationContent(expression: $expression)';
  }
}

/// @nodoc
abstract mixin class $EquationContentCopyWith<$Res> {
  factory $EquationContentCopyWith(
          EquationContent value, $Res Function(EquationContent) _then) =
      _$EquationContentCopyWithImpl;
  @useResult
  $Res call({String expression});
}

/// @nodoc
class _$EquationContentCopyWithImpl<$Res>
    implements $EquationContentCopyWith<$Res> {
  _$EquationContentCopyWithImpl(this._self, this._then);

  final EquationContent _self;
  final $Res Function(EquationContent) _then;

  /// Create a copy of EquationContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expression = null,
  }) {
    return _then(_self.copyWith(
      expression: null == expression
          ? _self.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [EquationContent].
extension EquationContentPatterns on EquationContent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EquationContent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EquationContent() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EquationContent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EquationContent():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EquationContent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EquationContent() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String expression)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EquationContent() when $default != null:
        return $default(_that.expression);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String expression) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EquationContent():
        return $default(_that.expression);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String expression)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EquationContent() when $default != null:
        return $default(_that.expression);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EquationContent implements EquationContent {
  const _EquationContent({required this.expression});
  factory _EquationContent.fromJson(Map<String, dynamic> json) =>
      _$EquationContentFromJson(json);

  @override
  final String expression;

  /// Create a copy of EquationContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EquationContentCopyWith<_EquationContent> get copyWith =>
      __$EquationContentCopyWithImpl<_EquationContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EquationContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EquationContent &&
            (identical(other.expression, expression) ||
                other.expression == expression));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expression);

  @override
  String toString() {
    return 'EquationContent(expression: $expression)';
  }
}

/// @nodoc
abstract mixin class _$EquationContentCopyWith<$Res>
    implements $EquationContentCopyWith<$Res> {
  factory _$EquationContentCopyWith(
          _EquationContent value, $Res Function(_EquationContent) _then) =
      __$EquationContentCopyWithImpl;
  @override
  @useResult
  $Res call({String expression});
}

/// @nodoc
class __$EquationContentCopyWithImpl<$Res>
    implements _$EquationContentCopyWith<$Res> {
  __$EquationContentCopyWithImpl(this._self, this._then);

  final _EquationContent _self;
  final $Res Function(_EquationContent) _then;

  /// Create a copy of EquationContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? expression = null,
  }) {
    return _then(_EquationContent(
      expression: null == expression
          ? _self.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$MentionContent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MentionContent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MentionContent()';
  }
}

/// @nodoc
class $MentionContentCopyWith<$Res> {
  $MentionContentCopyWith(MentionContent _, $Res Function(MentionContent) __);
}

/// Adds pattern-matching-related methods to [MentionContent].
extension MentionContentPatterns on MentionContent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case DatabaseMention() when database != null:
        return database(_that);
      case DateMention() when date != null:
        return date(_that);
      case LinkPreviewMention() when linkPreview != null:
        return linkPreview(_that);
      case PageMention() when page != null:
        return page(_that);
      case TemplateMentionDate() when templateMentionDate != null:
        return templateMentionDate(_that);
      case TemplateMentionUser() when templateMentionUser != null:
        return templateMentionUser(_that);
      case UserMention() when user != null:
        return user(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case DatabaseMention():
        return database(_that);
      case DateMention():
        return date(_that);
      case LinkPreviewMention():
        return linkPreview(_that);
      case PageMention():
        return page(_that);
      case TemplateMentionDate():
        return templateMentionDate(_that);
      case TemplateMentionUser():
        return templateMentionUser(_that);
      case UserMention():
        return user(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case DatabaseMention() when database != null:
        return database(_that);
      case DateMention() when date != null:
        return date(_that);
      case LinkPreviewMention() when linkPreview != null:
        return linkPreview(_that);
      case PageMention() when page != null:
        return page(_that);
      case TemplateMentionDate() when templateMentionDate != null:
        return templateMentionDate(_that);
      case TemplateMentionUser() when templateMentionUser != null:
        return templateMentionUser(_that);
      case UserMention() when user != null:
        return user(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case DatabaseMention() when database != null:
        return database(_that.id);
      case DateMention() when date != null:
        return date(_that.start, _that.end);
      case LinkPreviewMention() when linkPreview != null:
        return linkPreview(_that.url);
      case PageMention() when page != null:
        return page(_that.id);
      case TemplateMentionDate() when templateMentionDate != null:
        return templateMentionDate(_that.value);
      case TemplateMentionUser() when templateMentionUser != null:
        return templateMentionUser(_that.value);
      case UserMention() when user != null:
        return user(_that.id);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case DatabaseMention():
        return database(_that.id);
      case DateMention():
        return date(_that.start, _that.end);
      case LinkPreviewMention():
        return linkPreview(_that.url);
      case PageMention():
        return page(_that.id);
      case TemplateMentionDate():
        return templateMentionDate(_that.value);
      case TemplateMentionUser():
        return templateMentionUser(_that.value);
      case UserMention():
        return user(_that.id);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case DatabaseMention() when database != null:
        return database(_that.id);
      case DateMention() when date != null:
        return date(_that.start, _that.end);
      case LinkPreviewMention() when linkPreview != null:
        return linkPreview(_that.url);
      case PageMention() when page != null:
        return page(_that.id);
      case TemplateMentionDate() when templateMentionDate != null:
        return templateMentionDate(_that.value);
      case TemplateMentionUser() when templateMentionUser != null:
        return templateMentionUser(_that.value);
      case UserMention() when user != null:
        return user(_that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc

class DatabaseMention extends MentionContent {
  const DatabaseMention({required this.id}) : super._();

  final String id;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DatabaseMentionCopyWith<DatabaseMention> get copyWith =>
      _$DatabaseMentionCopyWithImpl<DatabaseMention>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DatabaseMention &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'MentionContent.database(id: $id)';
  }
}

/// @nodoc
abstract mixin class $DatabaseMentionCopyWith<$Res>
    implements $MentionContentCopyWith<$Res> {
  factory $DatabaseMentionCopyWith(
          DatabaseMention value, $Res Function(DatabaseMention) _then) =
      _$DatabaseMentionCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$DatabaseMentionCopyWithImpl<$Res>
    implements $DatabaseMentionCopyWith<$Res> {
  _$DatabaseMentionCopyWithImpl(this._self, this._then);

  final DatabaseMention _self;
  final $Res Function(DatabaseMention) _then;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(DatabaseMention(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DateMention extends MentionContent {
  const DateMention({required this.start, this.end}) : super._();

  final DateTime start;
  final DateTime? end;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateMentionCopyWith<DateMention> get copyWith =>
      _$DateMentionCopyWithImpl<DateMention>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateMention &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @override
  String toString() {
    return 'MentionContent.date(start: $start, end: $end)';
  }
}

/// @nodoc
abstract mixin class $DateMentionCopyWith<$Res>
    implements $MentionContentCopyWith<$Res> {
  factory $DateMentionCopyWith(
          DateMention value, $Res Function(DateMention) _then) =
      _$DateMentionCopyWithImpl;
  @useResult
  $Res call({DateTime start, DateTime? end});
}

/// @nodoc
class _$DateMentionCopyWithImpl<$Res> implements $DateMentionCopyWith<$Res> {
  _$DateMentionCopyWithImpl(this._self, this._then);

  final DateMention _self;
  final $Res Function(DateMention) _then;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? start = null,
    Object? end = freezed,
  }) {
    return _then(DateMention(
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class LinkPreviewMention extends MentionContent {
  const LinkPreviewMention({required this.url}) : super._();

  final String url;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LinkPreviewMentionCopyWith<LinkPreviewMention> get copyWith =>
      _$LinkPreviewMentionCopyWithImpl<LinkPreviewMention>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LinkPreviewMention &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'MentionContent.linkPreview(url: $url)';
  }
}

/// @nodoc
abstract mixin class $LinkPreviewMentionCopyWith<$Res>
    implements $MentionContentCopyWith<$Res> {
  factory $LinkPreviewMentionCopyWith(
          LinkPreviewMention value, $Res Function(LinkPreviewMention) _then) =
      _$LinkPreviewMentionCopyWithImpl;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$LinkPreviewMentionCopyWithImpl<$Res>
    implements $LinkPreviewMentionCopyWith<$Res> {
  _$LinkPreviewMentionCopyWithImpl(this._self, this._then);

  final LinkPreviewMention _self;
  final $Res Function(LinkPreviewMention) _then;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
  }) {
    return _then(LinkPreviewMention(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class PageMention extends MentionContent {
  const PageMention({required this.id}) : super._();

  final String id;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageMentionCopyWith<PageMention> get copyWith =>
      _$PageMentionCopyWithImpl<PageMention>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageMention &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'MentionContent.page(id: $id)';
  }
}

/// @nodoc
abstract mixin class $PageMentionCopyWith<$Res>
    implements $MentionContentCopyWith<$Res> {
  factory $PageMentionCopyWith(
          PageMention value, $Res Function(PageMention) _then) =
      _$PageMentionCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$PageMentionCopyWithImpl<$Res> implements $PageMentionCopyWith<$Res> {
  _$PageMentionCopyWithImpl(this._self, this._then);

  final PageMention _self;
  final $Res Function(PageMention) _then;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(PageMention(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class TemplateMentionDate extends MentionContent {
  const TemplateMentionDate({required this.value}) : super._();

  final String value;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemplateMentionDateCopyWith<TemplateMentionDate> get copyWith =>
      _$TemplateMentionDateCopyWithImpl<TemplateMentionDate>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemplateMentionDate &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'MentionContent.templateMentionDate(value: $value)';
  }
}

/// @nodoc
abstract mixin class $TemplateMentionDateCopyWith<$Res>
    implements $MentionContentCopyWith<$Res> {
  factory $TemplateMentionDateCopyWith(
          TemplateMentionDate value, $Res Function(TemplateMentionDate) _then) =
      _$TemplateMentionDateCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$TemplateMentionDateCopyWithImpl<$Res>
    implements $TemplateMentionDateCopyWith<$Res> {
  _$TemplateMentionDateCopyWithImpl(this._self, this._then);

  final TemplateMentionDate _self;
  final $Res Function(TemplateMentionDate) _then;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(TemplateMentionDate(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class TemplateMentionUser extends MentionContent {
  const TemplateMentionUser({required this.value}) : super._();

  final String value;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemplateMentionUserCopyWith<TemplateMentionUser> get copyWith =>
      _$TemplateMentionUserCopyWithImpl<TemplateMentionUser>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemplateMentionUser &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'MentionContent.templateMentionUser(value: $value)';
  }
}

/// @nodoc
abstract mixin class $TemplateMentionUserCopyWith<$Res>
    implements $MentionContentCopyWith<$Res> {
  factory $TemplateMentionUserCopyWith(
          TemplateMentionUser value, $Res Function(TemplateMentionUser) _then) =
      _$TemplateMentionUserCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$TemplateMentionUserCopyWithImpl<$Res>
    implements $TemplateMentionUserCopyWith<$Res> {
  _$TemplateMentionUserCopyWithImpl(this._self, this._then);

  final TemplateMentionUser _self;
  final $Res Function(TemplateMentionUser) _then;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(TemplateMentionUser(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserMention extends MentionContent {
  const UserMention({required this.id}) : super._();

  final String id;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserMentionCopyWith<UserMention> get copyWith =>
      _$UserMentionCopyWithImpl<UserMention>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserMention &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'MentionContent.user(id: $id)';
  }
}

/// @nodoc
abstract mixin class $UserMentionCopyWith<$Res>
    implements $MentionContentCopyWith<$Res> {
  factory $UserMentionCopyWith(
          UserMention value, $Res Function(UserMention) _then) =
      _$UserMentionCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$UserMentionCopyWithImpl<$Res> implements $UserMentionCopyWith<$Res> {
  _$UserMentionCopyWithImpl(this._self, this._then);

  final UserMention _self;
  final $Res Function(UserMention) _then;

  /// Create a copy of MentionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(UserMention(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$RichText {
  Annotations get annotations;
  String get plainText;
  String? get href;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RichTextCopyWith<RichText> get copyWith =>
      _$RichTextCopyWithImpl<RichText>(this as RichText, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RichText &&
            (identical(other.annotations, annotations) ||
                other.annotations == annotations) &&
            (identical(other.plainText, plainText) ||
                other.plainText == plainText) &&
            (identical(other.href, href) || other.href == href));
  }

  @override
  int get hashCode => Object.hash(runtimeType, annotations, plainText, href);

  @override
  String toString() {
    return 'RichText(annotations: $annotations, plainText: $plainText, href: $href)';
  }
}

/// @nodoc
abstract mixin class $RichTextCopyWith<$Res> {
  factory $RichTextCopyWith(RichText value, $Res Function(RichText) _then) =
      _$RichTextCopyWithImpl;
  @useResult
  $Res call({Annotations annotations, String plainText, String? href});

  $AnnotationsCopyWith<$Res> get annotations;
}

/// @nodoc
class _$RichTextCopyWithImpl<$Res> implements $RichTextCopyWith<$Res> {
  _$RichTextCopyWithImpl(this._self, this._then);

  final RichText _self;
  final $Res Function(RichText) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? annotations = null,
    Object? plainText = null,
    Object? href = freezed,
  }) {
    return _then(_self.copyWith(
      annotations: null == annotations
          ? _self.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as Annotations,
      plainText: null == plainText
          ? _self.plainText
          : plainText // ignore: cast_nullable_to_non_nullable
              as String,
      href: freezed == href
          ? _self.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnotationsCopyWith<$Res> get annotations {
    return $AnnotationsCopyWith<$Res>(_self.annotations, (value) {
      return _then(_self.copyWith(annotations: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RichText].
extension RichTextPatterns on RichText {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextRichText value)? text,
    TResult Function(MentionRichText value)? mention,
    TResult Function(EquationRichText value)? equation,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TextRichText() when text != null:
        return text(_that);
      case MentionRichText() when mention != null:
        return mention(_that);
      case EquationRichText() when equation != null:
        return equation(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextRichText value) text,
    required TResult Function(MentionRichText value) mention,
    required TResult Function(EquationRichText value) equation,
  }) {
    final _that = this;
    switch (_that) {
      case TextRichText():
        return text(_that);
      case MentionRichText():
        return mention(_that);
      case EquationRichText():
        return equation(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextRichText value)? text,
    TResult? Function(MentionRichText value)? mention,
    TResult? Function(EquationRichText value)? equation,
  }) {
    final _that = this;
    switch (_that) {
      case TextRichText() when text != null:
        return text(_that);
      case MentionRichText() when mention != null:
        return mention(_that);
      case EquationRichText() when equation != null:
        return equation(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case TextRichText() when text != null:
        return text(_that.text, _that.annotations, _that.plainText, _that.href);
      case MentionRichText() when mention != null:
        return mention(
            _that.mention, _that.annotations, _that.plainText, _that.href);
      case EquationRichText() when equation != null:
        return equation(
            _that.equation, _that.annotations, _that.plainText, _that.href);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case TextRichText():
        return text(_that.text, _that.annotations, _that.plainText, _that.href);
      case MentionRichText():
        return mention(
            _that.mention, _that.annotations, _that.plainText, _that.href);
      case EquationRichText():
        return equation(
            _that.equation, _that.annotations, _that.plainText, _that.href);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case TextRichText() when text != null:
        return text(_that.text, _that.annotations, _that.plainText, _that.href);
      case MentionRichText() when mention != null:
        return mention(
            _that.mention, _that.annotations, _that.plainText, _that.href);
      case EquationRichText() when equation != null:
        return equation(
            _that.equation, _that.annotations, _that.plainText, _that.href);
      case _:
        return null;
    }
  }
}

/// @nodoc

class TextRichText extends RichText {
  const TextRichText(
      {required this.text,
      required this.annotations,
      required this.plainText,
      this.href})
      : super._();

  final TextContent text;
  @override
  final Annotations annotations;
  @override
  final String plainText;
  @override
  final String? href;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TextRichTextCopyWith<TextRichText> get copyWith =>
      _$TextRichTextCopyWithImpl<TextRichText>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextRichText &&
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

  @override
  String toString() {
    return 'RichText.text(text: $text, annotations: $annotations, plainText: $plainText, href: $href)';
  }
}

/// @nodoc
abstract mixin class $TextRichTextCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $TextRichTextCopyWith(
          TextRichText value, $Res Function(TextRichText) _then) =
      _$TextRichTextCopyWithImpl;
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
class _$TextRichTextCopyWithImpl<$Res> implements $TextRichTextCopyWith<$Res> {
  _$TextRichTextCopyWithImpl(this._self, this._then);

  final TextRichText _self;
  final $Res Function(TextRichText) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? annotations = null,
    Object? plainText = null,
    Object? href = freezed,
  }) {
    return _then(TextRichText(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextContent,
      annotations: null == annotations
          ? _self.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as Annotations,
      plainText: null == plainText
          ? _self.plainText
          : plainText // ignore: cast_nullable_to_non_nullable
              as String,
      href: freezed == href
          ? _self.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextContentCopyWith<$Res> get text {
    return $TextContentCopyWith<$Res>(_self.text, (value) {
      return _then(_self.copyWith(text: value));
    });
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnotationsCopyWith<$Res> get annotations {
    return $AnnotationsCopyWith<$Res>(_self.annotations, (value) {
      return _then(_self.copyWith(annotations: value));
    });
  }
}

/// @nodoc

class MentionRichText extends RichText {
  const MentionRichText(
      {required this.mention,
      required this.annotations,
      required this.plainText,
      this.href})
      : super._();

  final MentionContent mention;
  @override
  final Annotations annotations;
  @override
  final String plainText;
  @override
  final String? href;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MentionRichTextCopyWith<MentionRichText> get copyWith =>
      _$MentionRichTextCopyWithImpl<MentionRichText>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MentionRichText &&
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

  @override
  String toString() {
    return 'RichText.mention(mention: $mention, annotations: $annotations, plainText: $plainText, href: $href)';
  }
}

/// @nodoc
abstract mixin class $MentionRichTextCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $MentionRichTextCopyWith(
          MentionRichText value, $Res Function(MentionRichText) _then) =
      _$MentionRichTextCopyWithImpl;
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
class _$MentionRichTextCopyWithImpl<$Res>
    implements $MentionRichTextCopyWith<$Res> {
  _$MentionRichTextCopyWithImpl(this._self, this._then);

  final MentionRichText _self;
  final $Res Function(MentionRichText) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mention = null,
    Object? annotations = null,
    Object? plainText = null,
    Object? href = freezed,
  }) {
    return _then(MentionRichText(
      mention: null == mention
          ? _self.mention
          : mention // ignore: cast_nullable_to_non_nullable
              as MentionContent,
      annotations: null == annotations
          ? _self.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as Annotations,
      plainText: null == plainText
          ? _self.plainText
          : plainText // ignore: cast_nullable_to_non_nullable
              as String,
      href: freezed == href
          ? _self.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MentionContentCopyWith<$Res> get mention {
    return $MentionContentCopyWith<$Res>(_self.mention, (value) {
      return _then(_self.copyWith(mention: value));
    });
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnotationsCopyWith<$Res> get annotations {
    return $AnnotationsCopyWith<$Res>(_self.annotations, (value) {
      return _then(_self.copyWith(annotations: value));
    });
  }
}

/// @nodoc

class EquationRichText extends RichText {
  const EquationRichText(
      {required this.equation,
      required this.annotations,
      required this.plainText,
      this.href})
      : super._();

  final EquationContent equation;
  @override
  final Annotations annotations;
  @override
  final String plainText;
  @override
  final String? href;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EquationRichTextCopyWith<EquationRichText> get copyWith =>
      _$EquationRichTextCopyWithImpl<EquationRichText>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EquationRichText &&
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

  @override
  String toString() {
    return 'RichText.equation(equation: $equation, annotations: $annotations, plainText: $plainText, href: $href)';
  }
}

/// @nodoc
abstract mixin class $EquationRichTextCopyWith<$Res>
    implements $RichTextCopyWith<$Res> {
  factory $EquationRichTextCopyWith(
          EquationRichText value, $Res Function(EquationRichText) _then) =
      _$EquationRichTextCopyWithImpl;
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
class _$EquationRichTextCopyWithImpl<$Res>
    implements $EquationRichTextCopyWith<$Res> {
  _$EquationRichTextCopyWithImpl(this._self, this._then);

  final EquationRichText _self;
  final $Res Function(EquationRichText) _then;

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? equation = null,
    Object? annotations = null,
    Object? plainText = null,
    Object? href = freezed,
  }) {
    return _then(EquationRichText(
      equation: null == equation
          ? _self.equation
          : equation // ignore: cast_nullable_to_non_nullable
              as EquationContent,
      annotations: null == annotations
          ? _self.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as Annotations,
      plainText: null == plainText
          ? _self.plainText
          : plainText // ignore: cast_nullable_to_non_nullable
              as String,
      href: freezed == href
          ? _self.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EquationContentCopyWith<$Res> get equation {
    return $EquationContentCopyWith<$Res>(_self.equation, (value) {
      return _then(_self.copyWith(equation: value));
    });
  }

  /// Create a copy of RichText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnotationsCopyWith<$Res> get annotations {
    return $AnnotationsCopyWith<$Res>(_self.annotations, (value) {
      return _then(_self.copyWith(annotations: value));
    });
  }
}

// dart format on
