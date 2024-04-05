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

/// The author of a book.
abstract class BookAuthor extends _i1.SerializableEntity {
  BookAuthor._({
    this.id,
    required this.lastFirst,
    required this.firstLast,
    required this.role,
    this.bookAuthors,
  });

  factory BookAuthor({
    int? id,
    required String lastFirst,
    required String firstLast,
    required String role,
    List<_i2.BookAuthorSecondary>? bookAuthors,
  }) = _BookAuthorImpl;

  factory BookAuthor.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookAuthor(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      lastFirst: serializationManager
          .deserialize<String>(jsonSerialization['lastFirst']),
      firstLast: serializationManager
          .deserialize<String>(jsonSerialization['firstLast']),
      role: serializationManager.deserialize<String>(jsonSerialization['role']),
      bookAuthors:
          serializationManager.deserialize<List<_i2.BookAuthorSecondary>?>(
              jsonSerialization['bookAuthors']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The name of the author as Last, First.
  String lastFirst;

  /// The name of the author as First, Last.
  String firstLast;

  /// The role of this person.
  String role;

  /// The books this author is involved in.
  List<_i2.BookAuthorSecondary>? bookAuthors;

  BookAuthor copyWith({
    int? id,
    String? lastFirst,
    String? firstLast,
    String? role,
    List<_i2.BookAuthorSecondary>? bookAuthors,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'lastFirst': lastFirst,
      'firstLast': firstLast,
      'role': role,
      if (bookAuthors != null)
        'bookAuthors': bookAuthors?.toJson(valueToJson: (v) => v.toJson()),
    };
  }
}

class _Undefined {}

class _BookAuthorImpl extends BookAuthor {
  _BookAuthorImpl({
    int? id,
    required String lastFirst,
    required String firstLast,
    required String role,
    List<_i2.BookAuthorSecondary>? bookAuthors,
  }) : super._(
          id: id,
          lastFirst: lastFirst,
          firstLast: firstLast,
          role: role,
          bookAuthors: bookAuthors,
        );

  @override
  BookAuthor copyWith({
    Object? id = _Undefined,
    String? lastFirst,
    String? firstLast,
    String? role,
    Object? bookAuthors = _Undefined,
  }) {
    return BookAuthor(
      id: id is int? ? id : this.id,
      lastFirst: lastFirst ?? this.lastFirst,
      firstLast: firstLast ?? this.firstLast,
      role: role ?? this.role,
      bookAuthors: bookAuthors is List<_i2.BookAuthorSecondary>?
          ? bookAuthors
          : this.bookAuthors?.clone(),
    );
  }
}
