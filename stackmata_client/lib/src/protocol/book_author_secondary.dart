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

/// Connect books to authors.
abstract class BookAuthorSecondary extends _i1.SerializableEntity {
  BookAuthorSecondary._({
    this.id,
    required this.bookAuthorId,
    this.bookAuthor,
    required this.bookId,
    this.book,
  });

  factory BookAuthorSecondary({
    int? id,
    required int bookAuthorId,
    _i2.BookAuthor? bookAuthor,
    required int bookId,
    _i2.Book? book,
  }) = _BookAuthorSecondaryImpl;

  factory BookAuthorSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookAuthorSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      bookAuthorId: serializationManager
          .deserialize<int>(jsonSerialization['bookAuthorId']),
      bookAuthor: serializationManager
          .deserialize<_i2.BookAuthor?>(jsonSerialization['bookAuthor']),
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

  int bookAuthorId;

  /// The author to use.
  _i2.BookAuthor? bookAuthor;

  int bookId;

  /// The book to link the [author] to.
  _i2.Book? book;

  BookAuthorSecondary copyWith({
    int? id,
    int? bookAuthorId,
    _i2.BookAuthor? bookAuthor,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'bookAuthorId': bookAuthorId,
      if (bookAuthor != null) 'bookAuthor': bookAuthor?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }
}

class _Undefined {}

class _BookAuthorSecondaryImpl extends BookAuthorSecondary {
  _BookAuthorSecondaryImpl({
    int? id,
    required int bookAuthorId,
    _i2.BookAuthor? bookAuthor,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          bookAuthorId: bookAuthorId,
          bookAuthor: bookAuthor,
          bookId: bookId,
          book: book,
        );

  @override
  BookAuthorSecondary copyWith({
    Object? id = _Undefined,
    int? bookAuthorId,
    Object? bookAuthor = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookAuthorSecondary(
      id: id is int? ? id : this.id,
      bookAuthorId: bookAuthorId ?? this.bookAuthorId,
      bookAuthor: bookAuthor is _i2.BookAuthor?
          ? bookAuthor
          : this.bookAuthor?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}
