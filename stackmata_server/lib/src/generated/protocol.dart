/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'book.dart' as _i3;
import 'book_author.dart' as _i4;
import 'book_author_secondary.dart' as _i5;
import 'book_award.dart' as _i6;
import 'book_award_secondary.dart' as _i7;
import 'book_call_number.dart' as _i8;
import 'book_format.dart' as _i9;
import 'book_format_secondary.dart' as _i10;
import 'book_genre.dart' as _i11;
import 'book_genre_secondary.dart' as _i12;
import 'book_language.dart' as _i13;
import 'book_language_secondary.dart' as _i14;
import 'book_series.dart' as _i15;
import 'book_series_secondary.dart' as _i16;
import 'protocol.dart' as _i17;
export 'book.dart';
export 'book_author.dart';
export 'book_author_secondary.dart';
export 'book_award.dart';
export 'book_award_secondary.dart';
export 'book_call_number.dart';
export 'book_format.dart';
export 'book_format_secondary.dart';
export 'book_genre.dart';
export 'book_genre_secondary.dart';
export 'book_language.dart';
export 'book_language_secondary.dart';
export 'book_series.dart';
export 'book_series_secondary.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'book_author_secondary',
      dartName: 'BookAuthorSecondary',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_author_secondary_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'bookAuthorId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'bookId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'book_author_secondary_fk_0',
          columns: ['bookAuthorId'],
          referenceTable: 'book_authors',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'book_author_secondary_fk_1',
          columns: ['bookId'],
          referenceTable: 'books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_author_secondary_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_authors',
      dartName: 'BookAuthor',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_authors_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'lastFirst',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'firstLast',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'role',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_authors_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_award_secondary',
      dartName: 'BookAwardSecondary',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_award_secondary_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'awardId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'bookId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'book_award_secondary_fk_0',
          columns: ['awardId'],
          referenceTable: 'book_awards',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'book_award_secondary_fk_1',
          columns: ['bookId'],
          referenceTable: 'books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_award_secondary_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_awards',
      dartName: 'BookAward',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_awards_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_awards_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_call_numbers',
      dartName: 'BookCallNumber',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_call_numbers_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'callNumber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'bookId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'book_call_numbers_fk_0',
          columns: ['bookId'],
          referenceTable: 'books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_call_numbers_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_format_secondary',
      dartName: 'BookFormatSecondary',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_format_secondary_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'bookFormatId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'bookId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'book_format_secondary_fk_0',
          columns: ['bookFormatId'],
          referenceTable: 'book_formats',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'book_format_secondary_fk_1',
          columns: ['bookId'],
          referenceTable: 'books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_format_secondary_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_formats',
      dartName: 'BookFormat',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_formats_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'code',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_formats_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_genre_secondary',
      dartName: 'BookGenreSecondary',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_genre_secondary_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'genreId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'bookId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'book_genre_secondary_fk_0',
          columns: ['genreId'],
          referenceTable: 'book_genres',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'book_genre_secondary_fk_1',
          columns: ['bookId'],
          referenceTable: 'books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_genre_secondary_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_genres',
      dartName: 'BookGenre',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_genres_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_genres_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_language_secondary',
      dartName: 'BookLanguageSecondary',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'book_language_secondary_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'bookLanguageId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'bookId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'book_language_secondary_fk_0',
          columns: ['bookLanguageId'],
          referenceTable: 'book_languages',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'book_language_secondary_fk_1',
          columns: ['bookId'],
          referenceTable: 'books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_language_secondary_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_languages',
      dartName: 'BookLanguage',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_languages_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_languages_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_series',
      dartName: 'BookSeries',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_series_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_series_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'book_series_secondary',
      dartName: 'BookSeriesSecondary',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'book_series_secondary_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'seriesId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'bookId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'book_series_secondary_fk_0',
          columns: ['seriesId'],
          referenceTable: 'book_series',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'book_series_secondary_fk_1',
          columns: ['bookId'],
          referenceTable: 'books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'book_series_secondary_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'books',
      dartName: 'Book',
      schema: 'public',
      module: 'stackmata',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'books_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'publisher',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'summary',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'source',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'entryDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'numberOfCopies',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'books_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.Book) {
      return _i3.Book.fromJson(data, this) as T;
    }
    if (t == _i4.BookAuthor) {
      return _i4.BookAuthor.fromJson(data, this) as T;
    }
    if (t == _i5.BookAuthorSecondary) {
      return _i5.BookAuthorSecondary.fromJson(data, this) as T;
    }
    if (t == _i6.BookAward) {
      return _i6.BookAward.fromJson(data, this) as T;
    }
    if (t == _i7.BookAwardSecondary) {
      return _i7.BookAwardSecondary.fromJson(data, this) as T;
    }
    if (t == _i8.BookCallNumber) {
      return _i8.BookCallNumber.fromJson(data, this) as T;
    }
    if (t == _i9.BookFormat) {
      return _i9.BookFormat.fromJson(data, this) as T;
    }
    if (t == _i10.BookFormatSecondary) {
      return _i10.BookFormatSecondary.fromJson(data, this) as T;
    }
    if (t == _i11.BookGenre) {
      return _i11.BookGenre.fromJson(data, this) as T;
    }
    if (t == _i12.BookGenreSecondary) {
      return _i12.BookGenreSecondary.fromJson(data, this) as T;
    }
    if (t == _i13.BookLanguage) {
      return _i13.BookLanguage.fromJson(data, this) as T;
    }
    if (t == _i14.BookLanguageSecondary) {
      return _i14.BookLanguageSecondary.fromJson(data, this) as T;
    }
    if (t == _i15.BookSeries) {
      return _i15.BookSeries.fromJson(data, this) as T;
    }
    if (t == _i16.BookSeriesSecondary) {
      return _i16.BookSeriesSecondary.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.Book?>()) {
      return (data != null ? _i3.Book.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.BookAuthor?>()) {
      return (data != null ? _i4.BookAuthor.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.BookAuthorSecondary?>()) {
      return (data != null
          ? _i5.BookAuthorSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i6.BookAward?>()) {
      return (data != null ? _i6.BookAward.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.BookAwardSecondary?>()) {
      return (data != null ? _i7.BookAwardSecondary.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.BookCallNumber?>()) {
      return (data != null ? _i8.BookCallNumber.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i9.BookFormat?>()) {
      return (data != null ? _i9.BookFormat.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.BookFormatSecondary?>()) {
      return (data != null
          ? _i10.BookFormatSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i11.BookGenre?>()) {
      return (data != null ? _i11.BookGenre.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.BookGenreSecondary?>()) {
      return (data != null
          ? _i12.BookGenreSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i13.BookLanguage?>()) {
      return (data != null ? _i13.BookLanguage.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.BookLanguageSecondary?>()) {
      return (data != null
          ? _i14.BookLanguageSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i15.BookSeries?>()) {
      return (data != null ? _i15.BookSeries.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i16.BookSeriesSecondary?>()) {
      return (data != null
          ? _i16.BookSeriesSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<List<_i17.BookAuthorSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookAuthorSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookLanguageSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookLanguageSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookSeriesSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookSeriesSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookAwardSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookAwardSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookGenreSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookGenreSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookFormatSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookFormatSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookCallNumber>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookCallNumber>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookAuthorSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookAuthorSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookAwardSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookAwardSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookFormatSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookFormatSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookGenreSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookGenreSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookLanguageSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookLanguageSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i17.BookSeriesSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.BookSeriesSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.Book) {
      return 'Book';
    }
    if (data is _i4.BookAuthor) {
      return 'BookAuthor';
    }
    if (data is _i5.BookAuthorSecondary) {
      return 'BookAuthorSecondary';
    }
    if (data is _i6.BookAward) {
      return 'BookAward';
    }
    if (data is _i7.BookAwardSecondary) {
      return 'BookAwardSecondary';
    }
    if (data is _i8.BookCallNumber) {
      return 'BookCallNumber';
    }
    if (data is _i9.BookFormat) {
      return 'BookFormat';
    }
    if (data is _i10.BookFormatSecondary) {
      return 'BookFormatSecondary';
    }
    if (data is _i11.BookGenre) {
      return 'BookGenre';
    }
    if (data is _i12.BookGenreSecondary) {
      return 'BookGenreSecondary';
    }
    if (data is _i13.BookLanguage) {
      return 'BookLanguage';
    }
    if (data is _i14.BookLanguageSecondary) {
      return 'BookLanguageSecondary';
    }
    if (data is _i15.BookSeries) {
      return 'BookSeries';
    }
    if (data is _i16.BookSeriesSecondary) {
      return 'BookSeriesSecondary';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Book') {
      return deserialize<_i3.Book>(data['data']);
    }
    if (data['className'] == 'BookAuthor') {
      return deserialize<_i4.BookAuthor>(data['data']);
    }
    if (data['className'] == 'BookAuthorSecondary') {
      return deserialize<_i5.BookAuthorSecondary>(data['data']);
    }
    if (data['className'] == 'BookAward') {
      return deserialize<_i6.BookAward>(data['data']);
    }
    if (data['className'] == 'BookAwardSecondary') {
      return deserialize<_i7.BookAwardSecondary>(data['data']);
    }
    if (data['className'] == 'BookCallNumber') {
      return deserialize<_i8.BookCallNumber>(data['data']);
    }
    if (data['className'] == 'BookFormat') {
      return deserialize<_i9.BookFormat>(data['data']);
    }
    if (data['className'] == 'BookFormatSecondary') {
      return deserialize<_i10.BookFormatSecondary>(data['data']);
    }
    if (data['className'] == 'BookGenre') {
      return deserialize<_i11.BookGenre>(data['data']);
    }
    if (data['className'] == 'BookGenreSecondary') {
      return deserialize<_i12.BookGenreSecondary>(data['data']);
    }
    if (data['className'] == 'BookLanguage') {
      return deserialize<_i13.BookLanguage>(data['data']);
    }
    if (data['className'] == 'BookLanguageSecondary') {
      return deserialize<_i14.BookLanguageSecondary>(data['data']);
    }
    if (data['className'] == 'BookSeries') {
      return deserialize<_i15.BookSeries>(data['data']);
    }
    if (data['className'] == 'BookSeriesSecondary') {
      return deserialize<_i16.BookSeriesSecondary>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.Book:
        return _i3.Book.t;
      case _i4.BookAuthor:
        return _i4.BookAuthor.t;
      case _i5.BookAuthorSecondary:
        return _i5.BookAuthorSecondary.t;
      case _i6.BookAward:
        return _i6.BookAward.t;
      case _i7.BookAwardSecondary:
        return _i7.BookAwardSecondary.t;
      case _i8.BookCallNumber:
        return _i8.BookCallNumber.t;
      case _i9.BookFormat:
        return _i9.BookFormat.t;
      case _i10.BookFormatSecondary:
        return _i10.BookFormatSecondary.t;
      case _i11.BookGenre:
        return _i11.BookGenre.t;
      case _i12.BookGenreSecondary:
        return _i12.BookGenreSecondary.t;
      case _i13.BookLanguage:
        return _i13.BookLanguage.t;
      case _i14.BookLanguageSecondary:
        return _i14.BookLanguageSecondary.t;
      case _i15.BookSeries:
        return _i15.BookSeries.t;
      case _i16.BookSeriesSecondary:
        return _i16.BookSeriesSecondary.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'stackmata';
}
