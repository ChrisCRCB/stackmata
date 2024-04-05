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

/// The author of a book.
abstract class BookAuthor extends _i1.TableRow {
  BookAuthor._({
    int? id,
    required this.lastFirst,
    required this.firstLast,
    required this.role,
    this.bookAuthors,
  }) : super(id);

  factory BookAuthor({
    int? id,
    required String lastFirst,
    required String firstLast,
    required String role,
    List<_i2.BookAuthorSecondary>? bookAuthors,
  }) = _BookAuthorImpl;

  factory BookAuthor.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookAuthor(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      lastFirst: serializationManager
          .deserialize<String>(jsonSerialization['lastFirst']),
      firstLast: serializationManager
          .deserialize<String>(jsonSerialization['firstLast']),
      role: serializationManager.deserialize<String>(jsonSerialization['role']),
      bookAuthors:
          serializationManager.deserialize<List<_i2.BookAuthorSecondary>?>(
              jsonSerialization['bookAuthors']),
    );
  }

  static final t = BookAuthorTable();

  static const db = BookAuthorRepository._();

  /// The name of the author as Last, First.
  String lastFirst;

  /// The name of the author as First, Last.
  String firstLast;

  /// The role of this person.
  String role;

  /// The books this author is involved in.
  List<_i2.BookAuthorSecondary>? bookAuthors;

  @override
  _i1.Table get table => t;

  BookAuthor copyWith({
    int? id,
    String? lastFirst,
    String? firstLast,
    String? role,
    List<_i2.BookAuthorSecondary>? bookAuthors,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'lastFirst': lastFirst,
      'firstLast': firstLast,
      'role': role,
      if (bookAuthors != null)
        'bookAuthors': bookAuthors?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'lastFirst': lastFirst,
      'firstLast': firstLast,
      'role': role,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'lastFirst': lastFirst,
      'firstLast': firstLast,
      'role': role,
      if (bookAuthors != null)
        'bookAuthors': bookAuthors?.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'lastFirst':
        lastFirst = value;
        return;
      case 'firstLast':
        firstLast = value;
        return;
      case 'role':
        role = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookAuthor>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAuthorTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookAuthorInclude? include,
  }) async {
    return session.db.find<BookAuthor>(
      where: where != null ? where(BookAuthor.t) : null,
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
  static Future<BookAuthor?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAuthorTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookAuthorInclude? include,
  }) async {
    return session.db.findSingleRow<BookAuthor>(
      where: where != null ? where(BookAuthor.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookAuthor?> findById(
    _i1.Session session,
    int id, {
    BookAuthorInclude? include,
  }) async {
    return session.db.findById<BookAuthor>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookAuthorTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookAuthor>(
      where: where(BookAuthor.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookAuthor row, {
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
    BookAuthor row, {
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
    BookAuthor row, {
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
    _i1.WhereExpressionBuilder<BookAuthorTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookAuthor>(
      where: where != null ? where(BookAuthor.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookAuthorInclude include(
      {_i2.BookAuthorSecondaryIncludeList? bookAuthors}) {
    return BookAuthorInclude._(bookAuthors: bookAuthors);
  }

  static BookAuthorIncludeList includeList({
    _i1.WhereExpressionBuilder<BookAuthorTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookAuthorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAuthorTable>? orderByList,
    BookAuthorInclude? include,
  }) {
    return BookAuthorIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookAuthor.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookAuthor.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookAuthorImpl extends BookAuthor {
  _BookAuthorImpl({
    int? id,
    required String lastFirst,
    required String firstLast,
    required String role,
    List<_i2.BookAuthorSecondary>? bookAuthors,
  }) : super._(
          id: id,
          lastFirst: lastFirst,
          firstLast: firstLast,
          role: role,
          bookAuthors: bookAuthors,
        );

  @override
  BookAuthor copyWith({
    Object? id = _Undefined,
    String? lastFirst,
    String? firstLast,
    String? role,
    Object? bookAuthors = _Undefined,
  }) {
    return BookAuthor(
      id: id is int? ? id : this.id,
      lastFirst: lastFirst ?? this.lastFirst,
      firstLast: firstLast ?? this.firstLast,
      role: role ?? this.role,
      bookAuthors: bookAuthors is List<_i2.BookAuthorSecondary>?
          ? bookAuthors
          : this.bookAuthors?.clone(),
    );
  }
}

class BookAuthorTable extends _i1.Table {
  BookAuthorTable({super.tableRelation}) : super(tableName: 'book_authors') {
    lastFirst = _i1.ColumnString(
      'lastFirst',
      this,
    );
    firstLast = _i1.ColumnString(
      'firstLast',
      this,
    );
    role = _i1.ColumnString(
      'role',
      this,
    );
  }

  /// The name of the author as Last, First.
  late final _i1.ColumnString lastFirst;

  /// The name of the author as First, Last.
  late final _i1.ColumnString firstLast;

  /// The role of this person.
  late final _i1.ColumnString role;

  /// The books this author is involved in.
  _i2.BookAuthorSecondaryTable? ___bookAuthors;

  /// The books this author is involved in.
  _i1.ManyRelation<_i2.BookAuthorSecondaryTable>? _bookAuthors;

  _i2.BookAuthorSecondaryTable get __bookAuthors {
    if (___bookAuthors != null) return ___bookAuthors!;
    ___bookAuthors = _i1.createRelationTable(
      relationFieldName: '__bookAuthors',
      field: BookAuthor.t.id,
      foreignField: _i2.BookAuthorSecondary.t.bookAuthorId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookAuthorSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___bookAuthors!;
  }

  _i1.ManyRelation<_i2.BookAuthorSecondaryTable> get bookAuthors {
    if (_bookAuthors != null) return _bookAuthors!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'bookAuthors',
      field: BookAuthor.t.id,
      foreignField: _i2.BookAuthorSecondary.t.bookAuthorId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookAuthorSecondaryTable(tableRelation: foreignTableRelation),
    );
    _bookAuthors = _i1.ManyRelation<_i2.BookAuthorSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookAuthorSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _bookAuthors!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        lastFirst,
        firstLast,
        role,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'bookAuthors') {
      return __bookAuthors;
    }
    return null;
  }
}

@Deprecated('Use BookAuthorTable.t instead.')
BookAuthorTable tBookAuthor = BookAuthorTable();

class BookAuthorInclude extends _i1.IncludeObject {
  BookAuthorInclude._({_i2.BookAuthorSecondaryIncludeList? bookAuthors}) {
    _bookAuthors = bookAuthors;
  }

  _i2.BookAuthorSecondaryIncludeList? _bookAuthors;

  @override
  Map<String, _i1.Include?> get includes => {'bookAuthors': _bookAuthors};

  @override
  _i1.Table get table => BookAuthor.t;
}

class BookAuthorIncludeList extends _i1.IncludeList {
  BookAuthorIncludeList._({
    _i1.WhereExpressionBuilder<BookAuthorTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookAuthor.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookAuthor.t;
}

class BookAuthorRepository {
  const BookAuthorRepository._();

  final attach = const BookAuthorAttachRepository._();

  final attachRow = const BookAuthorAttachRowRepository._();

  final detach = const BookAuthorDetachRepository._();

  final detachRow = const BookAuthorDetachRowRepository._();

  Future<List<BookAuthor>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAuthorTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookAuthorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAuthorTable>? orderByList,
    _i1.Transaction? transaction,
    BookAuthorInclude? include,
  }) async {
    return session.dbNext.find<BookAuthor>(
      where: where?.call(BookAuthor.t),
      orderBy: orderBy?.call(BookAuthor.t),
      orderByList: orderByList?.call(BookAuthor.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookAuthor?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAuthorTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookAuthorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookAuthorTable>? orderByList,
    _i1.Transaction? transaction,
    BookAuthorInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookAuthor>(
      where: where?.call(BookAuthor.t),
      orderBy: orderBy?.call(BookAuthor.t),
      orderByList: orderByList?.call(BookAuthor.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookAuthor?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookAuthorInclude? include,
  }) async {
    return session.dbNext.findById<BookAuthor>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookAuthor>> insert(
    _i1.Session session,
    List<BookAuthor> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookAuthor>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookAuthor> insertRow(
    _i1.Session session,
    BookAuthor row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookAuthor>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookAuthor>> update(
    _i1.Session session,
    List<BookAuthor> rows, {
    _i1.ColumnSelections<BookAuthorTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookAuthor>(
      rows,
      columns: columns?.call(BookAuthor.t),
      transaction: transaction,
    );
  }

  Future<BookAuthor> updateRow(
    _i1.Session session,
    BookAuthor row, {
    _i1.ColumnSelections<BookAuthorTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookAuthor>(
      row,
      columns: columns?.call(BookAuthor.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookAuthor> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookAuthor>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookAuthor row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookAuthor>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookAuthorTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookAuthor>(
      where: where(BookAuthor.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookAuthorTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookAuthor>(
      where: where?.call(BookAuthor.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookAuthorAttachRepository {
  const BookAuthorAttachRepository._();

  Future<void> bookAuthors(
    _i1.Session session,
    BookAuthor bookAuthor,
    List<_i2.BookAuthorSecondary> bookAuthorSecondary,
  ) async {
    if (bookAuthorSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookAuthorSecondary.id');
    }
    if (bookAuthor.id == null) {
      throw ArgumentError.notNull('bookAuthor.id');
    }

    var $bookAuthorSecondary = bookAuthorSecondary
        .map((e) => e.copyWith(bookAuthorId: bookAuthor.id))
        .toList();
    await session.dbNext.update<_i2.BookAuthorSecondary>(
      $bookAuthorSecondary,
      columns: [_i2.BookAuthorSecondary.t.bookAuthorId],
    );
  }
}

class BookAuthorAttachRowRepository {
  const BookAuthorAttachRowRepository._();

  Future<void> bookAuthors(
    _i1.Session session,
    BookAuthor bookAuthor,
    _i2.BookAuthorSecondary bookAuthorSecondary,
  ) async {
    if (bookAuthorSecondary.id == null) {
      throw ArgumentError.notNull('bookAuthorSecondary.id');
    }
    if (bookAuthor.id == null) {
      throw ArgumentError.notNull('bookAuthor.id');
    }

    var $bookAuthorSecondary =
        bookAuthorSecondary.copyWith(bookAuthorId: bookAuthor.id);
    await session.dbNext.updateRow<_i2.BookAuthorSecondary>(
      $bookAuthorSecondary,
      columns: [_i2.BookAuthorSecondary.t.bookAuthorId],
    );
  }
}

class BookAuthorDetachRepository {
  const BookAuthorDetachRepository._();

  Future<void> bookAuthors(
    _i1.Session session,
    List<_i2.BookAuthorSecondary> bookAuthorSecondary,
  ) async {
    if (bookAuthorSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookAuthorSecondary.id');
    }

    var $bookAuthorSecondary =
        bookAuthorSecondary.map((e) => e.copyWith(bookAuthorId: null)).toList();
    await session.dbNext.update<_i2.BookAuthorSecondary>(
      $bookAuthorSecondary,
      columns: [_i2.BookAuthorSecondary.t.bookAuthorId],
    );
  }
}

class BookAuthorDetachRowRepository {
  const BookAuthorDetachRowRepository._();

  Future<void> bookAuthors(
    _i1.Session session,
    _i2.BookAuthorSecondary bookAuthorSecondary,
  ) async {
    if (bookAuthorSecondary.id == null) {
      throw ArgumentError.notNull('bookAuthorSecondary.id');
    }

    var $bookAuthorSecondary = bookAuthorSecondary.copyWith(bookAuthorId: null);
    await session.dbNext.updateRow<_i2.BookAuthorSecondary>(
      $bookAuthorSecondary,
      columns: [_i2.BookAuthorSecondary.t.bookAuthorId],
    );
  }
}
