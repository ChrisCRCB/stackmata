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

/// The genre of a book.
abstract class BookGenre extends _i1.TableRow {
  BookGenre._({
    int? id,
    required this.name,
    this.books,
  }) : super(id);

  factory BookGenre({
    int? id,
    required String name,
    List<_i2.BookGenreSecondary>? books,
  }) = _BookGenreImpl;

  factory BookGenre.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookGenre(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      books: serializationManager.deserialize<List<_i2.BookGenreSecondary>?>(
          jsonSerialization['books']),
    );
  }

  static final t = BookGenreTable();

  static const db = BookGenreRepository._();

  /// The name of this genre.
  String name;

  /// The books with this genre.
  List<_i2.BookGenreSecondary>? books;

  @override
  _i1.Table get table => t;

  BookGenre copyWith({
    int? id,
    String? name,
    List<_i2.BookGenreSecondary>? books,
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
  static Future<List<BookGenre>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookGenreTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookGenreInclude? include,
  }) async {
    return session.db.find<BookGenre>(
      where: where != null ? where(BookGenre.t) : null,
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
  static Future<BookGenre?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookGenreTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookGenreInclude? include,
  }) async {
    return session.db.findSingleRow<BookGenre>(
      where: where != null ? where(BookGenre.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookGenre?> findById(
    _i1.Session session,
    int id, {
    BookGenreInclude? include,
  }) async {
    return session.db.findById<BookGenre>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookGenreTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookGenre>(
      where: where(BookGenre.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookGenre row, {
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
    BookGenre row, {
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
    BookGenre row, {
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
    _i1.WhereExpressionBuilder<BookGenreTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookGenre>(
      where: where != null ? where(BookGenre.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookGenreInclude include({_i2.BookGenreSecondaryIncludeList? books}) {
    return BookGenreInclude._(books: books);
  }

  static BookGenreIncludeList includeList({
    _i1.WhereExpressionBuilder<BookGenreTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookGenreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookGenreTable>? orderByList,
    BookGenreInclude? include,
  }) {
    return BookGenreIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookGenre.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookGenre.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookGenreImpl extends BookGenre {
  _BookGenreImpl({
    int? id,
    required String name,
    List<_i2.BookGenreSecondary>? books,
  }) : super._(
          id: id,
          name: name,
          books: books,
        );

  @override
  BookGenre copyWith({
    Object? id = _Undefined,
    String? name,
    Object? books = _Undefined,
  }) {
    return BookGenre(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      books:
          books is List<_i2.BookGenreSecondary>? ? books : this.books?.clone(),
    );
  }
}

class BookGenreTable extends _i1.Table {
  BookGenreTable({super.tableRelation}) : super(tableName: 'book_genres') {
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  /// The name of this genre.
  late final _i1.ColumnString name;

  /// The books with this genre.
  _i2.BookGenreSecondaryTable? ___books;

  /// The books with this genre.
  _i1.ManyRelation<_i2.BookGenreSecondaryTable>? _books;

  _i2.BookGenreSecondaryTable get __books {
    if (___books != null) return ___books!;
    ___books = _i1.createRelationTable(
      relationFieldName: '__books',
      field: BookGenre.t.id,
      foreignField: _i2.BookGenreSecondary.t.genreId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookGenreSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___books!;
  }

  _i1.ManyRelation<_i2.BookGenreSecondaryTable> get books {
    if (_books != null) return _books!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'books',
      field: BookGenre.t.id,
      foreignField: _i2.BookGenreSecondary.t.genreId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookGenreSecondaryTable(tableRelation: foreignTableRelation),
    );
    _books = _i1.ManyRelation<_i2.BookGenreSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookGenreSecondaryTable(
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

@Deprecated('Use BookGenreTable.t instead.')
BookGenreTable tBookGenre = BookGenreTable();

class BookGenreInclude extends _i1.IncludeObject {
  BookGenreInclude._({_i2.BookGenreSecondaryIncludeList? books}) {
    _books = books;
  }

  _i2.BookGenreSecondaryIncludeList? _books;

  @override
  Map<String, _i1.Include?> get includes => {'books': _books};

  @override
  _i1.Table get table => BookGenre.t;
}

class BookGenreIncludeList extends _i1.IncludeList {
  BookGenreIncludeList._({
    _i1.WhereExpressionBuilder<BookGenreTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookGenre.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookGenre.t;
}

class BookGenreRepository {
  const BookGenreRepository._();

  final attach = const BookGenreAttachRepository._();

  final attachRow = const BookGenreAttachRowRepository._();

  final detach = const BookGenreDetachRepository._();

  final detachRow = const BookGenreDetachRowRepository._();

  Future<List<BookGenre>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookGenreTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookGenreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookGenreTable>? orderByList,
    _i1.Transaction? transaction,
    BookGenreInclude? include,
  }) async {
    return session.dbNext.find<BookGenre>(
      where: where?.call(BookGenre.t),
      orderBy: orderBy?.call(BookGenre.t),
      orderByList: orderByList?.call(BookGenre.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookGenre?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookGenreTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookGenreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookGenreTable>? orderByList,
    _i1.Transaction? transaction,
    BookGenreInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookGenre>(
      where: where?.call(BookGenre.t),
      orderBy: orderBy?.call(BookGenre.t),
      orderByList: orderByList?.call(BookGenre.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookGenre?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookGenreInclude? include,
  }) async {
    return session.dbNext.findById<BookGenre>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookGenre>> insert(
    _i1.Session session,
    List<BookGenre> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookGenre>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookGenre> insertRow(
    _i1.Session session,
    BookGenre row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookGenre>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookGenre>> update(
    _i1.Session session,
    List<BookGenre> rows, {
    _i1.ColumnSelections<BookGenreTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookGenre>(
      rows,
      columns: columns?.call(BookGenre.t),
      transaction: transaction,
    );
  }

  Future<BookGenre> updateRow(
    _i1.Session session,
    BookGenre row, {
    _i1.ColumnSelections<BookGenreTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookGenre>(
      row,
      columns: columns?.call(BookGenre.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookGenre> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookGenre>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookGenre row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookGenre>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookGenreTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookGenre>(
      where: where(BookGenre.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookGenreTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookGenre>(
      where: where?.call(BookGenre.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookGenreAttachRepository {
  const BookGenreAttachRepository._();

  Future<void> books(
    _i1.Session session,
    BookGenre bookGenre,
    List<_i2.BookGenreSecondary> bookGenreSecondary,
  ) async {
    if (bookGenreSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookGenreSecondary.id');
    }
    if (bookGenre.id == null) {
      throw ArgumentError.notNull('bookGenre.id');
    }

    var $bookGenreSecondary = bookGenreSecondary
        .map((e) => e.copyWith(genreId: bookGenre.id))
        .toList();
    await session.dbNext.update<_i2.BookGenreSecondary>(
      $bookGenreSecondary,
      columns: [_i2.BookGenreSecondary.t.genreId],
    );
  }
}

class BookGenreAttachRowRepository {
  const BookGenreAttachRowRepository._();

  Future<void> books(
    _i1.Session session,
    BookGenre bookGenre,
    _i2.BookGenreSecondary bookGenreSecondary,
  ) async {
    if (bookGenreSecondary.id == null) {
      throw ArgumentError.notNull('bookGenreSecondary.id');
    }
    if (bookGenre.id == null) {
      throw ArgumentError.notNull('bookGenre.id');
    }

    var $bookGenreSecondary =
        bookGenreSecondary.copyWith(genreId: bookGenre.id);
    await session.dbNext.updateRow<_i2.BookGenreSecondary>(
      $bookGenreSecondary,
      columns: [_i2.BookGenreSecondary.t.genreId],
    );
  }
}

class BookGenreDetachRepository {
  const BookGenreDetachRepository._();

  Future<void> books(
    _i1.Session session,
    List<_i2.BookGenreSecondary> bookGenreSecondary,
  ) async {
    if (bookGenreSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookGenreSecondary.id');
    }

    var $bookGenreSecondary =
        bookGenreSecondary.map((e) => e.copyWith(genreId: null)).toList();
    await session.dbNext.update<_i2.BookGenreSecondary>(
      $bookGenreSecondary,
      columns: [_i2.BookGenreSecondary.t.genreId],
    );
  }
}

class BookGenreDetachRowRepository {
  const BookGenreDetachRowRepository._();

  Future<void> books(
    _i1.Session session,
    _i2.BookGenreSecondary bookGenreSecondary,
  ) async {
    if (bookGenreSecondary.id == null) {
      throw ArgumentError.notNull('bookGenreSecondary.id');
    }

    var $bookGenreSecondary = bookGenreSecondary.copyWith(genreId: null);
    await session.dbNext.updateRow<_i2.BookGenreSecondary>(
      $bookGenreSecondary,
      columns: [_i2.BookGenreSecondary.t.genreId],
    );
  }
}
