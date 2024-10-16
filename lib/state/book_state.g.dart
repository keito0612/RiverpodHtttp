// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookStateImpl _$$BookStateImplFromJson(Map<String, dynamic> json) =>
    _$BookStateImpl(
      books: (json['books'] as List<dynamic>?)
          ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookStateImplToJson(_$BookStateImpl instance) =>
    <String, dynamic>{
      'books': instance.books,
    };
