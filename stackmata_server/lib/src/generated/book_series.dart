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

/// A series of books.
abstract class BookSeries extends _i1.TableRow {
  BookSeries._({
    int? id,
    required this.name,
    this.booksSecondary,
  }) : super(id);

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

  static final t = BookSeriesTable();

  static const db = BookSeriesRepository._();

  /// The name of this series.
  String name;

  /// The books in this series.
  List<_i2.BookSeriesSecondary>? booksSecondary;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (booksSecondary != null)
        'booksSecondary':
            booksSecondary?.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'name':
        name = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookSeries>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookSeriesTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookSeriesInclude? include,
  }) async {
    return session.db.find<BookSeries>(
      where: where != null ? where(BookSeries.t) : null,
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
  static Future<BookSeries?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookSeriesTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookSeriesInclude? include,
  }) async {
    return session.db.findSingleRow<BookSeries>(
      where: where != null ? where(BookSeries.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookSeries?> findById(
    _i1.Session session,
    int id, {
    BookSeriesInclude? include,
  }) async {
    return session.db.findById<BookSeries>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookSeriesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookSeries>(
      where: where(BookSeries.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookSeries row, {
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
    BookSeries row, {
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
    BookSeries row, {
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
    _i1.WhereExpressionBuilder<BookSeriesTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookSeries>(
      where: where != null ? where(BookSeries.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookSeriesInclude include(
      {_i2.BookSeriesSecondaryIncludeList? booksSecondary}) {
    return BookSeriesInclude._(booksSecondary: booksSecondary);
  }

  static BookSeriesIncludeList includeList({
    _i1.WhereExpressionBuilder<BookSeriesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookSeriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookSeriesTable>? orderByList,
    BookSeriesInclude? include,
  }) {
    return BookSeriesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookSeries.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookSeries.t),
      include: include,
    );
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

class BookSeriesTable extends _i1.Table {
  BookSeriesTable({super.tableRelation}) : super(tableName: 'book_series') {
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  /// The name of this series.
  late final _i1.ColumnString name;

  /// The books in this series.
  _i2.BookSeriesSecondaryTable? ___booksSecondary;

  /// The books in this series.
  _i1.ManyRelation<_i2.BookSeriesSecondaryTable>? _booksSecondary;

  _i2.BookSeriesSecondaryTable get __booksSecondary {
    if (___booksSecondary != null) return ___booksSecondary!;
    ___booksSecondary = _i1.createRelationTable(
      relationFieldName: '__booksSecondary',
      field: BookSeries.t.id,
      foreignField: _i2.BookSeriesSecondary.t.seriesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookSeriesSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___booksSecondary!;
  }

  _i1.ManyRelation<_i2.BookSeriesSecondaryTable> get booksSecondary {
    if (_booksSecondary != null) return _booksSecondary!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'booksSecondary',
      field: BookSeries.t.id,
      foreignField: _i2.BookSeriesSecondary.t.seriesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookSeriesSecondaryTable(tableRelation: foreignTableRelation),
    );
    _booksSecondary = _i1.ManyRelation<_i2.BookSeriesSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookSeriesSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _booksSecondary!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'booksSecondary') {
      return __booksSecondary;
    }
    return null;
  }
}

@Deprecated('Use BookSeriesTable.t instead.')
BookSeriesTable tBookSeries = BookSeriesTable();

class BookSeriesInclude extends _i1.IncludeObject {
  BookSeriesInclude._({_i2.BookSeriesSecondaryIncludeList? booksSecondary}) {
    _booksSecondary = booksSecondary;
  }

  _i2.BookSeriesSecondaryIncludeList? _booksSecondary;

  @override
  Map<String, _i1.Include?> get includes => {'booksSecondary': _booksSecondary};

  @override
  _i1.Table get table => BookSeries.t;
}

class BookSeriesIncludeList extends _i1.IncludeList {
  BookSeriesIncludeList._({
    _i1.WhereExpressionBuilder<BookSeriesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookSeries.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookSeries.t;
}

class BookSeriesRepository {
  const BookSeriesRepository._();

  final attach = const BookSeriesAttachRepository._();

  final attachRow = const BookSeriesAttachRowRepository._();

  final detach = const BookSeriesDetachRepository._();

  final detachRow = const BookSeriesDetachRowRepository._();

  Future<List<BookSeries>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookSeriesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookSeriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookSeriesTable>? orderByList,
    _i1.Transaction? transaction,
    BookSeriesInclude? include,
  }) async {
    return session.dbNext.find<BookSeries>(
      where: where?.call(BookSeries.t),
      orderBy: orderBy?.call(BookSeries.t),
      orderByList: orderByList?.call(BookSeries.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookSeries?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookSeriesTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookSeriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookSeriesTable>? orderByList,
    _i1.Transaction? transaction,
    BookSeriesInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookSeries>(
      where: where?.call(BookSeries.t),
      orderBy: orderBy?.call(BookSeries.t),
      orderByList: orderByList?.call(BookSeries.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookSeries?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookSeriesInclude? include,
  }) async {
    return session.dbNext.findById<BookSeries>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookSeries>> insert(
    _i1.Session session,
    List<BookSeries> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookSeries>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookSeries> insertRow(
    _i1.Session session,
    BookSeries row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookSeries>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookSeries>> update(
    _i1.Session session,
    List<BookSeries> rows, {
    _i1.ColumnSelections<BookSeriesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookSeries>(
      rows,
      columns: columns?.call(BookSeries.t),
      transaction: transaction,
    );
  }

  Future<BookSeries> updateRow(
    _i1.Session session,
    BookSeries row, {
    _i1.ColumnSelections<BookSeriesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookSeries>(
      row,
      columns: columns?.call(BookSeries.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookSeries> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookSeries>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookSeries row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookSeries>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookSeriesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookSeries>(
      where: where(BookSeries.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookSeriesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookSeries>(
      where: where?.call(BookSeries.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookSeriesAttachRepository {
  const BookSeriesAttachRepository._();

  Future<void> booksSecondary(
    _i1.Session session,
    BookSeries bookSeries,
    List<_i2.BookSeriesSecondary> bookSeriesSecondary,
  ) async {
    if (bookSeriesSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookSeriesSecondary.id');
    }
    if (bookSeries.id == null) {
      throw ArgumentError.notNull('bookSeries.id');
    }

    var $bookSeriesSecondary = bookSeriesSecondary
        .map((e) => e.copyWith(seriesId: bookSeries.id))
        .toList();
    await session.dbNext.update<_i2.BookSeriesSecondary>(
      $bookSeriesSecondary,
      columns: [_i2.BookSeriesSecondary.t.seriesId],
    );
  }
}

class BookSeriesAttachRowRepository {
  const BookSeriesAttachRowRepository._();

  Future<void> booksSecondary(
    _i1.Session session,
    BookSeries bookSeries,
    _i2.BookSeriesSecondary bookSeriesSecondary,
  ) async {
    if (bookSeriesSecondary.id == null) {
      throw ArgumentError.notNull('bookSeriesSecondary.id');
    }
    if (bookSeries.id == null) {
      throw ArgumentError.notNull('bookSeries.id');
    }

    var $bookSeriesSecondary =
        bookSeriesSecondary.copyWith(seriesId: bookSeries.id);
    await session.dbNext.updateRow<_i2.BookSeriesSecondary>(
      $bookSeriesSecondary,
      columns: [_i2.BookSeriesSecondary.t.seriesId],
    );
  }
}

class BookSeriesDetachRepository {
  const BookSeriesDetachRepository._();

  Future<void> booksSecondary(
    _i1.Session session,
    List<_i2.BookSeriesSecondary> bookSeriesSecondary,
  ) async {
    if (bookSeriesSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookSeriesSecondary.id');
    }

    var $bookSeriesSecondary =
        bookSeriesSecondary.map((e) => e.copyWith(seriesId: null)).toList();
    await session.dbNext.update<_i2.BookSeriesSecondary>(
      $bookSeriesSecondary,
      columns: [_i2.BookSeriesSecondary.t.seriesId],
    );
  }
}

class BookSeriesDetachRowRepository {
  const BookSeriesDetachRowRepository._();

  Future<void> booksSecondary(
    _i1.Session session,
    _i2.BookSeriesSecondary bookSeriesSecondary,
  ) async {
    if (bookSeriesSecondary.id == null) {
      throw ArgumentError.notNull('bookSeriesSecondary.id');
    }

    var $bookSeriesSecondary = bookSeriesSecondary.copyWith(seriesId: null);
    await session.dbNext.updateRow<_i2.BookSeriesSecondary>(
      $bookSeriesSecondary,
      columns: [_i2.BookSeriesSecondary.t.seriesId],
    );
  }
}
