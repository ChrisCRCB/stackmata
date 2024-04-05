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

/// Link books to formats.
abstract class BookFormatSecondary extends _i1.SerializableEntity {
  BookFormatSecondary._({
    this.id,
    required this.bookFormatId,
    this.bookFormat,
    required this.bookId,
    this.book,
  });

  factory BookFormatSecondary({
    int? id,
    required int bookFormatId,
    _i2.BookFormat? bookFormat,
    required int bookId,
    _i2.Book? book,
  }) = _BookFormatSecondaryImpl;

  factory BookFormatSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookFormatSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      bookFormatId: serializationManager
          .deserialize<int>(jsonSerialization['bookFormatId']),
      bookFormat: serializationManager
          .deserialize<_i2.BookFormat?>(jsonSerialization['bookFormat']),
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

  int bookFormatId;

  /// The format of the book.
  _i2.BookFormat? bookFormat;

  int bookId;

  /// The book to use.
  _i2.Book? book;

  BookFormatSecondary copyWith({
    int? id,
    int? bookFormatId,
    _i2.BookFormat? bookFormat,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'bookFormatId': bookFormatId,
      if (bookFormat != null) 'bookFormat': bookFormat?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }
}

class _Undefined {}

class _BookFormatSecondaryImpl extends BookFormatSecondary {
  _BookFormatSecondaryImpl({
    int? id,
    required int bookFormatId,
    _i2.BookFormat? bookFormat,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          bookFormatId: bookFormatId,
          bookFormat: bookFormat,
          bookId: bookId,
          book: book,
        );

  @override
  BookFormatSecondary copyWith({
    Object? id = _Undefined,
    int? bookFormatId,
    Object? bookFormat = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookFormatSecondary(
      id: id is int? ? id : this.id,
      bookFormatId: bookFormatId ?? this.bookFormatId,
      bookFormat: bookFormat is _i2.BookFormat?
          ? bookFormat
          : this.bookFormat?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}
