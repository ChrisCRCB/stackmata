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

/// Link books to authors.
abstract class BookGenreSecondary extends _i1.TableRow {
  BookGenreSecondary._({
    int? id,
    required this.genreId,
    this.genre,
    required this.bookId,
    this.book,
  }) : super(id);

  factory BookGenreSecondary({
    int? id,
    required int genreId,
    _i2.BookGenre? genre,
    required int bookId,
    _i2.Book? book,
  }) = _BookGenreSecondaryImpl;

  factory BookGenreSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookGenreSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      genreId:
          serializationManager.deserialize<int>(jsonSerialization['genreId']),
      genre: serializationManager
          .deserialize<_i2.BookGenre?>(jsonSerialization['genre']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i2.Book?>(jsonSerialization['book']),
    );
  }

  static final t = BookGenreSecondaryTable();

  static const db = BookGenreSecondaryRepository._();

  int genreId;

  /// The genre to use.
  _i2.BookGenre? genre;

  int bookId;

  /// The book to use.
  _i2.Book? book;

  @override
  _i1.Table get table => t;

  BookGenreSecondary copyWith({
    int? id,
    int? genreId,
    _i2.BookGenre? genre,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'genreId': genreId,
      if (genre != null) 'genre': genre?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'genreId': genreId,
      'bookId': bookId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'genreId': genreId,
      if (genre != null) 'genre': genre?.allToJson(),
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
      case 'genreId':
        genreId = value;
        return;
      case 'bookId':
        bookId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BookGenreSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookGenreSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookGenreSecondaryInclude? include,
  }) async {
    return session.db.find<BookGenreSecondary>(
      where: where != null ? where(BookGenreSecondary.t) : null,
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
  static Future<BookGenreSecondary?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookGenreSecondaryTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookGenreSecondaryInclude? include,
  }) async {
    return session.db.findSingleRow<BookGenreSecondary>(
      where: where != null ? where(BookGenreSecondary.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookGenreSecondary?> findById(
    _i1.Session session,
    int id, {
    BookGenreSecondaryInclude? include,
  }) async {
    return session.db.findById<BookGenreSecondary>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookGenreSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookGenreSecondary>(
      where: where(BookGenreSecondary.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookGenreSecondary row, {
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
    BookGenreSecondary row, {
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
    BookGenreSecondary row, {
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
    _i1.WhereExpressionBuilder<BookGenreSecondaryTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookGenreSecondary>(
      where: where != null ? where(BookGenreSecondary.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookGenreSecondaryInclude include({
    _i2.BookGenreInclude? genre,
    _i2.BookInclude? book,
  }) {
    return BookGenreSecondaryInclude._(
      genre: genre,
      book: book,
    );
  }

  static BookGenreSecondaryIncludeList includeList({
    _i1.WhereExpressionBuilder<BookGenreSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookGenreSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookGenreSecondaryTable>? orderByList,
    BookGenreSecondaryInclude? include,
  }) {
    return BookGenreSecondaryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookGenreSecondary.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookGenreSecondary.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookGenreSecondaryImpl extends BookGenreSecondary {
  _BookGenreSecondaryImpl({
    int? id,
    required int genreId,
    _i2.BookGenre? genre,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          genreId: genreId,
          genre: genre,
          bookId: bookId,
          book: book,
        );

  @override
  BookGenreSecondary copyWith({
    Object? id = _Undefined,
    int? genreId,
    Object? genre = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookGenreSecondary(
      id: id is int? ? id : this.id,
      genreId: genreId ?? this.genreId,
      genre: genre is _i2.BookGenre? ? genre : this.genre?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}

class BookGenreSecondaryTable extends _i1.Table {
  BookGenreSecondaryTable({super.tableRelation})
      : super(tableName: 'book_genre_secondary') {
    genreId = _i1.ColumnInt(
      'genreId',
      this,
    );
    bookId = _i1.ColumnInt(
      'bookId',
      this,
    );
  }

  late final _i1.ColumnInt genreId;

  /// The genre to use.
  _i2.BookGenreTable? _genre;

  late final _i1.ColumnInt bookId;

  /// The book to use.
  _i2.BookTable? _book;

  _i2.BookGenreTable get genre {
    if (_genre != null) return _genre!;
    _genre = _i1.createRelationTable(
      relationFieldName: 'genre',
      field: BookGenreSecondary.t.genreId,
      foreignField: _i2.BookGenre.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookGenreTable(tableRelation: foreignTableRelation),
    );
    return _genre!;
  }

  _i2.BookTable get book {
    if (_book != null) return _book!;
    _book = _i1.createRelationTable(
      relationFieldName: 'book',
      field: BookGenreSecondary.t.bookId,
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
        genreId,
        bookId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'genre') {
      return genre;
    }
    if (relationField == 'book') {
      return book;
    }
    return null;
  }
}

@Deprecated('Use BookGenreSecondaryTable.t instead.')
BookGenreSecondaryTable tBookGenreSecondary = BookGenreSecondaryTable();

class BookGenreSecondaryInclude extends _i1.IncludeObject {
  BookGenreSecondaryInclude._({
    _i2.BookGenreInclude? genre,
    _i2.BookInclude? book,
  }) {
    _genre = genre;
    _book = book;
  }

  _i2.BookGenreInclude? _genre;

  _i2.BookInclude? _book;

  @override
  Map<String, _i1.Include?> get includes => {
        'genre': _genre,
        'book': _book,
      };

  @override
  _i1.Table get table => BookGenreSecondary.t;
}

class BookGenreSecondaryIncludeList extends _i1.IncludeList {
  BookGenreSecondaryIncludeList._({
    _i1.WhereExpressionBuilder<BookGenreSecondaryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookGenreSecondary.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookGenreSecondary.t;
}

class BookGenreSecondaryRepository {
  const BookGenreSecondaryRepository._();

  final attachRow = const BookGenreSecondaryAttachRowRepository._();

  Future<List<BookGenreSecondary>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookGenreSecondaryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookGenreSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookGenreSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookGenreSecondaryInclude? include,
  }) async {
    return session.dbNext.find<BookGenreSecondary>(
      where: where?.call(BookGenreSecondary.t),
      orderBy: orderBy?.call(BookGenreSecondary.t),
      orderByList: orderByList?.call(BookGenreSecondary.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookGenreSecondary?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookGenreSecondaryTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookGenreSecondaryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookGenreSecondaryTable>? orderByList,
    _i1.Transaction? transaction,
    BookGenreSecondaryInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookGenreSecondary>(
      where: where?.call(BookGenreSecondary.t),
      orderBy: orderBy?.call(BookGenreSecondary.t),
      orderByList: orderByList?.call(BookGenreSecondary.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookGenreSecondary?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookGenreSecondaryInclude? include,
  }) async {
    return session.dbNext.findById<BookGenreSecondary>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookGenreSecondary>> insert(
    _i1.Session session,
    List<BookGenreSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookGenreSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookGenreSecondary> insertRow(
    _i1.Session session,
    BookGenreSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookGenreSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookGenreSecondary>> update(
    _i1.Session session,
    List<BookGenreSecondary> rows, {
    _i1.ColumnSelections<BookGenreSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookGenreSecondary>(
      rows,
      columns: columns?.call(BookGenreSecondary.t),
      transaction: transaction,
    );
  }

  Future<BookGenreSecondary> updateRow(
    _i1.Session session,
    BookGenreSecondary row, {
    _i1.ColumnSelections<BookGenreSecondaryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookGenreSecondary>(
      row,
      columns: columns?.call(BookGenreSecondary.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookGenreSecondary> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookGenreSecondary>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookGenreSecondary row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookGenreSecondary>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookGenreSecondaryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookGenreSecondary>(
      where: where(BookGenreSecondary.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookGenreSecondaryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookGenreSecondary>(
      where: where?.call(BookGenreSecondary.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookGenreSecondaryAttachRowRepository {
  const BookGenreSecondaryAttachRowRepository._();

  Future<void> genre(
    _i1.Session session,
    BookGenreSecondary bookGenreSecondary,
    _i2.BookGenre genre,
  ) async {
    if (bookGenreSecondary.id == null) {
      throw ArgumentError.notNull('bookGenreSecondary.id');
    }
    if (genre.id == null) {
      throw ArgumentError.notNull('genre.id');
    }

    var $bookGenreSecondary = bookGenreSecondary.copyWith(genreId: genre.id);
    await session.dbNext.updateRow<BookGenreSecondary>(
      $bookGenreSecondary,
      columns: [BookGenreSecondary.t.genreId],
    );
  }

  Future<void> book(
    _i1.Session session,
    BookGenreSecondary bookGenreSecondary,
    _i2.Book book,
  ) async {
    if (bookGenreSecondary.id == null) {
      throw ArgumentError.notNull('bookGenreSecondary.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $bookGenreSecondary = bookGenreSecondary.copyWith(bookId: book.id);
    await session.dbNext.updateRow<BookGenreSecondary>(
      $bookGenreSecondary,
      columns: [BookGenreSecondary.t.bookId],
    );
  }
}
