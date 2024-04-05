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

/// Connect books to book series.
abstract class BookSeriesSecondary extends _i1.TableRow {
  BookSeriesSecondary._({
    int? id,
    required this.seriesId,
    this.series,
    required this.bookId,
    this.book,
  }) : super(id);

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

  static final t = BookSeriesSecondaryTable();

  static const db = BookSeriesSecondaryRepository._();

  int seriesId;

  /// The series to use.
  _i2.BookSeries? series;

  int bookId;

  /// The book to use.
  _i2.Book? book;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'seriesId': seriesId,
      'bookId': bookId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'seriesId': seriesId,
      if (series != null) 'series': series?.allToJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.allToJson(),
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
      case 'seriesId':
        seriesId = value;
        return;
      case 'bookId':
        bookId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookSeriesSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookSeriesSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookSeriesSecondaryInclude? include,
  }) async {
    return session.db.find<BookSeriesSecondary>(
      where: where != null ? where(BookSeriesSecondary.t) : null,
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
  static Future<BookSeriesSecondary?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookSeriesSecondaryTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookSeriesSecondaryInclude? include,
  }) async {
    return session.db.findSingleRow<BookSeriesSecondary>(
      where: where != null ? where(BookSeriesSecondary.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookSeriesSecondary?> findById(
    _i1.Session session,
    int id, {
    BookSeriesSecondaryInclude? include,
  }) async {
    return session.db.findById<BookSeriesSecondary>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookSeriesSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookSeriesSecondary>(
      where: where(BookSeriesSecondary.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookSeriesSecondary row, {
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
    BookSeriesSecondary row, {
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
    BookSeriesSecondary row, {
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
    _i1.WhereExpressionBuilder<BookSeriesSecondaryTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookSeriesSecondary>(
      where: where != null ? where(BookSeriesSecondary.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookSeriesSecondaryInclude include({
    _i2.BookSeriesInclude? series,
    _i2.BookInclude? book,
  }) {
    return BookSeriesSecondaryInclude._(
      series: series,
      book: book,
    );
  }

  static BookSeriesSecondaryIncludeList includeList({
    _i1.WhereExpressionBuilder<BookSeriesSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookSeriesSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookSeriesSecondaryTable>? orderByList,
    BookSeriesSecondaryInclude? include,
  }) {
    return BookSeriesSecondaryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookSeriesSecondary.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookSeriesSecondary.t),
      include: include,
    );
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

class BookSeriesSecondaryTable extends _i1.Table {
  BookSeriesSecondaryTable({super.tableRelation})
      : super(tableName: 'book_series_secondary') {
    seriesId = _i1.ColumnInt(
      'seriesId',
      this,
    );
    bookId = _i1.ColumnInt(
      'bookId',
      this,
    );
  }

  late final _i1.ColumnInt seriesId;

  /// The series to use.
  _i2.BookSeriesTable? _series;

  late final _i1.ColumnInt bookId;

  /// The book to use.
  _i2.BookTable? _book;

  _i2.BookSeriesTable get series {
    if (_series != null) return _series!;
    _series = _i1.createRelationTable(
      relationFieldName: 'series',
      field: BookSeriesSecondary.t.seriesId,
      foreignField: _i2.BookSeries.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookSeriesTable(tableRelation: foreignTableRelation),
    );
    return _series!;
  }

  _i2.BookTable get book {
    if (_book != null) return _book!;
    _book = _i1.createRelationTable(
      relationFieldName: 'book',
      field: BookSeriesSecondary.t.bookId,
      foreignField: _i2.Book.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookTable(tableRelation: foreignTableRelation),
    );
    return _book!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        seriesId,
        bookId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'series') {
      return series;
    }
    if (relationField == 'book') {
      return book;
    }
    return null;
  }
}

@Deprecated('Use BookSeriesSecondaryTable.t instead.')
BookSeriesSecondaryTable tBookSeriesSecondary = BookSeriesSecondaryTable();

class BookSeriesSecondaryInclude extends _i1.IncludeObject {
  BookSeriesSecondaryInclude._({
    _i2.BookSeriesInclude? series,
    _i2.BookInclude? book,
  }) {
    _series = series;
    _book = book;
  }

  _i2.BookSeriesInclude? _series;

  _i2.BookInclude? _book;

  @override
  Map<String, _i1.Include?> get includes => {
        'series': _series,
        'book': _book,
      };

  @override
  _i1.Table get table => BookSeriesSecondary.t;
}

class BookSeriesSecondaryIncludeList extends _i1.IncludeList {
  BookSeriesSecondaryIncludeList._({
    _i1.WhereExpressionBuilder<BookSeriesSecondaryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookSeriesSecondary.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookSeriesSecondary.t;
}

class BookSeriesSecondaryRepository {
  const BookSeriesSecondaryRepository._();

  final attachRow = const BookSeriesSecondaryAttachRowRepository._();

  Future<List<BookSeriesSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookSeriesSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookSeriesSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookSeriesSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookSeriesSecondaryInclude? include,
  }) async {
    return session.dbNext.find<BookSeriesSecondary>(
      where: where?.call(BookSeriesSecondary.t),
      orderBy: orderBy?.call(BookSeriesSecondary.t),
      orderByList: orderByList?.call(BookSeriesSecondary.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookSeriesSecondary?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookSeriesSecondaryTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookSeriesSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookSeriesSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookSeriesSecondaryInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookSeriesSecondary>(
      where: where?.call(BookSeriesSecondary.t),
      orderBy: orderBy?.call(BookSeriesSecondary.t),
      orderByList: orderByList?.call(BookSeriesSecondary.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookSeriesSecondary?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookSeriesSecondaryInclude? include,
  }) async {
    return session.dbNext.findById<BookSeriesSecondary>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookSeriesSecondary>> insert(
    _i1.Session session,
    List<BookSeriesSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookSeriesSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookSeriesSecondary> insertRow(
    _i1.Session session,
    BookSeriesSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookSeriesSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookSeriesSecondary>> update(
    _i1.Session session,
    List<BookSeriesSecondary> rows, {
    _i1.ColumnSelections<BookSeriesSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookSeriesSecondary>(
      rows,
      columns: columns?.call(BookSeriesSecondary.t),
      transaction: transaction,
    );
  }

  Future<BookSeriesSecondary> updateRow(
    _i1.Session session,
    BookSeriesSecondary row, {
    _i1.ColumnSelections<BookSeriesSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookSeriesSecondary>(
      row,
      columns: columns?.call(BookSeriesSecondary.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookSeriesSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookSeriesSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookSeriesSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookSeriesSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookSeriesSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookSeriesSecondary>(
      where: where(BookSeriesSecondary.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookSeriesSecondaryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookSeriesSecondary>(
      where: where?.call(BookSeriesSecondary.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookSeriesSecondaryAttachRowRepository {
  const BookSeriesSecondaryAttachRowRepository._();

  Future<void> series(
    _i1.Session session,
    BookSeriesSecondary bookSeriesSecondary,
    _i2.BookSeries series,
  ) async {
    if (bookSeriesSecondary.id == null) {
      throw ArgumentError.notNull('bookSeriesSecondary.id');
    }
    if (series.id == null) {
      throw ArgumentError.notNull('series.id');
    }

    var $bookSeriesSecondary =
        bookSeriesSecondary.copyWith(seriesId: series.id);
    await session.dbNext.updateRow<BookSeriesSecondary>(
      $bookSeriesSecondary,
      columns: [BookSeriesSecondary.t.seriesId],
    );
  }

  Future<void> book(
    _i1.Session session,
    BookSeriesSecondary bookSeriesSecondary,
    _i2.Book book,
  ) async {
    if (bookSeriesSecondary.id == null) {
      throw ArgumentError.notNull('bookSeriesSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookSeriesSecondary = bookSeriesSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<BookSeriesSecondary>(
      $bookSeriesSecondary,
      columns: [BookSeriesSecondary.t.bookId],
    );
  }
}
