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

/// Link books to formats.
abstract class BookFormatSecondary extends _i1.TableRow {
  BookFormatSecondary._({
    int? id,
    required this.bookFormatId,
    this.bookFormat,
    required this.bookId,
    this.book,
  }) : super(id);

  factory BookFormatSecondary({
    int? id,
    required int bookFormatId,
    _i2.BookFormat? bookFormat,
    required int bookId,
    _i2.Book? book,
  }) = _BookFormatSecondaryImpl;

  factory BookFormatSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookFormatSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      bookFormatId: serializationManager
          .deserialize<int>(jsonSerialization['bookFormatId']),
      bookFormat: serializationManager
          .deserialize<_i2.BookFormat?>(jsonSerialization['bookFormat']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i2.Book?>(jsonSerialization['book']),
    );
  }

  static final t = BookFormatSecondaryTable();

  static const db = BookFormatSecondaryRepository._();

  int bookFormatId;

  /// The format of the book.
  _i2.BookFormat? bookFormat;

  int bookId;

  /// The book to use.
  _i2.Book? book;

  @override
  _i1.Table get table => t;

  BookFormatSecondary copyWith({
    int? id,
    int? bookFormatId,
    _i2.BookFormat? bookFormat,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'bookFormatId': bookFormatId,
      if (bookFormat != null) 'bookFormat': bookFormat?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'bookFormatId': bookFormatId,
      'bookId': bookId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'bookFormatId': bookFormatId,
      if (bookFormat != null) 'bookFormat': bookFormat?.allToJson(),
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
      case 'bookFormatId':
        bookFormatId = value;
        return;
      case 'bookId':
        bookId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookFormatSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookFormatSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookFormatSecondaryInclude? include,
  }) async {
    return session.db.find<BookFormatSecondary>(
      where: where != null ? where(BookFormatSecondary.t) : null,
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
  static Future<BookFormatSecondary?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookFormatSecondaryTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookFormatSecondaryInclude? include,
  }) async {
    return session.db.findSingleRow<BookFormatSecondary>(
      where: where != null ? where(BookFormatSecondary.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookFormatSecondary?> findById(
    _i1.Session session,
    int id, {
    BookFormatSecondaryInclude? include,
  }) async {
    return session.db.findById<BookFormatSecondary>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookFormatSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookFormatSecondary>(
      where: where(BookFormatSecondary.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookFormatSecondary row, {
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
    BookFormatSecondary row, {
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
    BookFormatSecondary row, {
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
    _i1.WhereExpressionBuilder<BookFormatSecondaryTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookFormatSecondary>(
      where: where != null ? where(BookFormatSecondary.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookFormatSecondaryInclude include({
    _i2.BookFormatInclude? bookFormat,
    _i2.BookInclude? book,
  }) {
    return BookFormatSecondaryInclude._(
      bookFormat: bookFormat,
      book: book,
    );
  }

  static BookFormatSecondaryIncludeList includeList({
    _i1.WhereExpressionBuilder<BookFormatSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookFormatSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookFormatSecondaryTable>? orderByList,
    BookFormatSecondaryInclude? include,
  }) {
    return BookFormatSecondaryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookFormatSecondary.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookFormatSecondary.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookFormatSecondaryImpl extends BookFormatSecondary {
  _BookFormatSecondaryImpl({
    int? id,
    required int bookFormatId,
    _i2.BookFormat? bookFormat,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          bookFormatId: bookFormatId,
          bookFormat: bookFormat,
          bookId: bookId,
          book: book,
        );

  @override
  BookFormatSecondary copyWith({
    Object? id = _Undefined,
    int? bookFormatId,
    Object? bookFormat = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookFormatSecondary(
      id: id is int? ? id : this.id,
      bookFormatId: bookFormatId ?? this.bookFormatId,
      bookFormat: bookFormat is _i2.BookFormat?
          ? bookFormat
          : this.bookFormat?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}

class BookFormatSecondaryTable extends _i1.Table {
  BookFormatSecondaryTable({super.tableRelation})
      : super(tableName: 'book_format_secondary') {
    bookFormatId = _i1.ColumnInt(
      'bookFormatId',
      this,
    );
    bookId = _i1.ColumnInt(
      'bookId',
      this,
    );
  }

  late final _i1.ColumnInt bookFormatId;

  /// The format of the book.
  _i2.BookFormatTable? _bookFormat;

  late final _i1.ColumnInt bookId;

  /// The book to use.
  _i2.BookTable? _book;

  _i2.BookFormatTable get bookFormat {
    if (_bookFormat != null) return _bookFormat!;
    _bookFormat = _i1.createRelationTable(
      relationFieldName: 'bookFormat',
      field: BookFormatSecondary.t.bookFormatId,
      foreignField: _i2.BookFormat.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookFormatTable(tableRelation: foreignTableRelation),
    );
    return _bookFormat!;
  }

  _i2.BookTable get book {
    if (_book != null) return _book!;
    _book = _i1.createRelationTable(
      relationFieldName: 'book',
      field: BookFormatSecondary.t.bookId,
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
        bookFormatId,
        bookId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'bookFormat') {
      return bookFormat;
    }
    if (relationField == 'book') {
      return book;
    }
    return null;
  }
}

@Deprecated('Use BookFormatSecondaryTable.t instead.')
BookFormatSecondaryTable tBookFormatSecondary = BookFormatSecondaryTable();

class BookFormatSecondaryInclude extends _i1.IncludeObject {
  BookFormatSecondaryInclude._({
    _i2.BookFormatInclude? bookFormat,
    _i2.BookInclude? book,
  }) {
    _bookFormat = bookFormat;
    _book = book;
  }

  _i2.BookFormatInclude? _bookFormat;

  _i2.BookInclude? _book;

  @override
  Map<String, _i1.Include?> get includes => {
        'bookFormat': _bookFormat,
        'book': _book,
      };

  @override
  _i1.Table get table => BookFormatSecondary.t;
}

class BookFormatSecondaryIncludeList extends _i1.IncludeList {
  BookFormatSecondaryIncludeList._({
    _i1.WhereExpressionBuilder<BookFormatSecondaryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookFormatSecondary.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookFormatSecondary.t;
}

class BookFormatSecondaryRepository {
  const BookFormatSecondaryRepository._();

  final attachRow = const BookFormatSecondaryAttachRowRepository._();

  Future<List<BookFormatSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookFormatSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookFormatSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookFormatSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookFormatSecondaryInclude? include,
  }) async {
    return session.dbNext.find<BookFormatSecondary>(
      where: where?.call(BookFormatSecondary.t),
      orderBy: orderBy?.call(BookFormatSecondary.t),
      orderByList: orderByList?.call(BookFormatSecondary.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookFormatSecondary?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookFormatSecondaryTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookFormatSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookFormatSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookFormatSecondaryInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookFormatSecondary>(
      where: where?.call(BookFormatSecondary.t),
      orderBy: orderBy?.call(BookFormatSecondary.t),
      orderByList: orderByList?.call(BookFormatSecondary.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookFormatSecondary?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookFormatSecondaryInclude? include,
  }) async {
    return session.dbNext.findById<BookFormatSecondary>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookFormatSecondary>> insert(
    _i1.Session session,
    List<BookFormatSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookFormatSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookFormatSecondary> insertRow(
    _i1.Session session,
    BookFormatSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookFormatSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookFormatSecondary>> update(
    _i1.Session session,
    List<BookFormatSecondary> rows, {
    _i1.ColumnSelections<BookFormatSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookFormatSecondary>(
      rows,
      columns: columns?.call(BookFormatSecondary.t),
      transaction: transaction,
    );
  }

  Future<BookFormatSecondary> updateRow(
    _i1.Session session,
    BookFormatSecondary row, {
    _i1.ColumnSelections<BookFormatSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookFormatSecondary>(
      row,
      columns: columns?.call(BookFormatSecondary.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookFormatSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookFormatSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookFormatSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookFormatSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookFormatSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookFormatSecondary>(
      where: where(BookFormatSecondary.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookFormatSecondaryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookFormatSecondary>(
      where: where?.call(BookFormatSecondary.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookFormatSecondaryAttachRowRepository {
  const BookFormatSecondaryAttachRowRepository._();

  Future<void> bookFormat(
    _i1.Session session,
    BookFormatSecondary bookFormatSecondary,
    _i2.BookFormat bookFormat,
  ) async {
    if (bookFormatSecondary.id == null) {
      throw ArgumentError.notNull('bookFormatSecondary.id');
    }
    if (bookFormat.id == null) {
      throw ArgumentError.notNull('bookFormat.id');
    }

    var $bookFormatSecondary =
        bookFormatSecondary.copyWith(bookFormatId: bookFormat.id);
    await session.dbNext.updateRow<BookFormatSecondary>(
      $bookFormatSecondary,
      columns: [BookFormatSecondary.t.bookFormatId],
    );
  }

  Future<void> book(
    _i1.Session session,
    BookFormatSecondary bookFormatSecondary,
    _i2.Book book,
  ) async {
    if (bookFormatSecondary.id == null) {
      throw ArgumentError.notNull('bookFormatSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookFormatSecondary = bookFormatSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<BookFormatSecondary>(
      $bookFormatSecondary,
      columns: [BookFormatSecondary.t.bookId],
    );
  }
}
