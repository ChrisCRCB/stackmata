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

/// Connect books to book series.
abstract class BookSeriesSecondary extends _i1.SerializableEntity {
  BookSeriesSecondary._({
    this.id,
    required this.seriesId,
    this.series,
    required this.bookId,
    this.book,
  });

  factory BookSeriesSecondary({
    int? id,
    required int seriesId,
    _i2.BookSeries? series,
    required int bookId,
    _i2.Book? book,
  }) = _BookSeriesSecondaryImpl;

  factory BookSeriesSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookSeriesSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      seriesId:
          serializationManager.deserialize<int>(jsonSerialization['seriesId']),
      series: serializationManager
          .deserialize<_i2.BookSeries?>(jsonSerialization['series']),
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

  int seriesId;

  /// The series to use.
  _i2.BookSeries? series;

  int bookId;

  /// The book to use.
  _i2.Book? book;

  BookSeriesSecondary copyWith({
    int? id,
    int? seriesId,
    _i2.BookSeries? series,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'seriesId': seriesId,
      if (series != null) 'series': series?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }
}

class _Undefined {}

class _BookSeriesSecondaryImpl extends BookSeriesSecondary {
  _BookSeriesSecondaryImpl({
    int? id,
    required int seriesId,
    _i2.BookSeries? series,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          seriesId: seriesId,
          series: series,
          bookId: bookId,
          book: book,
        );

  @override
  BookSeriesSecondary copyWith({
    Object? id = _Undefined,
    int? seriesId,
    Object? series = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookSeriesSecondary(
      id: id is int? ? id : this.id,
      seriesId: seriesId ?? this.seriesId,
      series: series is _i2.BookSeries? ? series : this.series?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}
