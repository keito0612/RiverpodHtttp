// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  String get title => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  String get publishedDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Book to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {String title,
      List<String> authors,
      String publisher,
      String publishedDate,
      String description});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? authors = null,
    Object? publisher = null,
    Object? publishedDate = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: null == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<String> authors,
      String publisher,
      String publishedDate,
      String description});
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? authors = null,
    Object? publisher = null,
    Object? publishedDate = null,
    Object? description = null,
  }) {
    return _then(_$BookImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: null == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl implements _Book {
  const _$BookImpl(
      {required this.title,
      required final List<String> authors,
      required this.publisher,
      required this.publishedDate,
      required this.description})
      : _authors = authors;

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  final String title;
  final List<String> _authors;
  @override
  List<String> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  final String publisher;
  @override
  final String publishedDate;
  @override
  final String description;

  @override
  String toString() {
    return 'Book(title: $title, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_authors),
      publisher,
      publishedDate,
      description);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {required final String title,
      required final List<String> authors,
      required final String publisher,
      required final String publishedDate,
      required final String description}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  String get title;
  @override
  List<String> get authors;
  @override
  String get publisher;
  @override
  String get publishedDate;
  @override
  String get description;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
