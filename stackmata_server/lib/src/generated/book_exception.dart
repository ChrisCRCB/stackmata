/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

/// An exception relating to a book.
abstract class BookException extends _i1.SerializableEntity
    implements _i1.SerializableException {
  BookException._({
    required this.book,
    required this.message,
  });

  factory BookException({
    required _i2.Book book,
    required String message,
  }) = _BookExceptionImpl;

  factory BookException.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookException(
      book:
          serializationManager.deserialize<_i2.Book>(jsonSerialization['book']),
      message: serializationManager
          .deserialize<String>(jsonSerialization['message']),
    );
  }

  /// The book in question.
  _i2.Book book;

  /// The text of the message.
  String message;

  BookException copyWith({
    _i2.Book? book,
    String? message,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'book': book.toJson(),
      'message': message,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'book': book.allToJson(),
      'message': message,
    };
  }
}

class _BookExceptionImpl extends BookException {
  _BookExceptionImpl({
    required _i2.Book book,
    required String message,
  }) : super._(
          book: book,
          message: message,
        );

  @override
  BookException copyWith({
    _i2.Book? book,
    String? message,
  }) {
    return BookException(
      book: book ?? this.book.copyWith(),
      message: message ?? this.message,
    );
  }
}
