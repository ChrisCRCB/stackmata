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

/// The language of a book.
abstract class BookLanguage extends _i1.SerializableEntity {
  BookLanguage._({
    this.id,
    required this.name,
    this.secondaries,
  });

  factory BookLanguage({
    int? id,
    required String name,
    List<_i2.BookLanguageSecondary>? secondaries,
  }) = _BookLanguageImpl;

  factory BookLanguage.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookLanguage(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      secondaries:
          serializationManager.deserialize<List<_i2.BookLanguageSecondary>?>(
              jsonSerialization['secondaries']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The name of this language.
  String name;

  /// The entries linking a language to books.
  List<_i2.BookLanguageSecondary>? secondaries;

  BookLanguage copyWith({
    int? id,
    String? name,
    List<_i2.BookLanguageSecondary>? secondaries,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (secondaries != null)
        'secondaries': secondaries?.toJson(valueToJson: (v) => v.toJson()),
    };
  }
}

class _Undefined {}

class _BookLanguageImpl extends BookLanguage {
  _BookLanguageImpl({
    int? id,
    required String name,
    List<_i2.BookLanguageSecondary>? secondaries,
  }) : super._(
          id: id,
          name: name,
          secondaries: secondaries,
        );

  @override
  BookLanguage copyWith({
    Object? id = _Undefined,
    String? name,
    Object? secondaries = _Undefined,
  }) {
    return BookLanguage(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      secondaries: secondaries is List<_i2.BookLanguageSecondary>?
          ? secondaries
          : this.secondaries?.clone(),
    );
  }
}
