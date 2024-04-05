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

/// The language of a book.
abstract class BookLanguage extends _i1.TableRow {
  BookLanguage._({
    int? id,
    required this.name,
    this.secondaries,
  }) : super(id);

  factory BookLanguage({
    int? id,
    required String name,
    List<_i2.BookLanguageSecondary>? secondaries,
  }) = _BookLanguageImpl;

  factory BookLanguage.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookLanguage(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      secondaries:
          serializationManager.deserialize<List<_i2.BookLanguageSecondary>?>(
              jsonSerialization['secondaries']),
    );
  }

  static final t = BookLanguageTable();

  static const db = BookLanguageRepository._();

  /// The name of this language.
  String name;

  /// The entries linking a language to books.
  List<_i2.BookLanguageSecondary>? secondaries;

  @override
  _i1.Table get table => t;

  BookLanguage copyWith({
    int? id,
    String? name,
    List<_i2.BookLanguageSecondary>? secondaries,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (secondaries != null)
        'secondaries': secondaries?.toJson(valueToJson: (v) => v.toJson()),
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
      if (secondaries != null)
        'secondaries': secondaries?.toJson(valueToJson: (v) => v.allToJson()),
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
  static Future<List<BookLanguage>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookLanguageTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookLanguageInclude? include,
  }) async {
    return session.db.find<BookLanguage>(
      where: where != null ? where(BookLanguage.t) : null,
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
  static Future<BookLanguage?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookLanguageTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookLanguageInclude? include,
  }) async {
    return session.db.findSingleRow<BookLanguage>(
      where: where != null ? where(BookLanguage.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BookLanguage?> findById(
    _i1.Session session,
    int id, {
    BookLanguageInclude? include,
  }) async {
    return session.db.findById<BookLanguage>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookLanguageTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BookLanguage>(
      where: where(BookLanguage.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BookLanguage row, {
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
    BookLanguage row, {
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
    BookLanguage row, {
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
    _i1.WhereExpressionBuilder<BookLanguageTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BookLanguage>(
      where: where != null ? where(BookLanguage.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookLanguageInclude include(
      {_i2.BookLanguageSecondaryIncludeList? secondaries}) {
    return BookLanguageInclude._(secondaries: secondaries);
  }

  static BookLanguageIncludeList includeList({
    _i1.WhereExpressionBuilder<BookLanguageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookLanguageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookLanguageTable>? orderByList,
    BookLanguageInclude? include,
  }) {
    return BookLanguageIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BookLanguage.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BookLanguage.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookLanguageImpl extends BookLanguage {
  _BookLanguageImpl({
    int? id,
    required String name,
    List<_i2.BookLanguageSecondary>? secondaries,
  }) : super._(
          id: id,
          name: name,
          secondaries: secondaries,
        );

  @override
  BookLanguage copyWith({
    Object? id = _Undefined,
    String? name,
    Object? secondaries = _Undefined,
  }) {
    return BookLanguage(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      secondaries: secondaries is List<_i2.BookLanguageSecondary>?
          ? secondaries
          : this.secondaries?.clone(),
    );
  }
}

class BookLanguageTable extends _i1.Table {
  BookLanguageTable({super.tableRelation})
      : super(tableName: 'book_languages') {
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  /// The name of this language.
  late final _i1.ColumnString name;

  /// The entries linking a language to books.
  _i2.BookLanguageSecondaryTable? ___secondaries;

  /// The entries linking a language to books.
  _i1.ManyRelation<_i2.BookLanguageSecondaryTable>? _secondaries;

  _i2.BookLanguageSecondaryTable get __secondaries {
    if (___secondaries != null) return ___secondaries!;
    ___secondaries = _i1.createRelationTable(
      relationFieldName: '__secondaries',
      field: BookLanguage.t.id,
      foreignField: _i2.BookLanguageSecondary.t.bookLanguageId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookLanguageSecondaryTable(tableRelation: foreignTableRelation),
    );
    return ___secondaries!;
  }

  _i1.ManyRelation<_i2.BookLanguageSecondaryTable> get secondaries {
    if (_secondaries != null) return _secondaries!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'secondaries',
      field: BookLanguage.t.id,
      foreignField: _i2.BookLanguageSecondary.t.bookLanguageId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookLanguageSecondaryTable(tableRelation: foreignTableRelation),
    );
    _secondaries = _i1.ManyRelation<_i2.BookLanguageSecondaryTable>(
      tableWithRelations: relationTable,
      table: _i2.BookLanguageSecondaryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _secondaries!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'secondaries') {
      return __secondaries;
    }
    return null;
  }
}

@Deprecated('Use BookLanguageTable.t instead.')
BookLanguageTable tBookLanguage = BookLanguageTable();

class BookLanguageInclude extends _i1.IncludeObject {
  BookLanguageInclude._({_i2.BookLanguageSecondaryIncludeList? secondaries}) {
    _secondaries = secondaries;
  }

  _i2.BookLanguageSecondaryIncludeList? _secondaries;

  @override
  Map<String, _i1.Include?> get includes => {'secondaries': _secondaries};

  @override
  _i1.Table get table => BookLanguage.t;
}

class BookLanguageIncludeList extends _i1.IncludeList {
  BookLanguageIncludeList._({
    _i1.WhereExpressionBuilder<BookLanguageTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BookLanguage.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BookLanguage.t;
}

class BookLanguageRepository {
  const BookLanguageRepository._();

  final attach = const BookLanguageAttachRepository._();

  final attachRow = const BookLanguageAttachRowRepository._();

  final detach = const BookLanguageDetachRepository._();

  final detachRow = const BookLanguageDetachRowRepository._();

  Future<List<BookLanguage>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookLanguageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookLanguageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookLanguageTable>? orderByList,
    _i1.Transaction? transaction,
    BookLanguageInclude? include,
  }) async {
    return session.dbNext.find<BookLanguage>(
      where: where?.call(BookLanguage.t),
      orderBy: orderBy?.call(BookLanguage.t),
      orderByList: orderByList?.call(BookLanguage.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookLanguage?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookLanguageTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookLanguageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookLanguageTable>? orderByList,
    _i1.Transaction? transaction,
    BookLanguageInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BookLanguage>(
      where: where?.call(BookLanguage.t),
      orderBy: orderBy?.call(BookLanguage.t),
      orderByList: orderByList?.call(BookLanguage.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BookLanguage?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookLanguageInclude? include,
  }) async {
    return session.dbNext.findById<BookLanguage>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BookLanguage>> insert(
    _i1.Session session,
    List<BookLanguage> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BookLanguage>(
      rows,
      transaction: transaction,
    );
  }

  Future<BookLanguage> insertRow(
    _i1.Session session,
    BookLanguage row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BookLanguage>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BookLanguage>> update(
    _i1.Session session,
    List<BookLanguage> rows, {
    _i1.ColumnSelections<BookLanguageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BookLanguage>(
      rows,
      columns: columns?.call(BookLanguage.t),
      transaction: transaction,
    );
  }

  Future<BookLanguage> updateRow(
    _i1.Session session,
    BookLanguage row, {
    _i1.ColumnSelections<BookLanguageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BookLanguage>(
      row,
      columns: columns?.call(BookLanguage.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BookLanguage> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BookLanguage>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BookLanguage row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BookLanguage>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookLanguageTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BookLanguage>(
      where: where(BookLanguage.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookLanguageTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BookLanguage>(
      where: where?.call(BookLanguage.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookLanguageAttachRepository {
  const BookLanguageAttachRepository._();

  Future<void> secondaries(
    _i1.Session session,
    BookLanguage bookLanguage,
    List<_i2.BookLanguageSecondary> bookLanguageSecondary,
  ) async {
    if (bookLanguageSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookLanguageSecondary.id');
    }
    if (bookLanguage.id == null) {
      throw ArgumentError.notNull('bookLanguage.id');
    }

    var $bookLanguageSecondary = bookLanguageSecondary
        .map((e) => e.copyWith(bookLanguageId: bookLanguage.id))
        .toList();
    await session.dbNext.update<_i2.BookLanguageSecondary>(
      $bookLanguageSecondary,
      columns: [_i2.BookLanguageSecondary.t.bookLanguageId],
    );
  }
}

class BookLanguageAttachRowRepository {
  const BookLanguageAttachRowRepository._();

  Future<void> secondaries(
    _i1.Session session,
    BookLanguage bookLanguage,
    _i2.BookLanguageSecondary bookLanguageSecondary,
  ) async {
    if (bookLanguageSecondary.id == null) {
      throw ArgumentError.notNull('bookLanguageSecondary.id');
    }
    if (bookLanguage.id == null) {
      throw ArgumentError.notNull('bookLanguage.id');
    }

    var $bookLanguageSecondary =
        bookLanguageSecondary.copyWith(bookLanguageId: bookLanguage.id);
    await session.dbNext.updateRow<_i2.BookLanguageSecondary>(
      $bookLanguageSecondary,
      columns: [_i2.BookLanguageSecondary.t.bookLanguageId],
    );
  }
}

class BookLanguageDetachRepository {
  const BookLanguageDetachRepository._();

  Future<void> secondaries(
    _i1.Session session,
    List<_i2.BookLanguageSecondary> bookLanguageSecondary,
  ) async {
    if (bookLanguageSecondary.any((e) => e.id == null)) {
      throw ArgumentError.notNull('bookLanguageSecondary.id');
    }

    var $bookLanguageSecondary = bookLanguageSecondary
        .map((e) => e.copyWith(bookLanguageId: null))
        .toList();
    await session.dbNext.update<_i2.BookLanguageSecondary>(
      $bookLanguageSecondary,
      columns: [_i2.BookLanguageSecondary.t.bookLanguageId],
    );
  }
}

class BookLanguageDetachRowRepository {
  const BookLanguageDetachRowRepository._();

  Future<void> secondaries(
    _i1.Session session,
    _i2.BookLanguageSecondary bookLanguageSecondary,
  ) async {
    if (bookLanguageSecondary.id == null) {
      throw ArgumentError.notNull('bookLanguageSecondary.id');
    }

    var $bookLanguageSecondary =
        bookLanguageSecondary.copyWith(bookLanguageId: null);
    await session.dbNext.updateRow<_i2.BookLanguageSecondary>(
      $bookLanguageSecondary,
      columns: [_i2.BookLanguageSecondary.t.bookLanguageId],
    );
  }
}
