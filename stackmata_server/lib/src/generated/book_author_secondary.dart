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

/// Connect books to authors.
abstract class BookAuthorSecondary extends _i1.TableRow {
  BookAuthorSecondary._({
    int? id,
    required this.bookAuthorId,
    this.bookAuthor,
    required this.bookId,
    this.book,
  }) : super(id);

  factory BookAuthorSecondary({
    int? id,
    required int bookAuthorId,
    _i2.BookAuthor? bookAuthor,
    required int bookId,
    _i2.Book? book,
  }) = _BookAuthorSecondaryImpl;

  factory BookAuthorSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookAuthorSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      bookAuthorId: serializationManager
          .deserialize<int>(jsonSerialization['bookAuthorId']),
      bookAuthor: serializationManager
          .deserialize<_i2.BookAuthor?>(jsonSerialization['bookAuthor']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i2.Book?>(jsonSerialization['book']),
    );
  }

  static final t = BookAuthorSecondaryTable();

  static const db = BookAuthorSecondaryRepository._();

  int bookAuthorId;

  /// The author to use.
  _i2.BookAuthor? bookAuthor;

  int bookId;

  /// The book to link the [author] to.
  _i2.Book? book;

  @override
  _i1.Table get table => t;

  BookAuthorSecondary copyWith({
    int? id,
    int? bookAuthorId,
    _i2.BookAuthor? bookAuthor,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'bookAuthorId': bookAuthorId,
      if (bookAuthor != null) 'bookAuthor': bookAuthor?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'bookAuthorId': bookAuthorId,
      'bookId': bookId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'bookAuthorId': bookAuthorId,
      if (bookAuthor != null) 'bookAuthor': bookAuthor?.allToJson(),
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
      case 'bookAuthorId':
        bookAuthorId = value;
        return;
      case 'bookId':
        bookId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookAuthorSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAuthorSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookAuthorSecondaryInclude? include,
  }) async {
    return session.db.find<BookAuthorSecondary>(
      where: where != null ? where(BookAuthorSecondary.t) : null,
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
  static Future<BookAuthorSecondary?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAuthorSecondaryTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookAuthorSecondaryInclude? include,
  }) async {
    return session.db.findSingleRow<BookAuthorSecondary>(
      where: where != null ? where(BookAuthorSecondary.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookAuthorSecondary?> findById(
    _i1.Session session,
    int id, {
    BookAuthorSecondaryInclude? include,
  }) async {
    return session.db.findById<BookAuthorSecondary>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookAuthorSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookAuthorSecondary>(
      where: where(BookAuthorSecondary.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookAuthorSecondary row, {
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
    BookAuthorSecondary row, {
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
    BookAuthorSecondary row, {
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
    _i1.WhereExpressionBuilder<BookAuthorSecondaryTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookAuthorSecondary>(
      where: where != null ? where(BookAuthorSecondary.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookAuthorSecondaryInclude include({
    _i2.BookAuthorInclude? bookAuthor,
    _i2.BookInclude? book,
  }) {
    return BookAuthorSecondaryInclude._(
      bookAuthor: bookAuthor,
      book: book,
    );
  }

  static BookAuthorSecondaryIncludeList includeList({
    _i1.WhereExpressionBuilder<BookAuthorSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookAuthorSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAuthorSecondaryTable>? orderByList,
    BookAuthorSecondaryInclude? include,
  }) {
    return BookAuthorSecondaryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookAuthorSecondary.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookAuthorSecondary.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookAuthorSecondaryImpl extends BookAuthorSecondary {
  _BookAuthorSecondaryImpl({
    int? id,
    required int bookAuthorId,
    _i2.BookAuthor? bookAuthor,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          bookAuthorId: bookAuthorId,
          bookAuthor: bookAuthor,
          bookId: bookId,
          book: book,
        );

  @override
  BookAuthorSecondary copyWith({
    Object? id = _Undefined,
    int? bookAuthorId,
    Object? bookAuthor = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookAuthorSecondary(
      id: id is int? ? id : this.id,
      bookAuthorId: bookAuthorId ?? this.bookAuthorId,
      bookAuthor: bookAuthor is _i2.BookAuthor?
          ? bookAuthor
          : this.bookAuthor?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}

class BookAuthorSecondaryTable extends _i1.Table {
  BookAuthorSecondaryTable({super.tableRelation})
      : super(tableName: 'book_author_secondary') {
    bookAuthorId = _i1.ColumnInt(
      'bookAuthorId',
      this,
    );
    bookId = _i1.ColumnInt(
      'bookId',
      this,
    );
  }

  late final _i1.ColumnInt bookAuthorId;

  /// The author to use.
  _i2.BookAuthorTable? _bookAuthor;

  late final _i1.ColumnInt bookId;

  /// The book to link the [author] to.
  _i2.BookTable? _book;

  _i2.BookAuthorTable get bookAuthor {
    if (_bookAuthor != null) return _bookAuthor!;
    _bookAuthor = _i1.createRelationTable(
      relationFieldName: 'bookAuthor',
      field: BookAuthorSecondary.t.bookAuthorId,
      foreignField: _i2.BookAuthor.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookAuthorTable(tableRelation: foreignTableRelation),
    );
    return _bookAuthor!;
  }

  _i2.BookTable get book {
    if (_book != null) return _book!;
    _book = _i1.createRelationTable(
      relationFieldName: 'book',
      field: BookAuthorSecondary.t.bookId,
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
        bookAuthorId,
        bookId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'bookAuthor') {
      return bookAuthor;
    }
    if (relationField == 'book') {
      return book;
    }
    return null;
  }
}

@Deprecated('Use BookAuthorSecondaryTable.t instead.')
BookAuthorSecondaryTable tBookAuthorSecondary = BookAuthorSecondaryTable();

class BookAuthorSecondaryInclude extends _i1.IncludeObject {
  BookAuthorSecondaryInclude._({
    _i2.BookAuthorInclude? bookAuthor,
    _i2.BookInclude? book,
  }) {
    _bookAuthor = bookAuthor;
    _book = book;
  }

  _i2.BookAuthorInclude? _bookAuthor;

  _i2.BookInclude? _book;

  @override
  Map<String, _i1.Include?> get includes => {
        'bookAuthor': _bookAuthor,
        'book': _book,
      };

  @override
  _i1.Table get table => BookAuthorSecondary.t;
}

class BookAuthorSecondaryIncludeList extends _i1.IncludeList {
  BookAuthorSecondaryIncludeList._({
    _i1.WhereExpressionBuilder<BookAuthorSecondaryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookAuthorSecondary.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookAuthorSecondary.t;
}

class BookAuthorSecondaryRepository {
  const BookAuthorSecondaryRepository._();

  final attachRow = const BookAuthorSecondaryAttachRowRepository._();

  Future<List<BookAuthorSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAuthorSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookAuthorSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAuthorSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookAuthorSecondaryInclude? include,
  }) async {
    return session.dbNext.find<BookAuthorSecondary>(
      where: where?.call(BookAuthorSecondary.t),
      orderBy: orderBy?.call(BookAuthorSecondary.t),
      orderByList: orderByList?.call(BookAuthorSecondary.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookAuthorSecondary?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAuthorSecondaryTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookAuthorSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAuthorSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookAuthorSecondaryInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookAuthorSecondary>(
      where: where?.call(BookAuthorSecondary.t),
      orderBy: orderBy?.call(BookAuthorSecondary.t),
      orderByList: orderByList?.call(BookAuthorSecondary.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookAuthorSecondary?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookAuthorSecondaryInclude? include,
  }) async {
    return session.dbNext.findById<BookAuthorSecondary>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookAuthorSecondary>> insert(
    _i1.Session session,
    List<BookAuthorSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookAuthorSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookAuthorSecondary> insertRow(
    _i1.Session session,
    BookAuthorSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookAuthorSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookAuthorSecondary>> update(
    _i1.Session session,
    List<BookAuthorSecondary> rows, {
    _i1.ColumnSelections<BookAuthorSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookAuthorSecondary>(
      rows,
      columns: columns?.call(BookAuthorSecondary.t),
      transaction: transaction,
    );
  }

  Future<BookAuthorSecondary> updateRow(
    _i1.Session session,
    BookAuthorSecondary row, {
    _i1.ColumnSelections<BookAuthorSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookAuthorSecondary>(
      row,
      columns: columns?.call(BookAuthorSecondary.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookAuthorSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookAuthorSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookAuthorSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookAuthorSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookAuthorSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookAuthorSecondary>(
      where: where(BookAuthorSecondary.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAuthorSecondaryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookAuthorSecondary>(
      where: where?.call(BookAuthorSecondary.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookAuthorSecondaryAttachRowRepository {
  const BookAuthorSecondaryAttachRowRepository._();

  Future<void> bookAuthor(
    _i1.Session session,
    BookAuthorSecondary bookAuthorSecondary,
    _i2.BookAuthor bookAuthor,
  ) async {
    if (bookAuthorSecondary.id == null) {
      throw ArgumentError.notNull('bookAuthorSecondary.id');
    }
    if (bookAuthor.id == null) {
      throw ArgumentError.notNull('bookAuthor.id');
    }

    var $bookAuthorSecondary =
        bookAuthorSecondary.copyWith(bookAuthorId: bookAuthor.id);
    await session.dbNext.updateRow<BookAuthorSecondary>(
      $bookAuthorSecondary,
      columns: [BookAuthorSecondary.t.bookAuthorId],
    );
  }

  Future<void> book(
    _i1.Session session,
    BookAuthorSecondary bookAuthorSecondary,
    _i2.Book book,
  ) async {
    if (bookAuthorSecondary.id == null) {
      throw ArgumentError.notNull('bookAuthorSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookAuthorSecondary = bookAuthorSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<BookAuthorSecondary>(
      $bookAuthorSecondary,
      columns: [BookAuthorSecondary.t.bookId],
    );
  }
}
