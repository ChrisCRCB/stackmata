/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'book.dart' as _i2;
import 'book_author.dart' as _i3;
import 'book_author_secondary.dart' as _i4;
import 'book_award.dart' as _i5;
import 'book_award_secondary.dart' as _i6;
import 'book_call_number.dart' as _i7;
import 'book_format.dart' as _i8;
import 'book_format_secondary.dart' as _i9;
import 'book_genre.dart' as _i10;
import 'book_genre_secondary.dart' as _i11;
import 'book_language.dart' as _i12;
import 'book_language_secondary.dart' as _i13;
import 'book_series.dart' as _i14;
import 'book_series_secondary.dart' as _i15;
import 'protocol.dart' as _i16;
export 'book.dart';
export 'book_author.dart';
export 'book_author_secondary.dart';
export 'book_award.dart';
export 'book_award_secondary.dart';
export 'book_call_number.dart';
export 'book_format.dart';
export 'book_format_secondary.dart';
export 'book_genre.dart';
export 'book_genre_secondary.dart';
export 'book_language.dart';
export 'book_language_secondary.dart';
export 'book_series.dart';
export 'book_series_secondary.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Book) {
      return _i2.Book.fromJson(data, this) as T;
    }
    if (t == _i3.BookAuthor) {
      return _i3.BookAuthor.fromJson(data, this) as T;
    }
    if (t == _i4.BookAuthorSecondary) {
      return _i4.BookAuthorSecondary.fromJson(data, this) as T;
    }
    if (t == _i5.BookAward) {
      return _i5.BookAward.fromJson(data, this) as T;
    }
    if (t == _i6.BookAwardSecondary) {
      return _i6.BookAwardSecondary.fromJson(data, this) as T;
    }
    if (t == _i7.BookCallNumber) {
      return _i7.BookCallNumber.fromJson(data, this) as T;
    }
    if (t == _i8.BookFormat) {
      return _i8.BookFormat.fromJson(data, this) as T;
    }
    if (t == _i9.BookFormatSecondary) {
      return _i9.BookFormatSecondary.fromJson(data, this) as T;
    }
    if (t == _i10.BookGenre) {
      return _i10.BookGenre.fromJson(data, this) as T;
    }
    if (t == _i11.BookGenreSecondary) {
      return _i11.BookGenreSecondary.fromJson(data, this) as T;
    }
    if (t == _i12.BookLanguage) {
      return _i12.BookLanguage.fromJson(data, this) as T;
    }
    if (t == _i13.BookLanguageSecondary) {
      return _i13.BookLanguageSecondary.fromJson(data, this) as T;
    }
    if (t == _i14.BookSeries) {
      return _i14.BookSeries.fromJson(data, this) as T;
    }
    if (t == _i15.BookSeriesSecondary) {
      return _i15.BookSeriesSecondary.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Book?>()) {
      return (data != null ? _i2.Book.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.BookAuthor?>()) {
      return (data != null ? _i3.BookAuthor.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.BookAuthorSecondary?>()) {
      return (data != null
          ? _i4.BookAuthorSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i5.BookAward?>()) {
      return (data != null ? _i5.BookAward.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.BookAwardSecondary?>()) {
      return (data != null ? _i6.BookAwardSecondary.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i7.BookCallNumber?>()) {
      return (data != null ? _i7.BookCallNumber.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.BookFormat?>()) {
      return (data != null ? _i8.BookFormat.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.BookFormatSecondary?>()) {
      return (data != null
          ? _i9.BookFormatSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i10.BookGenre?>()) {
      return (data != null ? _i10.BookGenre.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.BookGenreSecondary?>()) {
      return (data != null
          ? _i11.BookGenreSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i12.BookLanguage?>()) {
      return (data != null ? _i12.BookLanguage.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.BookLanguageSecondary?>()) {
      return (data != null
          ? _i13.BookLanguageSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i14.BookSeries?>()) {
      return (data != null ? _i14.BookSeries.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i15.BookSeriesSecondary?>()) {
      return (data != null
          ? _i15.BookSeriesSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<List<_i16.BookAuthorSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookAuthorSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookLanguageSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookLanguageSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookSeriesSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookSeriesSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookAwardSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookAwardSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookGenreSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookGenreSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookFormatSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookFormatSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookCallNumber>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookCallNumber>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookAuthorSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookAuthorSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookAwardSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookAwardSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookFormatSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookFormatSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookGenreSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookGenreSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookLanguageSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookLanguageSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.BookSeriesSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i16.BookSeriesSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Book) {
      return 'Book';
    }
    if (data is _i3.BookAuthor) {
      return 'BookAuthor';
    }
    if (data is _i4.BookAuthorSecondary) {
      return 'BookAuthorSecondary';
    }
    if (data is _i5.BookAward) {
      return 'BookAward';
    }
    if (data is _i6.BookAwardSecondary) {
      return 'BookAwardSecondary';
    }
    if (data is _i7.BookCallNumber) {
      return 'BookCallNumber';
    }
    if (data is _i8.BookFormat) {
      return 'BookFormat';
    }
    if (data is _i9.BookFormatSecondary) {
      return 'BookFormatSecondary';
    }
    if (data is _i10.BookGenre) {
      return 'BookGenre';
    }
    if (data is _i11.BookGenreSecondary) {
      return 'BookGenreSecondary';
    }
    if (data is _i12.BookLanguage) {
      return 'BookLanguage';
    }
    if (data is _i13.BookLanguageSecondary) {
      return 'BookLanguageSecondary';
    }
    if (data is _i14.BookSeries) {
      return 'BookSeries';
    }
    if (data is _i15.BookSeriesSecondary) {
      return 'BookSeriesSecondary';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Book') {
      return deserialize<_i2.Book>(data['data']);
    }
    if (data['className'] == 'BookAuthor') {
      return deserialize<_i3.BookAuthor>(data['data']);
    }
    if (data['className'] == 'BookAuthorSecondary') {
      return deserialize<_i4.BookAuthorSecondary>(data['data']);
    }
    if (data['className'] == 'BookAward') {
      return deserialize<_i5.BookAward>(data['data']);
    }
    if (data['className'] == 'BookAwardSecondary') {
      return deserialize<_i6.BookAwardSecondary>(data['data']);
    }
    if (data['className'] == 'BookCallNumber') {
      return deserialize<_i7.BookCallNumber>(data['data']);
    }
    if (data['className'] == 'BookFormat') {
      return deserialize<_i8.BookFormat>(data['data']);
    }
    if (data['className'] == 'BookFormatSecondary') {
      return deserialize<_i9.BookFormatSecondary>(data['data']);
    }
    if (data['className'] == 'BookGenre') {
      return deserialize<_i10.BookGenre>(data['data']);
    }
    if (data['className'] == 'BookGenreSecondary') {
      return deserialize<_i11.BookGenreSecondary>(data['data']);
    }
    if (data['className'] == 'BookLanguage') {
      return deserialize<_i12.BookLanguage>(data['data']);
    }
    if (data['className'] == 'BookLanguageSecondary') {
      return deserialize<_i13.BookLanguageSecondary>(data['data']);
    }
    if (data['className'] == 'BookSeries') {
      return deserialize<_i14.BookSeries>(data['data']);
    }
    if (data['className'] == 'BookSeriesSecondary') {
      return deserialize<_i15.BookSeriesSecondary>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
