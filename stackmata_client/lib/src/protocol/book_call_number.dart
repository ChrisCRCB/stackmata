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

/// A call number for a book.
///
/// Call numbers are unique to each book.
abstract class BookCallNumber extends _i1.SerializableEntity {
  BookCallNumber._({
    this.id,
    required this.callNumber,
    required this.bookId,
    this.book,
  });

  factory BookCallNumber({
    int? id,
    required String callNumber,
    required int bookId,
    _i2.Book? book,
  }) = _BookCallNumberImpl;

  factory BookCallNumber.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookCallNumber(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      callNumber: serializationManager
          .deserialize<String>(jsonSerialization['callNumber']),
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

  /// The call number of the book.
  String callNumber;

  int bookId;

  /// The book this call number is associated with.
  _i2.Book? book;

  BookCallNumber copyWith({
    int? id,
    String? callNumber,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'callNumber': callNumber,
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }
}

class _Undefined {}

class _BookCallNumberImpl extends BookCallNumber {
  _BookCallNumberImpl({
    int? id,
    required String callNumber,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          callNumber: callNumber,
          bookId: bookId,
          book: book,
        );

  @override
  BookCallNumber copyWith({
    Object? id = _Undefined,
    String? callNumber,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookCallNumber(
      id: id is int? ? id : this.id,
      callNumber: callNumber ?? this.callNumber,
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}
