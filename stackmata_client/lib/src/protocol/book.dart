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

/// A book in the database.
abstract class Book extends _i1.SerializableEntity {
  Book._({
    this.id,
    required this.title,
    this.authors,
    required this.clientBookAuthors,
    required this.publisher,
    required this.summary,
    this.language,
    required this.clientLanguages,
    this.series,
    required this.clientSeries,
    this.awards,
    required this.clientAwards,
    this.genres,
    required this.clientGenres,
    required this.source,
    required this.entryDate,
    this.formats,
    required this.clientFormats,
    required this.numberOfCopies,
    this.callNumbers,
  });

  factory Book({
    int? id,
    required String title,
    List<_i2.BookAuthorSecondary>? authors,
    required List<_i2.BookAuthor> clientBookAuthors,
    required String publisher,
    required String summary,
    List<_i2.BookLanguageSecondary>? language,
    required List<_i2.BookLanguage> clientLanguages,
    List<_i2.BookSeriesSecondary>? series,
    required List<_i2.BookSeries> clientSeries,
    List<_i2.BookAwardSecondary>? awards,
    required List<_i2.BookAward> clientAwards,
    List<_i2.BookGenreSecondary>? genres,
    required List<_i2.BookGenre> clientGenres,
    required String source,
    required DateTime entryDate,
    List<_i2.BookFormatSecondary>? formats,
    required List<_i2.BookFormat> clientFormats,
    required int numberOfCopies,
    List<_i2.BookCallNumber>? callNumbers,
  }) = _BookImpl;

  factory Book.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Book(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      authors: serializationManager.deserialize<List<_i2.BookAuthorSecondary>?>(
          jsonSerialization['authors']),
      clientBookAuthors: serializationManager.deserialize<List<_i2.BookAuthor>>(
          jsonSerialization['clientBookAuthors']),
      publisher: serializationManager
          .deserialize<String>(jsonSerialization['publisher']),
      summary: serializationManager
          .deserialize<String>(jsonSerialization['summary']),
      language:
          serializationManager.deserialize<List<_i2.BookLanguageSecondary>?>(
              jsonSerialization['language']),
      clientLanguages: serializationManager.deserialize<List<_i2.BookLanguage>>(
          jsonSerialization['clientLanguages']),
      series: serializationManager.deserialize<List<_i2.BookSeriesSecondary>?>(
          jsonSerialization['series']),
      clientSeries: serializationManager
          .deserialize<List<_i2.BookSeries>>(jsonSerialization['clientSeries']),
      awards: serializationManager.deserialize<List<_i2.BookAwardSecondary>?>(
          jsonSerialization['awards']),
      clientAwards: serializationManager
          .deserialize<List<_i2.BookAward>>(jsonSerialization['clientAwards']),
      genres: serializationManager.deserialize<List<_i2.BookGenreSecondary>?>(
          jsonSerialization['genres']),
      clientGenres: serializationManager
          .deserialize<List<_i2.BookGenre>>(jsonSerialization['clientGenres']),
      source:
          serializationManager.deserialize<String>(jsonSerialization['source']),
      entryDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['entryDate']),
      formats: serializationManager.deserialize<List<_i2.BookFormatSecondary>?>(
          jsonSerialization['formats']),
      clientFormats: serializationManager.deserialize<List<_i2.BookFormat>>(
          jsonSerialization['clientFormats']),
      numberOfCopies: serializationManager
          .deserialize<int>(jsonSerialization['numberOfCopies']),
      callNumbers: serializationManager.deserialize<List<_i2.BookCallNumber>?>(
          jsonSerialization['callNumbers']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The title of this book.
  String title;

  /// The book authors of this book.
  List<_i2.BookAuthorSecondary>? authors;

  /// The authors to be sent by the client.
  List<_i2.BookAuthor> clientBookAuthors;

  /// The publisher of this book.
  String publisher;

  /// The summary of this book.
  String summary;

  /// The languages of this book.
  List<_i2.BookLanguageSecondary>? language;

  /// Languages sent by the client.
  List<_i2.BookLanguage> clientLanguages;

  /// Any series this book is part of.
  List<_i2.BookSeriesSecondary>? series;

  /// The series sent by the client.
  List<_i2.BookSeries> clientSeries;

  /// Any awards this book has won.
  List<_i2.BookAwardSecondary>? awards;

  /// Awards sent by the client.
  List<_i2.BookAward> clientAwards;

  /// The genres of this book.
  List<_i2.BookGenreSecondary>? genres;

  /// Genres sent by the client.
  List<_i2.BookGenre> clientGenres;

  /// Data attribution.
  String source;

  /// The date this book was added to the library.
  DateTime entryDate;

  /// The formats this book is in.
  List<_i2.BookFormatSecondary>? formats;

  /// Formats sent by the client.
  List<_i2.BookFormat> clientFormats;

  /// The number of copies we have for borrowing.
  int numberOfCopies;

  /// The call numbers.
  List<_i2.BookCallNumber>? callNumbers;

  Book copyWith({
    int? id,
    String? title,
    List<_i2.BookAuthorSecondary>? authors,
    List<_i2.BookAuthor>? clientBookAuthors,
    String? publisher,
    String? summary,
    List<_i2.BookLanguageSecondary>? language,
    List<_i2.BookLanguage>? clientLanguages,
    List<_i2.BookSeriesSecondary>? series,
    List<_i2.BookSeries>? clientSeries,
    List<_i2.BookAwardSecondary>? awards,
    List<_i2.BookAward>? clientAwards,
    List<_i2.BookGenreSecondary>? genres,
    List<_i2.BookGenre>? clientGenres,
    String? source,
    DateTime? entryDate,
    List<_i2.BookFormatSecondary>? formats,
    List<_i2.BookFormat>? clientFormats,
    int? numberOfCopies,
    List<_i2.BookCallNumber>? callNumbers,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      if (authors != null)
        'authors': authors?.toJson(valueToJson: (v) => v.toJson()),
      'clientBookAuthors':
          clientBookAuthors.toJson(valueToJson: (v) => v.toJson()),
      'publisher': publisher,
      'summary': summary,
      if (language != null)
        'language': language?.toJson(valueToJson: (v) => v.toJson()),
      'clientLanguages': clientLanguages.toJson(valueToJson: (v) => v.toJson()),
      if (series != null)
        'series': series?.toJson(valueToJson: (v) => v.toJson()),
      'clientSeries': clientSeries.toJson(valueToJson: (v) => v.toJson()),
      if (awards != null)
        'awards': awards?.toJson(valueToJson: (v) => v.toJson()),
      'clientAwards': clientAwards.toJson(valueToJson: (v) => v.toJson()),
      if (genres != null)
        'genres': genres?.toJson(valueToJson: (v) => v.toJson()),
      'clientGenres': clientGenres.toJson(valueToJson: (v) => v.toJson()),
      'source': source,
      'entryDate': entryDate.toJson(),
      if (formats != null)
        'formats': formats?.toJson(valueToJson: (v) => v.toJson()),
      'clientFormats': clientFormats.toJson(valueToJson: (v) => v.toJson()),
      'numberOfCopies': numberOfCopies,
      if (callNumbers != null)
        'callNumbers': callNumbers?.toJson(valueToJson: (v) => v.toJson()),
    };
  }
}

class _Undefined {}

class _BookImpl extends Book {
  _BookImpl({
    int? id,
    required String title,
    List<_i2.BookAuthorSecondary>? authors,
    required List<_i2.BookAuthor> clientBookAuthors,
    required String publisher,
    required String summary,
    List<_i2.BookLanguageSecondary>? language,
    required List<_i2.BookLanguage> clientLanguages,
    List<_i2.BookSeriesSecondary>? series,
    required List<_i2.BookSeries> clientSeries,
    List<_i2.BookAwardSecondary>? awards,
    required List<_i2.BookAward> clientAwards,
    List<_i2.BookGenreSecondary>? genres,
    required List<_i2.BookGenre> clientGenres,
    required String source,
    required DateTime entryDate,
    List<_i2.BookFormatSecondary>? formats,
    required List<_i2.BookFormat> clientFormats,
    required int numberOfCopies,
    List<_i2.BookCallNumber>? callNumbers,
  }) : super._(
          id: id,
          title: title,
          authors: authors,
          clientBookAuthors: clientBookAuthors,
          publisher: publisher,
          summary: summary,
          language: language,
          clientLanguages: clientLanguages,
          series: series,
          clientSeries: clientSeries,
          awards: awards,
          clientAwards: clientAwards,
          genres: genres,
          clientGenres: clientGenres,
          source: source,
          entryDate: entryDate,
          formats: formats,
          clientFormats: clientFormats,
          numberOfCopies: numberOfCopies,
          callNumbers: callNumbers,
        );

  @override
  Book copyWith({
    Object? id = _Undefined,
    String? title,
    Object? authors = _Undefined,
    List<_i2.BookAuthor>? clientBookAuthors,
    String? publisher,
    String? summary,
    Object? language = _Undefined,
    List<_i2.BookLanguage>? clientLanguages,
    Object? series = _Undefined,
    List<_i2.BookSeries>? clientSeries,
    Object? awards = _Undefined,
    List<_i2.BookAward>? clientAwards,
    Object? genres = _Undefined,
    List<_i2.BookGenre>? clientGenres,
    String? source,
    DateTime? entryDate,
    Object? formats = _Undefined,
    List<_i2.BookFormat>? clientFormats,
    int? numberOfCopies,
    Object? callNumbers = _Undefined,
  }) {
    return Book(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      authors: authors is List<_i2.BookAuthorSecondary>?
          ? authors
          : this.authors?.clone(),
      clientBookAuthors: clientBookAuthors ?? this.clientBookAuthors.clone(),
      publisher: publisher ?? this.publisher,
      summary: summary ?? this.summary,
      language: language is List<_i2.BookLanguageSecondary>?
          ? language
          : this.language?.clone(),
      clientLanguages: clientLanguages ?? this.clientLanguages.clone(),
      series: series is List<_i2.BookSeriesSecondary>?
          ? series
          : this.series?.clone(),
      clientSeries: clientSeries ?? this.clientSeries.clone(),
      awards: awards is List<_i2.BookAwardSecondary>?
          ? awards
          : this.awards?.clone(),
      clientAwards: clientAwards ?? this.clientAwards.clone(),
      genres: genres is List<_i2.BookGenreSecondary>?
          ? genres
          : this.genres?.clone(),
      clientGenres: clientGenres ?? this.clientGenres.clone(),
      source: source ?? this.source,
      entryDate: entryDate ?? this.entryDate,
      formats: formats is List<_i2.BookFormatSecondary>?
          ? formats
          : this.formats?.clone(),
      clientFormats: clientFormats ?? this.clientFormats.clone(),
      numberOfCopies: numberOfCopies ?? this.numberOfCopies,
      callNumbers: callNumbers is List<_i2.BookCallNumber>?
          ? callNumbers
          : this.callNumbers?.clone(),
    );
  }
}
