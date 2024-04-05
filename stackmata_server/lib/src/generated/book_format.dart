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

/// The format of a book.
abstract class BookFormat extends _i1.TableRow {
  BookFormat._({
    int? id,
    required this.code,
    required this.name,
    this.books,
  }) : super(id);

  factory BookFormat({
    int? id,
    required String code,
    required String name,
    List<_i2.BookFormatSecondary>? books,
  }) = _BookFormatImpl;

  factory BookFormat.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookFormat(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      code: serializationManager.deserialize<String>(jsonSerialization['code']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      books: serializationManager.deserialize<List<_i2.BookFormatSecondary>?>(
          jsonSerialization['books']),
    );
  }

  static final t = BookFormatTable();

  static const db = BookFormatRepository._();

  /// The ID of this format.
  String code;

  /// The name of this format.
  String name;

  /// The books which have this format.
  List<_i2.BookFormatSecondary>? books;

  @override
  _i1.Table get table => t;

  BookFormat copyWith({
    int? id,
    String? code,
    String? name,
    List<_i2.BookFormatSecondary>? books,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'code': code,
      'name': name,
      if (books != null) 'books': books?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'code': code,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'code': code,
      'name': name,
      if (books != null)
        'books': books?.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'code':
        code = value;
        return;
      case 'name':
        name = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookFormat>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookFormatTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookFormatInclude? include,
  }) async {
    return session.db.find<BookFormat>(
      where: where != null ? where(BookFormat.t) : null,
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
  static Future<BookFormat?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookFormatTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookFormatInclude? include,
  }) async {
    return session.db.findSingleRow<BookFormat>(
      where: where != null ? where(BookFormat.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookFormat?> findById(
    _i1.Session session,
    int id, {
    BookFormatInclude? include,
  }) async {
    return session.db.findById<BookFormat>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookFormatTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookFormat>(
      where: where(BookFormat.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookFormat row, {
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
    BookFormat row, {
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
    BookFormat row, {
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
    _i1.WhereExpressionBuilder<BookFormatTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookFormat>(
      where: where != null ? where(BookFormat.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookFormatInclude include(
      {_i2.BookFormatSecondaryIncludeList? books}) {
    return BookFormatInclude._(books: books);
  }

  static BookFormatIncludeList includeList({
    _i1.WhereExpressionBuilder<BookFormatTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookFormatTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookFormatTable>? orderByList,
    BookFormatInclude? include,
  }) {
    return BookFormatIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookFormat.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookFormat.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookFormatImpl extends BookFormat {
  _BookFormatImpl({
    int? id,
    required String code,
    required String name,
    List<_i2.BookFormatSecondary>? books,
  }) : super._(
          id: id,
          code: code,
          name: name,
          books: books,
        );

  @override
  BookFormat copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? books = _Undefined,
  }) {
    return BookFormat(
      id: id is int? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      books:
          books is List<_i2.BookFormatSecondary>? ? books : this.books?.clone(),
    );
  }
}

class BookFormatTable extends _i1.Table {
  BookFormatTable({super.tableRelation}) : super(tableName: 'book_formats') {
    code = _i1.ColumnString(
      'code',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  /// The ID of this format.
  late final _i1.ColumnString code;

  /// The name of this format.
  late final _i1.ColumnString name;

  /// The books which have this format.
  _i2.BookFormatSecondaryTable? ___books;

  /// The books which have this format.
  _i1.ManyRelation<_i2.BookFormatSecondaryTable>? _books;

  _i2.BookFormatSecondaryTable get __books {
    if (___books != null) return ___books!;
    ___books = _i1.createRelationTable(
      relationFieldName: '__books',
      field: BookFormat.t.id,
      foreignField: _i2.BookFormatSecondary.t.bookFormatId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookFormatSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___books!;
  }

  _i1.ManyRelation<_i2.BookFormatSecondaryTable> get books {
    if (_books != null) return _books!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'books',
      field: BookFormat.t.id,
      foreignField: _i2.BookFormatSecondary.t.bookFormatId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookFormatSecondaryTable(tableRelation: foreignTableRelation),
    );
    _books = _i1.ManyRelation<_i2.BookFormatSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookFormatSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _books!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        code,
        name,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'books') {
      return __books;
    }
    return null;
  }
}

@Deprecated('Use BookFormatTable.t instead.')
BookFormatTable tBookFormat = BookFormatTable();

class BookFormatInclude extends _i1.IncludeObject {
  BookFormatInclude._({_i2.BookFormatSecondaryIncludeList? books}) {
    _books = books;
  }

  _i2.BookFormatSecondaryIncludeList? _books;

  @override
  Map<String, _i1.Include?> get includes => {'books': _books};

  @override
  _i1.Table get table => BookFormat.t;
}

class BookFormatIncludeList extends _i1.IncludeList {
  BookFormatIncludeList._({
    _i1.WhereExpressionBuilder<BookFormatTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookFormat.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookFormat.t;
}

class BookFormatRepository {
  const BookFormatRepository._();

  final attach = const BookFormatAttachRepository._();

  final attachRow = const BookFormatAttachRowRepository._();

  final detach = const BookFormatDetachRepository._();

  final detachRow = const BookFormatDetachRowRepository._();

  Future<List<BookFormat>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookFormatTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookFormatTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookFormatTable>? orderByList,
    _i1.Transaction? transaction,
    BookFormatInclude? include,
  }) async {
    return session.dbNext.find<BookFormat>(
      where: where?.call(BookFormat.t),
      orderBy: orderBy?.call(BookFormat.t),
      orderByList: orderByList?.call(BookFormat.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookFormat?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookFormatTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookFormatTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookFormatTable>? orderByList,
    _i1.Transaction? transaction,
    BookFormatInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookFormat>(
      where: where?.call(BookFormat.t),
      orderBy: orderBy?.call(BookFormat.t),
      orderByList: orderByList?.call(BookFormat.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookFormat?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookFormatInclude? include,
  }) async {
    return session.dbNext.findById<BookFormat>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookFormat>> insert(
    _i1.Session session,
    List<BookFormat> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookFormat>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookFormat> insertRow(
    _i1.Session session,
    BookFormat row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookFormat>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookFormat>> update(
    _i1.Session session,
    List<BookFormat> rows, {
    _i1.ColumnSelections<BookFormatTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookFormat>(
      rows,
      columns: columns?.call(BookFormat.t),
      transaction: transaction,
    );
  }

  Future<BookFormat> updateRow(
    _i1.Session session,
    BookFormat row, {
    _i1.ColumnSelections<BookFormatTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookFormat>(
      row,
      columns: columns?.call(BookFormat.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookFormat> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookFormat>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookFormat row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookFormat>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookFormatTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookFormat>(
      where: where(BookFormat.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookFormatTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookFormat>(
      where: where?.call(BookFormat.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookFormatAttachRepository {
  const BookFormatAttachRepository._();

  Future<void> books(
    _i1.Session session,
    BookFormat bookFormat,
    List<_i2.BookFormatSecondary> bookFormatSecondary,
  ) async {
    if (bookFormatSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookFormatSecondary.id');
    }
    if (bookFormat.id == null) {
      throw ArgumentError.notNull('bookFormat.id');
    }

    var $bookFormatSecondary = bookFormatSecondary
        .map((e) => e.copyWith(bookFormatId: bookFormat.id))
        .toList();
    await session.dbNext.update<_i2.BookFormatSecondary>(
      $bookFormatSecondary,
      columns: [_i2.BookFormatSecondary.t.bookFormatId],
    );
  }
}

class BookFormatAttachRowRepository {
  const BookFormatAttachRowRepository._();

  Future<void> books(
    _i1.Session session,
    BookFormat bookFormat,
    _i2.BookFormatSecondary bookFormatSecondary,
  ) async {
    if (bookFormatSecondary.id == null) {
      throw ArgumentError.notNull('bookFormatSecondary.id');
    }
    if (bookFormat.id == null) {
      throw ArgumentError.notNull('bookFormat.id');
    }

    var $bookFormatSecondary =
        bookFormatSecondary.copyWith(bookFormatId: bookFormat.id);
    await session.dbNext.updateRow<_i2.BookFormatSecondary>(
      $bookFormatSecondary,
      columns: [_i2.BookFormatSecondary.t.bookFormatId],
    );
  }
}

class BookFormatDetachRepository {
  const BookFormatDetachRepository._();

  Future<void> books(
    _i1.Session session,
    List<_i2.BookFormatSecondary> bookFormatSecondary,
  ) async {
    if (bookFormatSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookFormatSecondary.id');
    }

    var $bookFormatSecondary =
        bookFormatSecondary.map((e) => e.copyWith(bookFormatId: null)).toList();
    await session.dbNext.update<_i2.BookFormatSecondary>(
      $bookFormatSecondary,
      columns: [_i2.BookFormatSecondary.t.bookFormatId],
    );
  }
}

class BookFormatDetachRowRepository {
  const BookFormatDetachRowRepository._();

  Future<void> books(
    _i1.Session session,
    _i2.BookFormatSecondary bookFormatSecondary,
  ) async {
    if (bookFormatSecondary.id == null) {
      throw ArgumentError.notNull('bookFormatSecondary.id');
    }

    var $bookFormatSecondary = bookFormatSecondary.copyWith(bookFormatId: null);
    await session.dbNext.updateRow<_i2.BookFormatSecondary>(
      $bookFormatSecondary,
      columns: [_i2.BookFormatSecondary.t.bookFormatId],
    );
  }
}
