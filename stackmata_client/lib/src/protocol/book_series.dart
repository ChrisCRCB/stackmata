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

/// A series of books.
abstract class BookSeries extends _i1.SerializableEntity {
  BookSeries._({
    this.id,
    required this.name,
    this.booksSecondary,
  });

  factory BookSeries({
    int? id,
    required String name,
    List<_i2.BookSeriesSecondary>? booksSecondary,
  }) = _BookSeriesImpl;

  factory BookSeries.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookSeries(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      booksSecondary:
          serializationManager.deserialize<List<_i2.BookSeriesSecondary>?>(
              jsonSerialization['booksSecondary']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The name of this series.
  String name;

  /// The books in this series.
  List<_i2.BookSeriesSecondary>? booksSecondary;

  BookSeries copyWith({
    int? id,
    String? name,
    List<_i2.BookSeriesSecondary>? booksSecondary,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (booksSecondary != null)
        'booksSecondary':
            booksSecondary?.toJson(valueToJson: (v) => v.toJson()),
    };
  }
}

class _Undefined {}

class _BookSeriesImpl extends BookSeries {
  _BookSeriesImpl({
    int? id,
    required String name,
    List<_i2.BookSeriesSecondary>? booksSecondary,
  }) : super._(
          id: id,
          name: name,
          booksSecondary: booksSecondary,
        );

  @override
  BookSeries copyWith({
    Object? id = _Undefined,
    String? name,
    Object? booksSecondary = _Undefined,
  }) {
    return BookSeries(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      booksSecondary: booksSecondary is List<_i2.BookSeriesSecondary>?
          ? booksSecondary
          : this.booksSecondary?.clone(),
    );
  }
}
