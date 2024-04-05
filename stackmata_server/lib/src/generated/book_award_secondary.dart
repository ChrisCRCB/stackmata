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

/// Link books to awards.
abstract class BookAwardSecondary extends _i1.TableRow {
  BookAwardSecondary._({
    int? id,
    required this.awardId,
    this.award,
    required this.bookId,
    this.book,
  }) : super(id);

  factory BookAwardSecondary({
    int? id,
    required int awardId,
    _i2.BookAward? award,
    required int bookId,
    _i2.Book? book,
  }) = _BookAwardSecondaryImpl;

  factory BookAwardSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookAwardSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      awardId:
          serializationManager.deserialize<int>(jsonSerialization['awardId']),
      award: serializationManager
          .deserialize<_i2.BookAward?>(jsonSerialization['award']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i2.Book?>(jsonSerialization['book']),
    );
  }

  static final t = BookAwardSecondaryTable();

  static const db = BookAwardSecondaryRepository._();

  int awardId;

  /// The award given to a book.
  _i2.BookAward? award;

  int bookId;

  /// The book to use.
  _i2.Book? book;

  @override
  _i1.Table get table => t;

  BookAwardSecondary copyWith({
    int? id,
    int? awardId,
    _i2.BookAward? award,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'awardId': awardId,
      if (award != null) 'award': award?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'awardId': awardId,
      'bookId': bookId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'awardId': awardId,
      if (award != null) 'award': award?.allToJson(),
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
      case 'awardId':
        awardId = value;
        return;
      case 'bookId':
        bookId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookAwardSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAwardSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookAwardSecondaryInclude? include,
  }) async {
    return session.db.find<BookAwardSecondary>(
      where: where != null ? where(BookAwardSecondary.t) : null,
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
  static Future<BookAwardSecondary?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAwardSecondaryTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookAwardSecondaryInclude? include,
  }) async {
    return session.db.findSingleRow<BookAwardSecondary>(
      where: where != null ? where(BookAwardSecondary.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookAwardSecondary?> findById(
    _i1.Session session,
    int id, {
    BookAwardSecondaryInclude? include,
  }) async {
    return session.db.findById<BookAwardSecondary>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookAwardSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookAwardSecondary>(
      where: where(BookAwardSecondary.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookAwardSecondary row, {
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
    BookAwardSecondary row, {
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
    BookAwardSecondary row, {
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
    _i1.WhereExpressionBuilder<BookAwardSecondaryTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookAwardSecondary>(
      where: where != null ? where(BookAwardSecondary.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookAwardSecondaryInclude include({
    _i2.BookAwardInclude? award,
    _i2.BookInclude? book,
  }) {
    return BookAwardSecondaryInclude._(
      award: award,
      book: book,
    );
  }

  static BookAwardSecondaryIncludeList includeList({
    _i1.WhereExpressionBuilder<BookAwardSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookAwardSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAwardSecondaryTable>? orderByList,
    BookAwardSecondaryInclude? include,
  }) {
    return BookAwardSecondaryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookAwardSecondary.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookAwardSecondary.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookAwardSecondaryImpl extends BookAwardSecondary {
  _BookAwardSecondaryImpl({
    int? id,
    required int awardId,
    _i2.BookAward? award,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          awardId: awardId,
          award: award,
          bookId: bookId,
          book: book,
        );

  @override
  BookAwardSecondary copyWith({
    Object? id = _Undefined,
    int? awardId,
    Object? award = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookAwardSecondary(
      id: id is int? ? id : this.id,
      awardId: awardId ?? this.awardId,
      award: award is _i2.BookAward? ? award : this.award?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}

class BookAwardSecondaryTable extends _i1.Table {
  BookAwardSecondaryTable({super.tableRelation})
      : super(tableName: 'book_award_secondary') {
    awardId = _i1.ColumnInt(
      'awardId',
      this,
    );
    bookId = _i1.ColumnInt(
      'bookId',
      this,
    );
  }

  late final _i1.ColumnInt awardId;

  /// The award given to a book.
  _i2.BookAwardTable? _award;

  late final _i1.ColumnInt bookId;

  /// The book to use.
  _i2.BookTable? _book;

  _i2.BookAwardTable get award {
    if (_award != null) return _award!;
    _award = _i1.createRelationTable(
      relationFieldName: 'award',
      field: BookAwardSecondary.t.awardId,
      foreignField: _i2.BookAward.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookAwardTable(tableRelation: foreignTableRelation),
    );
    return _award!;
  }

  _i2.BookTable get book {
    if (_book != null) return _book!;
    _book = _i1.createRelationTable(
      relationFieldName: 'book',
      field: BookAwardSecondary.t.bookId,
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
        awardId,
        bookId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'award') {
      return award;
    }
    if (relationField == 'book') {
      return book;
    }
    return null;
  }
}

@Deprecated('Use BookAwardSecondaryTable.t instead.')
BookAwardSecondaryTable tBookAwardSecondary = BookAwardSecondaryTable();

class BookAwardSecondaryInclude extends _i1.IncludeObject {
  BookAwardSecondaryInclude._({
    _i2.BookAwardInclude? award,
    _i2.BookInclude? book,
  }) {
    _award = award;
    _book = book;
  }

  _i2.BookAwardInclude? _award;

  _i2.BookInclude? _book;

  @override
  Map<String, _i1.Include?> get includes => {
        'award': _award,
        'book': _book,
      };

  @override
  _i1.Table get table => BookAwardSecondary.t;
}

class BookAwardSecondaryIncludeList extends _i1.IncludeList {
  BookAwardSecondaryIncludeList._({
    _i1.WhereExpressionBuilder<BookAwardSecondaryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookAwardSecondary.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookAwardSecondary.t;
}

class BookAwardSecondaryRepository {
  const BookAwardSecondaryRepository._();

  final attachRow = const BookAwardSecondaryAttachRowRepository._();

  Future<List<BookAwardSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAwardSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookAwardSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAwardSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookAwardSecondaryInclude? include,
  }) async {
    return session.dbNext.find<BookAwardSecondary>(
      where: where?.call(BookAwardSecondary.t),
      orderBy: orderBy?.call(BookAwardSecondary.t),
      orderByList: orderByList?.call(BookAwardSecondary.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookAwardSecondary?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAwardSecondaryTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookAwardSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAwardSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookAwardSecondaryInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookAwardSecondary>(
      where: where?.call(BookAwardSecondary.t),
      orderBy: orderBy?.call(BookAwardSecondary.t),
      orderByList: orderByList?.call(BookAwardSecondary.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookAwardSecondary?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookAwardSecondaryInclude? include,
  }) async {
    return session.dbNext.findById<BookAwardSecondary>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookAwardSecondary>> insert(
    _i1.Session session,
    List<BookAwardSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookAwardSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookAwardSecondary> insertRow(
    _i1.Session session,
    BookAwardSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookAwardSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookAwardSecondary>> update(
    _i1.Session session,
    List<BookAwardSecondary> rows, {
    _i1.ColumnSelections<BookAwardSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookAwardSecondary>(
      rows,
      columns: columns?.call(BookAwardSecondary.t),
      transaction: transaction,
    );
  }

  Future<BookAwardSecondary> updateRow(
    _i1.Session session,
    BookAwardSecondary row, {
    _i1.ColumnSelections<BookAwardSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookAwardSecondary>(
      row,
      columns: columns?.call(BookAwardSecondary.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookAwardSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookAwardSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookAwardSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookAwardSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookAwardSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookAwardSecondary>(
      where: where(BookAwardSecondary.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAwardSecondaryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookAwardSecondary>(
      where: where?.call(BookAwardSecondary.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookAwardSecondaryAttachRowRepository {
  const BookAwardSecondaryAttachRowRepository._();

  Future<void> award(
    _i1.Session session,
    BookAwardSecondary bookAwardSecondary,
    _i2.BookAward award,
  ) async {
    if (bookAwardSecondary.id == null) {
      throw ArgumentError.notNull('bookAwardSecondary.id');
    }
    if (award.id == null) {
      throw ArgumentError.notNull('award.id');
    }

    var $bookAwardSecondary = bookAwardSecondary.copyWith(awardId: award.id);
    await session.dbNext.updateRow<BookAwardSecondary>(
      $bookAwardSecondary,
      columns: [BookAwardSecondary.t.awardId],
    );
  }

  Future<void> book(
    _i1.Session session,
    BookAwardSecondary bookAwardSecondary,
    _i2.Book book,
  ) async {
    if (bookAwardSecondary.id == null) {
      throw ArgumentError.notNull('bookAwardSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookAwardSecondary = bookAwardSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<BookAwardSecondary>(
      $bookAwardSecondary,
      columns: [BookAwardSecondary.t.bookId],
    );
  }
}
