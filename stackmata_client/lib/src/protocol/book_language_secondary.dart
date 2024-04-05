/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

/// Link books to languages.
abstract class BookLanguageSecondary extends _i1.SerializableEntity {
  BookLanguageSecondary._({
    this.id,
    required this.bookLanguageId,
    this.bookLanguage,
    required this.bookId,
    this.book,
  });

  factory BookLanguageSecondary({
    int? id,
    required int bookLanguageId,
    _i2.BookLanguage? bookLanguage,
    required int bookId,
    _i2.Book? book,
  }) = _BookLanguageSecondaryImpl;

  factory BookLanguageSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookLanguageSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      bookLanguageId: serializationManager
          .deserialize<int>(jsonSerialization['bookLanguageId']),
      bookLanguage: serializationManager
          .deserialize<_i2.BookLanguage?>(jsonSerialization['bookLanguage']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i2.Book?>(jsonSerialization['book']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int bookLanguageId;

  /// The language to use.
  _i2.BookLanguage? bookLanguage;

  int bookId;

  /// The book to use.
  _i2.Book? book;

  BookLanguageSecondary copyWith({
    int? id,
    int? bookLanguageId,
    _i2.BookLanguage? bookLanguage,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'bookLanguageId': bookLanguageId,
      if (bookLanguage != null) 'bookLanguage': bookLanguage?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }
}

class _Undefined {}

class _BookLanguageSecondaryImpl extends BookLanguageSecondary {
  _BookLanguageSecondaryImpl({
    int? id,
    required int bookLanguageId,
    _i2.BookLanguage? bookLanguage,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          bookLanguageId: bookLanguageId,
          bookLanguage: bookLanguage,
          bookId: bookId,
          book: book,
        );

  @override
  BookLanguageSecondary copyWith({
    Object? id = _Undefined,
    int? bookLanguageId,
    Object? bookLanguage = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookLanguageSecondary(
      id: id is int? ? id : this.id,
      bookLanguageId: bookLanguageId ?? this.bookLanguageId,
      bookLanguage: bookLanguage is _i2.BookLanguage?
          ? bookLanguage
          : this.bookLanguage?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}
