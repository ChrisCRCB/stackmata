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

/// Link books to awards.
abstract class BookAwardSecondary extends _i1.SerializableEntity {
  BookAwardSecondary._({
    this.id,
    required this.awardId,
    this.award,
    required this.bookId,
    this.book,
  });

  factory BookAwardSecondary({
    int? id,
    required int awardId,
    _i2.BookAward? award,
    required int bookId,
    _i2.Book? book,
  }) = _BookAwardSecondaryImpl;

  factory BookAwardSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookAwardSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      awardId:
          serializationManager.deserialize<int>(jsonSerialization['awardId']),
      award: serializationManager
          .deserialize<_i2.BookAward?>(jsonSerialization['award']),
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

  int awardId;

  /// The award given to a book.
  _i2.BookAward? award;

  int bookId;

  /// The book to use.
  _i2.Book? book;

  BookAwardSecondary copyWith({
    int? id,
    int? awardId,
    _i2.BookAward? award,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'awardId': awardId,
      if (award != null) 'award': award?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }
}

class _Undefined {}

class _BookAwardSecondaryImpl extends BookAwardSecondary {
  _BookAwardSecondaryImpl({
    int? id,
    required int awardId,
    _i2.BookAward? award,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          awardId: awardId,
          award: award,
          bookId: bookId,
          book: book,
        );

  @override
  BookAwardSecondary copyWith({
    Object? id = _Undefined,
    int? awardId,
    Object? award = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookAwardSecondary(
      id: id is int? ? id : this.id,
      awardId: awardId ?? this.awardId,
      award: award is _i2.BookAward? ? award : this.award?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}
