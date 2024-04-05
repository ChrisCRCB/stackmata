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

/// An award given to a book.
abstract class BookAward extends _i1.TableRow {
  BookAward._({
    int? id,
    required this.name,
    this.books,
  }) : super(id);

  factory BookAward({
    int? id,
    required String name,
    List<_i2.BookAwardSecondary>? books,
  }) = _BookAwardImpl;

  factory BookAward.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookAward(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      books: serializationManager.deserialize<List<_i2.BookAwardSecondary>?>(
          jsonSerialization['books']),
    );
  }

  static final t = BookAwardTable();

  static const db = BookAwardRepository._();

  /// The name of this award.
  String name;

  /// The books with this award.
  List<_i2.BookAwardSecondary>? books;

  @override
  _i1.Table get table => t;

  BookAward copyWith({
    int? id,
    String? name,
    List<_i2.BookAwardSecondary>? books,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (books != null) 'books': books?.toJson(valueToJson: (v) => v.toJson()),
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
      case 'name':
        name = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookAward>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAwardTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookAwardInclude? include,
  }) async {
    return session.db.find<BookAward>(
      where: where != null ? where(BookAward.t) : null,
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
  static Future<BookAward?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAwardTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookAwardInclude? include,
  }) async {
    return session.db.findSingleRow<BookAward>(
      where: where != null ? where(BookAward.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookAward?> findById(
    _i1.Session session,
    int id, {
    BookAwardInclude? include,
  }) async {
    return session.db.findById<BookAward>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookAwardTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookAward>(
      where: where(BookAward.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookAward row, {
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
    BookAward row, {
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
    BookAward row, {
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
    _i1.WhereExpressionBuilder<BookAwardTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookAward>(
      where: where != null ? where(BookAward.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookAwardInclude include({_i2.BookAwardSecondaryIncludeList? books}) {
    return BookAwardInclude._(books: books);
  }

  static BookAwardIncludeList includeList({
    _i1.WhereExpressionBuilder<BookAwardTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookAwardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAwardTable>? orderByList,
    BookAwardInclude? include,
  }) {
    return BookAwardIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookAward.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookAward.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookAwardImpl extends BookAward {
  _BookAwardImpl({
    int? id,
    required String name,
    List<_i2.BookAwardSecondary>? books,
  }) : super._(
          id: id,
          name: name,
          books: books,
        );

  @override
  BookAward copyWith({
    Object? id = _Undefined,
    String? name,
    Object? books = _Undefined,
  }) {
    return BookAward(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      books:
          books is List<_i2.BookAwardSecondary>? ? books : this.books?.clone(),
    );
  }
}

class BookAwardTable extends _i1.Table {
  BookAwardTable({super.tableRelation}) : super(tableName: 'book_awards') {
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  /// The name of this award.
  late final _i1.ColumnString name;

  /// The books with this award.
  _i2.BookAwardSecondaryTable? ___books;

  /// The books with this award.
  _i1.ManyRelation<_i2.BookAwardSecondaryTable>? _books;

  _i2.BookAwardSecondaryTable get __books {
    if (___books != null) return ___books!;
    ___books = _i1.createRelationTable(
      relationFieldName: '__books',
      field: BookAward.t.id,
      foreignField: _i2.BookAwardSecondary.t.awardId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookAwardSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___books!;
  }

  _i1.ManyRelation<_i2.BookAwardSecondaryTable> get books {
    if (_books != null) return _books!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'books',
      field: BookAward.t.id,
      foreignField: _i2.BookAwardSecondary.t.awardId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookAwardSecondaryTable(tableRelation: foreignTableRelation),
    );
    _books = _i1.ManyRelation<_i2.BookAwardSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookAwardSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _books!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
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

@Deprecated('Use BookAwardTable.t instead.')
BookAwardTable tBookAward = BookAwardTable();

class BookAwardInclude extends _i1.IncludeObject {
  BookAwardInclude._({_i2.BookAwardSecondaryIncludeList? books}) {
    _books = books;
  }

  _i2.BookAwardSecondaryIncludeList? _books;

  @override
  Map<String, _i1.Include?> get includes => {'books': _books};

  @override
  _i1.Table get table => BookAward.t;
}

class BookAwardIncludeList extends _i1.IncludeList {
  BookAwardIncludeList._({
    _i1.WhereExpressionBuilder<BookAwardTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookAward.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookAward.t;
}

class BookAwardRepository {
  const BookAwardRepository._();

  final attach = const BookAwardAttachRepository._();

  final attachRow = const BookAwardAttachRowRepository._();

  final detach = const BookAwardDetachRepository._();

  final detachRow = const BookAwardDetachRowRepository._();

  Future<List<BookAward>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAwardTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookAwardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAwardTable>? orderByList,
    _i1.Transaction? transaction,
    BookAwardInclude? include,
  }) async {
    return session.dbNext.find<BookAward>(
      where: where?.call(BookAward.t),
      orderBy: orderBy?.call(BookAward.t),
      orderByList: orderByList?.call(BookAward.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookAward?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAwardTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookAwardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAwardTable>? orderByList,
    _i1.Transaction? transaction,
    BookAwardInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookAward>(
      where: where?.call(BookAward.t),
      orderBy: orderBy?.call(BookAward.t),
      orderByList: orderByList?.call(BookAward.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookAward?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookAwardInclude? include,
  }) async {
    return session.dbNext.findById<BookAward>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookAward>> insert(
    _i1.Session session,
    List<BookAward> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookAward>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookAward> insertRow(
    _i1.Session session,
    BookAward row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookAward>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookAward>> update(
    _i1.Session session,
    List<BookAward> rows, {
    _i1.ColumnSelections<BookAwardTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookAward>(
      rows,
      columns: columns?.call(BookAward.t),
      transaction: transaction,
    );
  }

  Future<BookAward> updateRow(
    _i1.Session session,
    BookAward row, {
    _i1.ColumnSelections<BookAwardTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookAward>(
      row,
      columns: columns?.call(BookAward.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookAward> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookAward>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookAward row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookAward>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookAwardTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookAward>(
      where: where(BookAward.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAwardTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookAward>(
      where: where?.call(BookAward.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookAwardAttachRepository {
  const BookAwardAttachRepository._();

  Future<void> books(
    _i1.Session session,
    BookAward bookAward,
    List<_i2.BookAwardSecondary> bookAwardSecondary,
  ) async {
    if (bookAwardSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookAwardSecondary.id');
    }
    if (bookAward.id == null) {
      throw ArgumentError.notNull('bookAward.id');
    }

    var $bookAwardSecondary = bookAwardSecondary
        .map((e) => e.copyWith(awardId: bookAward.id))
        .toList();
    await session.dbNext.update<_i2.BookAwardSecondary>(
      $bookAwardSecondary,
      columns: [_i2.BookAwardSecondary.t.awardId],
    );
  }
}

class BookAwardAttachRowRepository {
  const BookAwardAttachRowRepository._();

  Future<void> books(
    _i1.Session session,
    BookAward bookAward,
    _i2.BookAwardSecondary bookAwardSecondary,
  ) async {
    if (bookAwardSecondary.id == null) {
      throw ArgumentError.notNull('bookAwardSecondary.id');
    }
    if (bookAward.id == null) {
      throw ArgumentError.notNull('bookAward.id');
    }

    var $bookAwardSecondary =
        bookAwardSecondary.copyWith(awardId: bookAward.id);
    await session.dbNext.updateRow<_i2.BookAwardSecondary>(
      $bookAwardSecondary,
      columns: [_i2.BookAwardSecondary.t.awardId],
    );
  }
}

class BookAwardDetachRepository {
  const BookAwardDetachRepository._();

  Future<void> books(
    _i1.Session session,
    List<_i2.BookAwardSecondary> bookAwardSecondary,
  ) async {
    if (bookAwardSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookAwardSecondary.id');
    }

    var $bookAwardSecondary =
        bookAwardSecondary.map((e) => e.copyWith(awardId: null)).toList();
    await session.dbNext.update<_i2.BookAwardSecondary>(
      $bookAwardSecondary,
      columns: [_i2.BookAwardSecondary.t.awardId],
    );
  }
}

class BookAwardDetachRowRepository {
  const BookAwardDetachRowRepository._();

  Future<void> books(
    _i1.Session session,
    _i2.BookAwardSecondary bookAwardSecondary,
  ) async {
    if (bookAwardSecondary.id == null) {
      throw ArgumentError.notNull('bookAwardSecondary.id');
    }

    var $bookAwardSecondary = bookAwardSecondary.copyWith(awardId: null);
    await session.dbNext.updateRow<_i2.BookAwardSecondary>(
      $bookAwardSecondary,
      columns: [_i2.BookAwardSecondary.t.awardId],
    );
  }
}
