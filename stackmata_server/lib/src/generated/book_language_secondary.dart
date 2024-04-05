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

/// Link books to languages.
abstract class BookLanguageSecondary extends _i1.TableRow {
  BookLanguageSecondary._({
    int? id,
    required this.bookLanguageId,
    this.bookLanguage,
    required this.bookId,
    this.book,
  }) : super(id);

  factory BookLanguageSecondary({
    int? id,
    required int bookLanguageId,
    _i2.BookLanguage? bookLanguage,
    required int bookId,
    _i2.Book? book,
  }) = _BookLanguageSecondaryImpl;

  factory BookLanguageSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookLanguageSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      bookLanguageId: serializationManager
          .deserialize<int>(jsonSerialization['bookLanguageId']),
      bookLanguage: serializationManager
          .deserialize<_i2.BookLanguage?>(jsonSerialization['bookLanguage']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i2.Book?>(jsonSerialization['book']),
    );
  }

  static final t = BookLanguageSecondaryTable();

  static const db = BookLanguageSecondaryRepository._();

  int bookLanguageId;

  /// The language to use.
  _i2.BookLanguage? bookLanguage;

  int bookId;

  /// The book to use.
  _i2.Book? book;

  @override
  _i1.Table get table => t;

  BookLanguageSecondary copyWith({
    int? id,
    int? bookLanguageId,
    _i2.BookLanguage? bookLanguage,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'bookLanguageId': bookLanguageId,
      if (bookLanguage != null) 'bookLanguage': bookLanguage?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'bookLanguageId': bookLanguageId,
      'bookId': bookId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'bookLanguageId': bookLanguageId,
      if (bookLanguage != null) 'bookLanguage': bookLanguage?.allToJson(),
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
      case 'bookLanguageId':
        bookLanguageId = value;
        return;
      case 'bookId':
        bookId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookLanguageSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookLanguageSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookLanguageSecondaryInclude? include,
  }) async {
    return session.db.find<BookLanguageSecondary>(
      where: where != null ? where(BookLanguageSecondary.t) : null,
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
  static Future<BookLanguageSecondary?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookLanguageSecondaryTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookLanguageSecondaryInclude? include,
  }) async {
    return session.db.findSingleRow<BookLanguageSecondary>(
      where: where != null ? where(BookLanguageSecondary.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookLanguageSecondary?> findById(
    _i1.Session session,
    int id, {
    BookLanguageSecondaryInclude? include,
  }) async {
    return session.db.findById<BookLanguageSecondary>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookLanguageSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookLanguageSecondary>(
      where: where(BookLanguageSecondary.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookLanguageSecondary row, {
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
    BookLanguageSecondary row, {
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
    BookLanguageSecondary row, {
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
    _i1.WhereExpressionBuilder<BookLanguageSecondaryTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookLanguageSecondary>(
      where: where != null ? where(BookLanguageSecondary.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookLanguageSecondaryInclude include({
    _i2.BookLanguageInclude? bookLanguage,
    _i2.BookInclude? book,
  }) {
    return BookLanguageSecondaryInclude._(
      bookLanguage: bookLanguage,
      book: book,
    );
  }

  static BookLanguageSecondaryIncludeList includeList({
    _i1.WhereExpressionBuilder<BookLanguageSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookLanguageSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookLanguageSecondaryTable>? orderByList,
    BookLanguageSecondaryInclude? include,
  }) {
    return BookLanguageSecondaryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookLanguageSecondary.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookLanguageSecondary.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookLanguageSecondaryImpl extends BookLanguageSecondary {
  _BookLanguageSecondaryImpl({
    int? id,
    required int bookLanguageId,
    _i2.BookLanguage? bookLanguage,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          bookLanguageId: bookLanguageId,
          bookLanguage: bookLanguage,
          bookId: bookId,
          book: book,
        );

  @override
  BookLanguageSecondary copyWith({
    Object? id = _Undefined,
    int? bookLanguageId,
    Object? bookLanguage = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookLanguageSecondary(
      id: id is int? ? id : this.id,
      bookLanguageId: bookLanguageId ?? this.bookLanguageId,
      bookLanguage: bookLanguage is _i2.BookLanguage?
          ? bookLanguage
          : this.bookLanguage?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}

class BookLanguageSecondaryTable extends _i1.Table {
  BookLanguageSecondaryTable({super.tableRelation})
      : super(tableName: 'book_language_secondary') {
    bookLanguageId = _i1.ColumnInt(
      'bookLanguageId',
      this,
    );
    bookId = _i1.ColumnInt(
      'bookId',
      this,
    );
  }

  late final _i1.ColumnInt bookLanguageId;

  /// The language to use.
  _i2.BookLanguageTable? _bookLanguage;

  late final _i1.ColumnInt bookId;

  /// The book to use.
  _i2.BookTable? _book;

  _i2.BookLanguageTable get bookLanguage {
    if (_bookLanguage != null) return _bookLanguage!;
    _bookLanguage = _i1.createRelationTable(
      relationFieldName: 'bookLanguage',
      field: BookLanguageSecondary.t.bookLanguageId,
      foreignField: _i2.BookLanguage.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookLanguageTable(tableRelation: foreignTableRelation),
    );
    return _bookLanguage!;
  }

  _i2.BookTable get book {
    if (_book != null) return _book!;
    _book = _i1.createRelationTable(
      relationFieldName: 'book',
      field: BookLanguageSecondary.t.bookId,
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
        bookLanguageId,
        bookId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'bookLanguage') {
      return bookLanguage;
    }
    if (relationField == 'book') {
      return book;
    }
    return null;
  }
}

@Deprecated('Use BookLanguageSecondaryTable.t instead.')
BookLanguageSecondaryTable tBookLanguageSecondary =
    BookLanguageSecondaryTable();

class BookLanguageSecondaryInclude extends _i1.IncludeObject {
  BookLanguageSecondaryInclude._({
    _i2.BookLanguageInclude? bookLanguage,
    _i2.BookInclude? book,
  }) {
    _bookLanguage = bookLanguage;
    _book = book;
  }

  _i2.BookLanguageInclude? _bookLanguage;

  _i2.BookInclude? _book;

  @override
  Map<String, _i1.Include?> get includes => {
        'bookLanguage': _bookLanguage,
        'book': _book,
      };

  @override
  _i1.Table get table => BookLanguageSecondary.t;
}

class BookLanguageSecondaryIncludeList extends _i1.IncludeList {
  BookLanguageSecondaryIncludeList._({
    _i1.WhereExpressionBuilder<BookLanguageSecondaryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookLanguageSecondary.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookLanguageSecondary.t;
}

class BookLanguageSecondaryRepository {
  const BookLanguageSecondaryRepository._();

  final attachRow = const BookLanguageSecondaryAttachRowRepository._();

  Future<List<BookLanguageSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookLanguageSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookLanguageSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookLanguageSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookLanguageSecondaryInclude? include,
  }) async {
    return session.dbNext.find<BookLanguageSecondary>(
      where: where?.call(BookLanguageSecondary.t),
      orderBy: orderBy?.call(BookLanguageSecondary.t),
      orderByList: orderByList?.call(BookLanguageSecondary.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookLanguageSecondary?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookLanguageSecondaryTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookLanguageSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookLanguageSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookLanguageSecondaryInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookLanguageSecondary>(
      where: where?.call(BookLanguageSecondary.t),
      orderBy: orderBy?.call(BookLanguageSecondary.t),
      orderByList: orderByList?.call(BookLanguageSecondary.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookLanguageSecondary?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookLanguageSecondaryInclude? include,
  }) async {
    return session.dbNext.findById<BookLanguageSecondary>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookLanguageSecondary>> insert(
    _i1.Session session,
    List<BookLanguageSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookLanguageSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookLanguageSecondary> insertRow(
    _i1.Session session,
    BookLanguageSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookLanguageSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookLanguageSecondary>> update(
    _i1.Session session,
    List<BookLanguageSecondary> rows, {
    _i1.ColumnSelections<BookLanguageSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookLanguageSecondary>(
      rows,
      columns: columns?.call(BookLanguageSecondary.t),
      transaction: transaction,
    );
  }

  Future<BookLanguageSecondary> updateRow(
    _i1.Session session,
    BookLanguageSecondary row, {
    _i1.ColumnSelections<BookLanguageSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookLanguageSecondary>(
      row,
      columns: columns?.call(BookLanguageSecondary.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookLanguageSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookLanguageSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookLanguageSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookLanguageSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookLanguageSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookLanguageSecondary>(
      where: where(BookLanguageSecondary.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookLanguageSecondaryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookLanguageSecondary>(
      where: where?.call(BookLanguageSecondary.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookLanguageSecondaryAttachRowRepository {
  const BookLanguageSecondaryAttachRowRepository._();

  Future<void> bookLanguage(
    _i1.Session session,
    BookLanguageSecondary bookLanguageSecondary,
    _i2.BookLanguage bookLanguage,
  ) async {
    if (bookLanguageSecondary.id == null) {
      throw ArgumentError.notNull('bookLanguageSecondary.id');
    }
    if (bookLanguage.id == null) {
      throw ArgumentError.notNull('bookLanguage.id');
    }

    var $bookLanguageSecondary =
        bookLanguageSecondary.copyWith(bookLanguageId: bookLanguage.id);
    await session.dbNext.updateRow<BookLanguageSecondary>(
      $bookLanguageSecondary,
      columns: [BookLanguageSecondary.t.bookLanguageId],
    );
  }

  Future<void> book(
    _i1.Session session,
    BookLanguageSecondary bookLanguageSecondary,
    _i2.Book book,
  ) async {
    if (bookLanguageSecondary.id == null) {
      throw ArgumentError.notNull('bookLanguageSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookLanguageSecondary =
        bookLanguageSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<BookLanguageSecondary>(
      $bookLanguageSecondary,
      columns: [BookLanguageSecondary.t.bookId],
    );
  }
}
