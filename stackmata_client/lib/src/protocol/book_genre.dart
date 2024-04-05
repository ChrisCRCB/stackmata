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

/// The genre of a book.
abstract class BookGenre extends _i1.SerializableEntity {
  BookGenre._({
    this.id,
    required this.name,
    this.books,
  });

  factory BookGenre({
    int? id,
    required String name,
    List<_i2.BookGenreSecondary>? books,
  }) = _BookGenreImpl;

  factory BookGenre.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookGenre(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      books: serializationManager.deserialize<List<_i2.BookGenreSecondary>?>(
          jsonSerialization['books']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The name of this genre.
  String name;

  /// The books with this genre.
  List<_i2.BookGenreSecondary>? books;

  BookGenre copyWith({
    int? id,
    String? name,
    List<_i2.BookGenreSecondary>? books,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (books != null) 'books': books?.toJson(valueToJson: (v) => v.toJson()),
    };
  }
}

class _Undefined {}

class _BookGenreImpl extends BookGenre {
  _BookGenreImpl({
    int? id,
    required String name,
    List<_i2.BookGenreSecondary>? books,
  }) : super._(
          id: id,
          name: name,
          books: books,
        );

  @override
  BookGenre copyWith({
    Object? id = _Undefined,
    String? name,
    Object? books = _Undefined,
  }) {
    return BookGenre(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      books:
          books is List<_i2.BookGenreSecondary>? ? books : this.books?.clone(),
    );
  }
}
