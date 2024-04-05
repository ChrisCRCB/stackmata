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

/// A call number for a book.
///
/// Call numbers are unique to each book.
abstract class BookCallNumber extends _i1.TableRow {
  BookCallNumber._({
    int? id,
    required this.callNumber,
    required this.bookId,
    this.book,
  }) : super(id);

  factory BookCallNumber({
    int? id,
    required String callNumber,
    required int bookId,
    _i2.Book? book,
  }) = _BookCallNumberImpl;

  factory BookCallNumber.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookCallNumber(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      callNumber: serializationManager
          .deserialize<String>(jsonSerialization['callNumber']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i2.Book?>(jsonSerialization['book']),
    );
  }

  static final t = BookCallNumberTable();

  static const db = BookCallNumberRepository._();

  /// The call number of the book.
  String callNumber;

  int bookId;

  /// The book this call number is associated with.
  _i2.Book? book;

  @override
  _i1.Table get table => t;

  BookCallNumber copyWith({
    int? id,
    String? callNumber,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'callNumber': callNumber,
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'callNumber': callNumber,
      'bookId': bookId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'callNumber': callNumber,
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
      case 'callNumber':
        callNumber = value;
        return;
      case 'bookId':
        bookId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookCallNumber>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookCallNumberTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookCallNumberInclude? include,
  }) async {
    return session.db.find<BookCallNumber>(
      where: where != null ? where(BookCallNumber.t) : null,
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
  static Future<BookCallNumber?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookCallNumberTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookCallNumberInclude? include,
  }) async {
    return session.db.findSingleRow<BookCallNumber>(
      where: where != null ? where(BookCallNumber.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookCallNumber?> findById(
    _i1.Session session,
    int id, {
    BookCallNumberInclude? include,
  }) async {
    return session.db.findById<BookCallNumber>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookCallNumberTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookCallNumber>(
      where: where(BookCallNumber.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookCallNumber row, {
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
    BookCallNumber row, {
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
    BookCallNumber row, {
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
    _i1.WhereExpressionBuilder<BookCallNumberTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookCallNumber>(
      where: where != null ? where(BookCallNumber.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookCallNumberInclude include({_i2.BookInclude? book}) {
    return BookCallNumberInclude._(book: book);
  }

  static BookCallNumberIncludeList includeList({
    _i1.WhereExpressionBuilder<BookCallNumberTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookCallNumberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookCallNumberTable>? orderByList,
    BookCallNumberInclude? include,
  }) {
    return BookCallNumberIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookCallNumber.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookCallNumber.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookCallNumberImpl extends BookCallNumber {
  _BookCallNumberImpl({
    int? id,
    required String callNumber,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          callNumber: callNumber,
          bookId: bookId,
          book: book,
        );

  @override
  BookCallNumber copyWith({
    Object? id = _Undefined,
    String? callNumber,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookCallNumber(
      id: id is int? ? id : this.id,
      callNumber: callNumber ?? this.callNumber,
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}

class BookCallNumberTable extends _i1.Table {
  BookCallNumberTable({super.tableRelation})
      : super(tableName: 'book_call_numbers') {
    callNumber = _i1.ColumnString(
      'callNumber',
      this,
    );
    bookId = _i1.ColumnInt(
      'bookId',
      this,
    );
  }

  /// The call number of the book.
  late final _i1.ColumnString callNumber;

  late final _i1.ColumnInt bookId;

  /// The book this call number is associated with.
  _i2.BookTable? _book;

  _i2.BookTable get book {
    if (_book != null) return _book!;
    _book = _i1.createRelationTable(
      relationFieldName: 'book',
      field: BookCallNumber.t.bookId,
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
        callNumber,
        bookId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'book') {
      return book;
    }
    return null;
  }
}

@Deprecated('Use BookCallNumberTable.t instead.')
BookCallNumberTable tBookCallNumber = BookCallNumberTable();

class BookCallNumberInclude extends _i1.IncludeObject {
  BookCallNumberInclude._({_i2.BookInclude? book}) {
    _book = book;
  }

  _i2.BookInclude? _book;

  @override
  Map<String, _i1.Include?> get includes => {'book': _book};

  @override
  _i1.Table get table => BookCallNumber.t;
}

class BookCallNumberIncludeList extends _i1.IncludeList {
  BookCallNumberIncludeList._({
    _i1.WhereExpressionBuilder<BookCallNumberTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookCallNumber.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookCallNumber.t;
}

class BookCallNumberRepository {
  const BookCallNumberRepository._();

  final attachRow = const BookCallNumberAttachRowRepository._();

  Future<List<BookCallNumber>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookCallNumberTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookCallNumberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookCallNumberTable>? orderByList,
    _i1.Transaction? transaction,
    BookCallNumberInclude? include,
  }) async {
    return session.dbNext.find<BookCallNumber>(
      where: where?.call(BookCallNumber.t),
      orderBy: orderBy?.call(BookCallNumber.t),
      orderByList: orderByList?.call(BookCallNumber.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookCallNumber?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookCallNumberTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookCallNumberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookCallNumberTable>? orderByList,
    _i1.Transaction? transaction,
    BookCallNumberInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookCallNumber>(
      where: where?.call(BookCallNumber.t),
      orderBy: orderBy?.call(BookCallNumber.t),
      orderByList: orderByList?.call(BookCallNumber.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookCallNumber?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookCallNumberInclude? include,
  }) async {
    return session.dbNext.findById<BookCallNumber>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookCallNumber>> insert(
    _i1.Session session,
    List<BookCallNumber> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookCallNumber>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookCallNumber> insertRow(
    _i1.Session session,
    BookCallNumber row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookCallNumber>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookCallNumber>> update(
    _i1.Session session,
    List<BookCallNumber> rows, {
    _i1.ColumnSelections<BookCallNumberTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookCallNumber>(
      rows,
      columns: columns?.call(BookCallNumber.t),
      transaction: transaction,
    );
  }

  Future<BookCallNumber> updateRow(
    _i1.Session session,
    BookCallNumber row, {
    _i1.ColumnSelections<BookCallNumberTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookCallNumber>(
      row,
      columns: columns?.call(BookCallNumber.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookCallNumber> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookCallNumber>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookCallNumber row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookCallNumber>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookCallNumberTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookCallNumber>(
      where: where(BookCallNumber.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookCallNumberTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookCallNumber>(
      where: where?.call(BookCallNumber.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookCallNumberAttachRowRepository {
  const BookCallNumberAttachRowRepository._();

  Future<void> book(
    _i1.Session session,
    BookCallNumber bookCallNumber,
    _i2.Book book,
  ) async {
    if (bookCallNumber.id == null) {
      throw ArgumentError.notNull('bookCallNumber.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookCallNumber = bookCallNumber.copyWith(bookId: book.id);
    await session.dbNext.updateRow<BookCallNumber>(
      $bookCallNumber,
      columns: [BookCallNumber.t.bookId],
    );
  }
}
