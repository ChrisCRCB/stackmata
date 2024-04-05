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

/// The format of a book.
abstract class BookFormat extends _i1.SerializableEntity {
  BookFormat._({
    this.id,
    required this.code,
    required this.name,
    this.books,
  });

  factory BookFormat({
    int? id,
    required String code,
    required String name,
    List<_i2.BookFormatSecondary>? books,
  }) = _BookFormatImpl;

  factory BookFormat.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookFormat(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      code: serializationManager.deserialize<String>(jsonSerialization['code']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      books: serializationManager.deserialize<List<_i2.BookFormatSecondary>?>(
          jsonSerialization['books']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The ID of this format.
  String code;

  /// The name of this format.
  String name;

  /// The books which have this format.
  List<_i2.BookFormatSecondary>? books;

  BookFormat copyWith({
    int? id,
    String? code,
    String? name,
    List<_i2.BookFormatSecondary>? books,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'code': code,
      'name': name,
      if (books != null) 'books': books?.toJson(valueToJson: (v) => v.toJson()),
    };
  }
}

class _Undefined {}

class _BookFormatImpl extends BookFormat {
  _BookFormatImpl({
    int? id,
    required String code,
    required String name,
    List<_i2.BookFormatSecondary>? books,
  }) : super._(
          id: id,
          code: code,
          name: name,
          books: books,
        );

  @override
  BookFormat copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? books = _Undefined,
  }) {
    return BookFormat(
      id: id is int? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      books:
          books is List<_i2.BookFormatSecondary>? ? books : this.books?.clone(),
    );
  }
}
