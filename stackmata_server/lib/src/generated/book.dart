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
import 'package:serverpod_serialization/serverpod_serialization.dart';

/// A book in the database.
abstract class Book extends _i1.TableRow {
  Book._({
    int? id,
    required this.title,
    this.authors,
    required this.publisher,
    required this.summary,
    this.language,
    this.series,
    this.awards,
    this.genres,
    required this.source,
    required this.entryDate,
    this.formats,
    required this.numberOfCopies,
    this.callNumbers,
  }) : super(id);

  factory Book({
    int? id,
    required String title,
    List<_i2.BookAuthorSecondary>? authors,
    required String publisher,
    required String summary,
    List<_i2.BookLanguageSecondary>? language,
    List<_i2.BookSeriesSecondary>? series,
    List<_i2.BookAwardSecondary>? awards,
    List<_i2.BookGenreSecondary>? genres,
    required String source,
    required DateTime entryDate,
    List<_i2.BookFormatSecondary>? formats,
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
      publisher: serializationManager
          .deserialize<String>(jsonSerialization['publisher']),
      summary: serializationManager
          .deserialize<String>(jsonSerialization['summary']),
      language:
          serializationManager.deserialize<List<_i2.BookLanguageSecondary>?>(
              jsonSerialization['language']),
      series: serializationManager.deserialize<List<_i2.BookSeriesSecondary>?>(
          jsonSerialization['series']),
      awards: serializationManager.deserialize<List<_i2.BookAwardSecondary>?>(
          jsonSerialization['awards']),
      genres: serializationManager.deserialize<List<_i2.BookGenreSecondary>?>(
          jsonSerialization['genres']),
      source:
          serializationManager.deserialize<String>(jsonSerialization['source']),
      entryDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['entryDate']),
      formats: serializationManager.deserialize<List<_i2.BookFormatSecondary>?>(
          jsonSerialization['formats']),
      numberOfCopies: serializationManager
          .deserialize<int>(jsonSerialization['numberOfCopies']),
      callNumbers: serializationManager.deserialize<List<_i2.BookCallNumber>?>(
          jsonSerialization['callNumbers']),
    );
  }

  static final t = BookTable();

  static const db = BookRepository._();

  /// The title of this book.
  String title;

  /// The book authors of this book.
  List<_i2.BookAuthorSecondary>? authors;

  /// The publisher of this book.
  String publisher;

  /// The summary of this book.
  String summary;

  /// The languages of this book.
  List<_i2.BookLanguageSecondary>? language;

  /// Any series this book is part of.
  List<_i2.BookSeriesSecondary>? series;

  /// Any awards this book has won.
  List<_i2.BookAwardSecondary>? awards;

  /// The genres of this book.
  List<_i2.BookGenreSecondary>? genres;

  /// Data attribution.
  String source;

  /// The date this book was added to the library.
  DateTime entryDate;

  /// The formats this book is in.
  List<_i2.BookFormatSecondary>? formats;

  /// The number of copies we have for borrowing.
  int numberOfCopies;

  /// The call numbers.
  List<_i2.BookCallNumber>? callNumbers;

  @override
  _i1.Table get table => t;

  Book copyWith({
    int? id,
    String? title,
    List<_i2.BookAuthorSecondary>? authors,
    String? publisher,
    String? summary,
    List<_i2.BookLanguageSecondary>? language,
    List<_i2.BookSeriesSecondary>? series,
    List<_i2.BookAwardSecondary>? awards,
    List<_i2.BookGenreSecondary>? genres,
    String? source,
    DateTime? entryDate,
    List<_i2.BookFormatSecondary>? formats,
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
      'publisher': publisher,
      'summary': summary,
      if (language != null)
        'language': language?.toJson(valueToJson: (v) => v.toJson()),
      if (series != null)
        'series': series?.toJson(valueToJson: (v) => v.toJson()),
      if (awards != null)
        'awards': awards?.toJson(valueToJson: (v) => v.toJson()),
      if (genres != null)
        'genres': genres?.toJson(valueToJson: (v) => v.toJson()),
      'source': source,
      'entryDate': entryDate.toJson(),
      if (formats != null)
        'formats': formats?.toJson(valueToJson: (v) => v.toJson()),
      'numberOfCopies': numberOfCopies,
      if (callNumbers != null)
        'callNumbers': callNumbers?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'publisher': publisher,
      'summary': summary,
      'source': source,
      'entryDate': entryDate,
      'numberOfCopies': numberOfCopies,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      if (authors != null)
        'authors': authors?.toJson(valueToJson: (v) => v.allToJson()),
      'publisher': publisher,
      'summary': summary,
      if (language != null)
        'language': language?.toJson(valueToJson: (v) => v.allToJson()),
      if (series != null)
        'series': series?.toJson(valueToJson: (v) => v.allToJson()),
      if (awards != null)
        'awards': awards?.toJson(valueToJson: (v) => v.allToJson()),
      if (genres != null)
        'genres': genres?.toJson(valueToJson: (v) => v.allToJson()),
      'source': source,
      'entryDate': entryDate.toJson(),
      if (formats != null)
        'formats': formats?.toJson(valueToJson: (v) => v.allToJson()),
      'numberOfCopies': numberOfCopies,
      if (callNumbers != null)
        'callNumbers': callNumbers?.toJson(valueToJson: (v) => v.allToJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'publisher':
        publisher = value;
        return;
      case 'summary':
        summary = value;
        return;
      case 'source':
        source = value;
        return;
      case 'entryDate':
        entryDate = value;
        return;
      case 'numberOfCopies':
        numberOfCopies = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Book>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookInclude? include,
  }) async {
    return session.db.find<Book>(
      where: where != null ? where(Book.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Book?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookInclude? include,
  }) async {
    return session.db.findSingleRow<Book>(
      where: where != null ? where(Book.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Book?> findById(
    _i1.Session session,
    int id, {
    BookInclude? include,
  }) async {
    return session.db.findById<Book>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Book>(
      where: where(Book.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Book>(
      where: where != null ? where(Book.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookInclude include({
    _i2.BookAuthorSecondaryIncludeList? authors,
    _i2.BookLanguageSecondaryIncludeList? language,
    _i2.BookSeriesSecondaryIncludeList? series,
    _i2.BookAwardSecondaryIncludeList? awards,
    _i2.BookGenreSecondaryIncludeList? genres,
    _i2.BookFormatSecondaryIncludeList? formats,
    _i2.BookCallNumberIncludeList? callNumbers,
  }) {
    return BookInclude._(
      authors: authors,
      language: language,
      series: series,
      awards: awards,
      genres: genres,
      formats: formats,
      callNumbers: callNumbers,
    );
  }

  static BookIncludeList includeList({
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookTable>? orderByList,
    BookInclude? include,
  }) {
    return BookIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Book.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Book.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookImpl extends Book {
  _BookImpl({
    int? id,
    required String title,
    List<_i2.BookAuthorSecondary>? authors,
    required String publisher,
    required String summary,
    List<_i2.BookLanguageSecondary>? language,
    List<_i2.BookSeriesSecondary>? series,
    List<_i2.BookAwardSecondary>? awards,
    List<_i2.BookGenreSecondary>? genres,
    required String source,
    required DateTime entryDate,
    List<_i2.BookFormatSecondary>? formats,
    required int numberOfCopies,
    List<_i2.BookCallNumber>? callNumbers,
  }) : super._(
          id: id,
          title: title,
          authors: authors,
          publisher: publisher,
          summary: summary,
          language: language,
          series: series,
          awards: awards,
          genres: genres,
          source: source,
          entryDate: entryDate,
          formats: formats,
          numberOfCopies: numberOfCopies,
          callNumbers: callNumbers,
        );

  @override
  Book copyWith({
    Object? id = _Undefined,
    String? title,
    Object? authors = _Undefined,
    String? publisher,
    String? summary,
    Object? language = _Undefined,
    Object? series = _Undefined,
    Object? awards = _Undefined,
    Object? genres = _Undefined,
    String? source,
    DateTime? entryDate,
    Object? formats = _Undefined,
    int? numberOfCopies,
    Object? callNumbers = _Undefined,
  }) {
    return Book(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      authors: authors is List<_i2.BookAuthorSecondary>?
          ? authors
          : this.authors?.clone(),
      publisher: publisher ?? this.publisher,
      summary: summary ?? this.summary,
      language: language is List<_i2.BookLanguageSecondary>?
          ? language
          : this.language?.clone(),
      series: series is List<_i2.BookSeriesSecondary>?
          ? series
          : this.series?.clone(),
      awards: awards is List<_i2.BookAwardSecondary>?
          ? awards
          : this.awards?.clone(),
      genres: genres is List<_i2.BookGenreSecondary>?
          ? genres
          : this.genres?.clone(),
      source: source ?? this.source,
      entryDate: entryDate ?? this.entryDate,
      formats: formats is List<_i2.BookFormatSecondary>?
          ? formats
          : this.formats?.clone(),
      numberOfCopies: numberOfCopies ?? this.numberOfCopies,
      callNumbers: callNumbers is List<_i2.BookCallNumber>?
          ? callNumbers
          : this.callNumbers?.clone(),
    );
  }
}

class BookTable extends _i1.Table {
  BookTable({super.tableRelation}) : super(tableName: 'books') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    publisher = _i1.ColumnString(
      'publisher',
      this,
    );
    summary = _i1.ColumnString(
      'summary',
      this,
    );
    source = _i1.ColumnString(
      'source',
      this,
    );
    entryDate = _i1.ColumnDateTime(
      'entryDate',
      this,
    );
    numberOfCopies = _i1.ColumnInt(
      'numberOfCopies',
      this,
    );
  }

  /// The title of this book.
  late final _i1.ColumnString title;

  /// The book authors of this book.
  _i2.BookAuthorSecondaryTable? ___authors;

  /// The book authors of this book.
  _i1.ManyRelation<_i2.BookAuthorSecondaryTable>? _authors;

  /// The publisher of this book.
  late final _i1.ColumnString publisher;

  /// The summary of this book.
  late final _i1.ColumnString summary;

  /// The languages of this book.
  _i2.BookLanguageSecondaryTable? ___language;

  /// The languages of this book.
  _i1.ManyRelation<_i2.BookLanguageSecondaryTable>? _language;

  /// Any series this book is part of.
  _i2.BookSeriesSecondaryTable? ___series;

  /// Any series this book is part of.
  _i1.ManyRelation<_i2.BookSeriesSecondaryTable>? _series;

  /// Any awards this book has won.
  _i2.BookAwardSecondaryTable? ___awards;

  /// Any awards this book has won.
  _i1.ManyRelation<_i2.BookAwardSecondaryTable>? _awards;

  /// The genres of this book.
  _i2.BookGenreSecondaryTable? ___genres;

  /// The genres of this book.
  _i1.ManyRelation<_i2.BookGenreSecondaryTable>? _genres;

  /// Data attribution.
  late final _i1.ColumnString source;

  /// The date this book was added to the library.
  late final _i1.ColumnDateTime entryDate;

  /// The formats this book is in.
  _i2.BookFormatSecondaryTable? ___formats;

  /// The formats this book is in.
  _i1.ManyRelation<_i2.BookFormatSecondaryTable>? _formats;

  /// The number of copies we have for borrowing.
  late final _i1.ColumnInt numberOfCopies;

  /// The call numbers.
  _i2.BookCallNumberTable? ___callNumbers;

  /// The call numbers.
  _i1.ManyRelation<_i2.BookCallNumberTable>? _callNumbers;

  _i2.BookAuthorSecondaryTable get __authors {
    if (___authors != null) return ___authors!;
    ___authors = _i1.createRelationTable(
      relationFieldName: '__authors',
      field: Book.t.id,
      foreignField: _i2.BookAuthorSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookAuthorSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___authors!;
  }

  _i2.BookLanguageSecondaryTable get __language {
    if (___language != null) return ___language!;
    ___language = _i1.createRelationTable(
      relationFieldName: '__language',
      field: Book.t.id,
      foreignField: _i2.BookLanguageSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookLanguageSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___language!;
  }

  _i2.BookSeriesSecondaryTable get __series {
    if (___series != null) return ___series!;
    ___series = _i1.createRelationTable(
      relationFieldName: '__series',
      field: Book.t.id,
      foreignField: _i2.BookSeriesSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookSeriesSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___series!;
  }

  _i2.BookAwardSecondaryTable get __awards {
    if (___awards != null) return ___awards!;
    ___awards = _i1.createRelationTable(
      relationFieldName: '__awards',
      field: Book.t.id,
      foreignField: _i2.BookAwardSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookAwardSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___awards!;
  }

  _i2.BookGenreSecondaryTable get __genres {
    if (___genres != null) return ___genres!;
    ___genres = _i1.createRelationTable(
      relationFieldName: '__genres',
      field: Book.t.id,
      foreignField: _i2.BookGenreSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookGenreSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___genres!;
  }

  _i2.BookFormatSecondaryTable get __formats {
    if (___formats != null) return ___formats!;
    ___formats = _i1.createRelationTable(
      relationFieldName: '__formats',
      field: Book.t.id,
      foreignField: _i2.BookFormatSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookFormatSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___formats!;
  }

  _i2.BookCallNumberTable get __callNumbers {
    if (___callNumbers != null) return ___callNumbers!;
    ___callNumbers = _i1.createRelationTable(
      relationFieldName: '__callNumbers',
      field: Book.t.id,
      foreignField: _i2.BookCallNumber.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookCallNumberTable(tableRelation: foreignTableRelation),
    );
    return ___callNumbers!;
  }

  _i1.ManyRelation<_i2.BookAuthorSecondaryTable> get authors {
    if (_authors != null) return _authors!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'authors',
      field: Book.t.id,
      foreignField: _i2.BookAuthorSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookAuthorSecondaryTable(tableRelation: foreignTableRelation),
    );
    _authors = _i1.ManyRelation<_i2.BookAuthorSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookAuthorSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _authors!;
  }

  _i1.ManyRelation<_i2.BookLanguageSecondaryTable> get language {
    if (_language != null) return _language!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'language',
      field: Book.t.id,
      foreignField: _i2.BookLanguageSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookLanguageSecondaryTable(tableRelation: foreignTableRelation),
    );
    _language = _i1.ManyRelation<_i2.BookLanguageSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookLanguageSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _language!;
  }

  _i1.ManyRelation<_i2.BookSeriesSecondaryTable> get series {
    if (_series != null) return _series!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'series',
      field: Book.t.id,
      foreignField: _i2.BookSeriesSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookSeriesSecondaryTable(tableRelation: foreignTableRelation),
    );
    _series = _i1.ManyRelation<_i2.BookSeriesSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookSeriesSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _series!;
  }

  _i1.ManyRelation<_i2.BookAwardSecondaryTable> get awards {
    if (_awards != null) return _awards!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'awards',
      field: Book.t.id,
      foreignField: _i2.BookAwardSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookAwardSecondaryTable(tableRelation: foreignTableRelation),
    );
    _awards = _i1.ManyRelation<_i2.BookAwardSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookAwardSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _awards!;
  }

  _i1.ManyRelation<_i2.BookGenreSecondaryTable> get genres {
    if (_genres != null) return _genres!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'genres',
      field: Book.t.id,
      foreignField: _i2.BookGenreSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookGenreSecondaryTable(tableRelation: foreignTableRelation),
    );
    _genres = _i1.ManyRelation<_i2.BookGenreSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookGenreSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _genres!;
  }

  _i1.ManyRelation<_i2.BookFormatSecondaryTable> get formats {
    if (_formats != null) return _formats!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'formats',
      field: Book.t.id,
      foreignField: _i2.BookFormatSecondary.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookFormatSecondaryTable(tableRelation: foreignTableRelation),
    );
    _formats = _i1.ManyRelation<_i2.BookFormatSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookFormatSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _formats!;
  }

  _i1.ManyRelation<_i2.BookCallNumberTable> get callNumbers {
    if (_callNumbers != null) return _callNumbers!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'callNumbers',
      field: Book.t.id,
      foreignField: _i2.BookCallNumber.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookCallNumberTable(tableRelation: foreignTableRelation),
    );
    _callNumbers = _i1.ManyRelation<_i2.BookCallNumberTable>(
      tableWithRelations: relationTable,
      table: _i2.BookCallNumberTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _callNumbers!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        publisher,
        summary,
        source,
        entryDate,
        numberOfCopies,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'authors') {
      return __authors;
    }
    if (relationField == 'language') {
      return __language;
    }
    if (relationField == 'series') {
      return __series;
    }
    if (relationField == 'awards') {
      return __awards;
    }
    if (relationField == 'genres') {
      return __genres;
    }
    if (relationField == 'formats') {
      return __formats;
    }
    if (relationField == 'callNumbers') {
      return __callNumbers;
    }
    return null;
  }
}

@Deprecated('Use BookTable.t instead.')
BookTable tBook = BookTable();

class BookInclude extends _i1.IncludeObject {
  BookInclude._({
    _i2.BookAuthorSecondaryIncludeList? authors,
    _i2.BookLanguageSecondaryIncludeList? language,
    _i2.BookSeriesSecondaryIncludeList? series,
    _i2.BookAwardSecondaryIncludeList? awards,
    _i2.BookGenreSecondaryIncludeList? genres,
    _i2.BookFormatSecondaryIncludeList? formats,
    _i2.BookCallNumberIncludeList? callNumbers,
  }) {
    _authors = authors;
    _language = language;
    _series = series;
    _awards = awards;
    _genres = genres;
    _formats = formats;
    _callNumbers = callNumbers;
  }

  _i2.BookAuthorSecondaryIncludeList? _authors;

  _i2.BookLanguageSecondaryIncludeList? _language;

  _i2.BookSeriesSecondaryIncludeList? _series;

  _i2.BookAwardSecondaryIncludeList? _awards;

  _i2.BookGenreSecondaryIncludeList? _genres;

  _i2.BookFormatSecondaryIncludeList? _formats;

  _i2.BookCallNumberIncludeList? _callNumbers;

  @override
  Map<String, _i1.Include?> get includes => {
        'authors': _authors,
        'language': _language,
        'series': _series,
        'awards': _awards,
        'genres': _genres,
        'formats': _formats,
        'callNumbers': _callNumbers,
      };

  @override
  _i1.Table get table => Book.t;
}

class BookIncludeList extends _i1.IncludeList {
  BookIncludeList._({
    _i1.WhereExpressionBuilder<BookTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Book.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Book.t;
}

class BookRepository {
  const BookRepository._();

  final attach = const BookAttachRepository._();

  final attachRow = const BookAttachRowRepository._();

  final detach = const BookDetachRepository._();

  final detachRow = const BookDetachRowRepository._();

  Future<List<Book>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookTable>? orderByList,
    _i1.Transaction? transaction,
    BookInclude? include,
  }) async {
    return session.dbNext.find<Book>(
      where: where?.call(Book.t),
      orderBy: orderBy?.call(Book.t),
      orderByList: orderByList?.call(Book.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Book?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookTable>? orderByList,
    _i1.Transaction? transaction,
    BookInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Book>(
      where: where?.call(Book.t),
      orderBy: orderBy?.call(Book.t),
      orderByList: orderByList?.call(Book.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Book?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookInclude? include,
  }) async {
    return session.dbNext.findById<Book>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Book>> insert(
    _i1.Session session,
    List<Book> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Book>(
      rows,
      transaction: transaction,
    );
  }

  Future<Book> insertRow(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Book>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Book>> update(
    _i1.Session session,
    List<Book> rows, {
    _i1.ColumnSelections<BookTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Book>(
      rows,
      columns: columns?.call(Book.t),
      transaction: transaction,
    );
  }

  Future<Book> updateRow(
    _i1.Session session,
    Book row, {
    _i1.ColumnSelections<BookTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Book>(
      row,
      columns: columns?.call(Book.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Book> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Book>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Book>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Book>(
      where: where(Book.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Book>(
      where: where?.call(Book.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookAttachRepository {
  const BookAttachRepository._();

  Future<void> authors(
    _i1.Session session,
    Book book,
    List<_i2.BookAuthorSecondary> bookAuthorSecondary,
  ) async {
    if (bookAuthorSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookAuthorSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookAuthorSecondary =
        bookAuthorSecondary.map((e) => e.copyWith(bookId: book.id)).toList();
    await session.dbNext.update<_i2.BookAuthorSecondary>(
      $bookAuthorSecondary,
      columns: [_i2.BookAuthorSecondary.t.bookId],
    );
  }

  Future<void> language(
    _i1.Session session,
    Book book,
    List<_i2.BookLanguageSecondary> bookLanguageSecondary,
  ) async {
    if (bookLanguageSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookLanguageSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookLanguageSecondary =
        bookLanguageSecondary.map((e) => e.copyWith(bookId: book.id)).toList();
    await session.dbNext.update<_i2.BookLanguageSecondary>(
      $bookLanguageSecondary,
      columns: [_i2.BookLanguageSecondary.t.bookId],
    );
  }

  Future<void> series(
    _i1.Session session,
    Book book,
    List<_i2.BookSeriesSecondary> bookSeriesSecondary,
  ) async {
    if (bookSeriesSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookSeriesSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookSeriesSecondary =
        bookSeriesSecondary.map((e) => e.copyWith(bookId: book.id)).toList();
    await session.dbNext.update<_i2.BookSeriesSecondary>(
      $bookSeriesSecondary,
      columns: [_i2.BookSeriesSecondary.t.bookId],
    );
  }

  Future<void> awards(
    _i1.Session session,
    Book book,
    List<_i2.BookAwardSecondary> bookAwardSecondary,
  ) async {
    if (bookAwardSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookAwardSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookAwardSecondary =
        bookAwardSecondary.map((e) => e.copyWith(bookId: book.id)).toList();
    await session.dbNext.update<_i2.BookAwardSecondary>(
      $bookAwardSecondary,
      columns: [_i2.BookAwardSecondary.t.bookId],
    );
  }

  Future<void> genres(
    _i1.Session session,
    Book book,
    List<_i2.BookGenreSecondary> bookGenreSecondary,
  ) async {
    if (bookGenreSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookGenreSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookGenreSecondary =
        bookGenreSecondary.map((e) => e.copyWith(bookId: book.id)).toList();
    await session.dbNext.update<_i2.BookGenreSecondary>(
      $bookGenreSecondary,
      columns: [_i2.BookGenreSecondary.t.bookId],
    );
  }

  Future<void> formats(
    _i1.Session session,
    Book book,
    List<_i2.BookFormatSecondary> bookFormatSecondary,
  ) async {
    if (bookFormatSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookFormatSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookFormatSecondary =
        bookFormatSecondary.map((e) => e.copyWith(bookId: book.id)).toList();
    await session.dbNext.update<_i2.BookFormatSecondary>(
      $bookFormatSecondary,
      columns: [_i2.BookFormatSecondary.t.bookId],
    );
  }

  Future<void> callNumbers(
    _i1.Session session,
    Book book,
    List<_i2.BookCallNumber> bookCallNumber,
  ) async {
    if (bookCallNumber.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookCallNumber.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookCallNumber =
        bookCallNumber.map((e) => e.copyWith(bookId: book.id)).toList();
    await session.dbNext.update<_i2.BookCallNumber>(
      $bookCallNumber,
      columns: [_i2.BookCallNumber.t.bookId],
    );
  }
}

class BookAttachRowRepository {
  const BookAttachRowRepository._();

  Future<void> authors(
    _i1.Session session,
    Book book,
    _i2.BookAuthorSecondary bookAuthorSecondary,
  ) async {
    if (bookAuthorSecondary.id == null) {
      throw ArgumentError.notNull('bookAuthorSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookAuthorSecondary = bookAuthorSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<_i2.BookAuthorSecondary>(
      $bookAuthorSecondary,
      columns: [_i2.BookAuthorSecondary.t.bookId],
    );
  }

  Future<void> language(
    _i1.Session session,
    Book book,
    _i2.BookLanguageSecondary bookLanguageSecondary,
  ) async {
    if (bookLanguageSecondary.id == null) {
      throw ArgumentError.notNull('bookLanguageSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookLanguageSecondary =
        bookLanguageSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<_i2.BookLanguageSecondary>(
      $bookLanguageSecondary,
      columns: [_i2.BookLanguageSecondary.t.bookId],
    );
  }

  Future<void> series(
    _i1.Session session,
    Book book,
    _i2.BookSeriesSecondary bookSeriesSecondary,
  ) async {
    if (bookSeriesSecondary.id == null) {
      throw ArgumentError.notNull('bookSeriesSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookSeriesSecondary = bookSeriesSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<_i2.BookSeriesSecondary>(
      $bookSeriesSecondary,
      columns: [_i2.BookSeriesSecondary.t.bookId],
    );
  }

  Future<void> awards(
    _i1.Session session,
    Book book,
    _i2.BookAwardSecondary bookAwardSecondary,
  ) async {
    if (bookAwardSecondary.id == null) {
      throw ArgumentError.notNull('bookAwardSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookAwardSecondary = bookAwardSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<_i2.BookAwardSecondary>(
      $bookAwardSecondary,
      columns: [_i2.BookAwardSecondary.t.bookId],
    );
  }

  Future<void> genres(
    _i1.Session session,
    Book book,
    _i2.BookGenreSecondary bookGenreSecondary,
  ) async {
    if (bookGenreSecondary.id == null) {
      throw ArgumentError.notNull('bookGenreSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookGenreSecondary = bookGenreSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<_i2.BookGenreSecondary>(
      $bookGenreSecondary,
      columns: [_i2.BookGenreSecondary.t.bookId],
    );
  }

  Future<void> formats(
    _i1.Session session,
    Book book,
    _i2.BookFormatSecondary bookFormatSecondary,
  ) async {
    if (bookFormatSecondary.id == null) {
      throw ArgumentError.notNull('bookFormatSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookFormatSecondary = bookFormatSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<_i2.BookFormatSecondary>(
      $bookFormatSecondary,
      columns: [_i2.BookFormatSecondary.t.bookId],
    );
  }

  Future<void> callNumbers(
    _i1.Session session,
    Book book,
    _i2.BookCallNumber bookCallNumber,
  ) async {
    if (bookCallNumber.id == null) {
      throw ArgumentError.notNull('bookCallNumber.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookCallNumber = bookCallNumber.copyWith(bookId: book.id);
    await session.dbNext.updateRow<_i2.BookCallNumber>(
      $bookCallNumber,
      columns: [_i2.BookCallNumber.t.bookId],
    );
  }
}

class BookDetachRepository {
  const BookDetachRepository._();

  Future<void> authors(
    _i1.Session session,
    List<_i2.BookAuthorSecondary> bookAuthorSecondary,
  ) async {
    if (bookAuthorSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookAuthorSecondary.id');
    }

    var $bookAuthorSecondary =
        bookAuthorSecondary.map((e) => e.copyWith(bookId: null)).toList();
    await session.dbNext.update<_i2.BookAuthorSecondary>(
      $bookAuthorSecondary,
      columns: [_i2.BookAuthorSecondary.t.bookId],
    );
  }

  Future<void> language(
    _i1.Session session,
    List<_i2.BookLanguageSecondary> bookLanguageSecondary,
  ) async {
    if (bookLanguageSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookLanguageSecondary.id');
    }

    var $bookLanguageSecondary =
        bookLanguageSecondary.map((e) => e.copyWith(bookId: null)).toList();
    await session.dbNext.update<_i2.BookLanguageSecondary>(
      $bookLanguageSecondary,
      columns: [_i2.BookLanguageSecondary.t.bookId],
    );
  }

  Future<void> series(
    _i1.Session session,
    List<_i2.BookSeriesSecondary> bookSeriesSecondary,
  ) async {
    if (bookSeriesSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookSeriesSecondary.id');
    }

    var $bookSeriesSecondary =
        bookSeriesSecondary.map((e) => e.copyWith(bookId: null)).toList();
    await session.dbNext.update<_i2.BookSeriesSecondary>(
      $bookSeriesSecondary,
      columns: [_i2.BookSeriesSecondary.t.bookId],
    );
  }

  Future<void> awards(
    _i1.Session session,
    List<_i2.BookAwardSecondary> bookAwardSecondary,
  ) async {
    if (bookAwardSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookAwardSecondary.id');
    }

    var $bookAwardSecondary =
        bookAwardSecondary.map((e) => e.copyWith(bookId: null)).toList();
    await session.dbNext.update<_i2.BookAwardSecondary>(
      $bookAwardSecondary,
      columns: [_i2.BookAwardSecondary.t.bookId],
    );
  }

  Future<void> genres(
    _i1.Session session,
    List<_i2.BookGenreSecondary> bookGenreSecondary,
  ) async {
    if (bookGenreSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookGenreSecondary.id');
    }

    var $bookGenreSecondary =
        bookGenreSecondary.map((e) => e.copyWith(bookId: null)).toList();
    await session.dbNext.update<_i2.BookGenreSecondary>(
      $bookGenreSecondary,
      columns: [_i2.BookGenreSecondary.t.bookId],
    );
  }

  Future<void> formats(
    _i1.Session session,
    List<_i2.BookFormatSecondary> bookFormatSecondary,
  ) async {
    if (bookFormatSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookFormatSecondary.id');
    }

    var $bookFormatSecondary =
        bookFormatSecondary.map((e) => e.copyWith(bookId: null)).toList();
    await session.dbNext.update<_i2.BookFormatSecondary>(
      $bookFormatSecondary,
      columns: [_i2.BookFormatSecondary.t.bookId],
    );
  }

  Future<void> callNumbers(
    _i1.Session session,
    List<_i2.BookCallNumber> bookCallNumber,
  ) async {
    if (bookCallNumber.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookCallNumber.id');
    }

    var $bookCallNumber =
        bookCallNumber.map((e) => e.copyWith(bookId: null)).toList();
    await session.dbNext.update<_i2.BookCallNumber>(
      $bookCallNumber,
      columns: [_i2.BookCallNumber.t.bookId],
    );
  }
}

class BookDetachRowRepository {
  const BookDetachRowRepository._();

  Future<void> authors(
    _i1.Session session,
    _i2.BookAuthorSecondary bookAuthorSecondary,
  ) async {
    if (bookAuthorSecondary.id == null) {
      throw ArgumentError.notNull('bookAuthorSecondary.id');
    }

    var $bookAuthorSecondary = bookAuthorSecondary.copyWith(bookId: null);
    await session.dbNext.updateRow<_i2.BookAuthorSecondary>(
      $bookAuthorSecondary,
      columns: [_i2.BookAuthorSecondary.t.bookId],
    );
  }

  Future<void> language(
    _i1.Session session,
    _i2.BookLanguageSecondary bookLanguageSecondary,
  ) async {
    if (bookLanguageSecondary.id == null) {
      throw ArgumentError.notNull('bookLanguageSecondary.id');
    }

    var $bookLanguageSecondary = bookLanguageSecondary.copyWith(bookId: null);
    await session.dbNext.updateRow<_i2.BookLanguageSecondary>(
      $bookLanguageSecondary,
      columns: [_i2.BookLanguageSecondary.t.bookId],
    );
  }

  Future<void> series(
    _i1.Session session,
    _i2.BookSeriesSecondary bookSeriesSecondary,
  ) async {
    if (bookSeriesSecondary.id == null) {
      throw ArgumentError.notNull('bookSeriesSecondary.id');
    }

    var $bookSeriesSecondary = bookSeriesSecondary.copyWith(bookId: null);
    await session.dbNext.updateRow<_i2.BookSeriesSecondary>(
      $bookSeriesSecondary,
      columns: [_i2.BookSeriesSecondary.t.bookId],
    );
  }

  Future<void> awards(
    _i1.Session session,
    _i2.BookAwardSecondary bookAwardSecondary,
  ) async {
    if (bookAwardSecondary.id == null) {
      throw ArgumentError.notNull('bookAwardSecondary.id');
    }

    var $bookAwardSecondary = bookAwardSecondary.copyWith(bookId: null);
    await session.dbNext.updateRow<_i2.BookAwardSecondary>(
      $bookAwardSecondary,
      columns: [_i2.BookAwardSecondary.t.bookId],
    );
  }

  Future<void> genres(
    _i1.Session session,
    _i2.BookGenreSecondary bookGenreSecondary,
  ) async {
    if (bookGenreSecondary.id == null) {
      throw ArgumentError.notNull('bookGenreSecondary.id');
    }

    var $bookGenreSecondary = bookGenreSecondary.copyWith(bookId: null);
    await session.dbNext.updateRow<_i2.BookGenreSecondary>(
      $bookGenreSecondary,
      columns: [_i2.BookGenreSecondary.t.bookId],
    );
  }

  Future<void> formats(
    _i1.Session session,
    _i2.BookFormatSecondary bookFormatSecondary,
  ) async {
    if (bookFormatSecondary.id == null) {
      throw ArgumentError.notNull('bookFormatSecondary.id');
    }

    var $bookFormatSecondary = bookFormatSecondary.copyWith(bookId: null);
    await session.dbNext.updateRow<_i2.BookFormatSecondary>(
      $bookFormatSecondary,
      columns: [_i2.BookFormatSecondary.t.bookId],
    );
  }

  Future<void> callNumbers(
    _i1.Session session,
    _i2.BookCallNumber bookCallNumber,
  ) async {
    if (bookCallNumber.id == null) {
      throw ArgumentError.notNull('bookCallNumber.id');
    }

    var $bookCallNumber = bookCallNumber.copyWith(bookId: null);
    await session.dbNext.updateRow<_i2.BookCallNumber>(
      $bookCallNumber,
      columns: [_i2.BookCallNumber.t.bookId],
    );
  }
}
