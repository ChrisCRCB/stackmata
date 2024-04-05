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
import 'book_exception.dart' as _i9;
import 'book_format.dart' as _i10;
import 'book_format_secondary.dart' as _i11;
import 'book_genre.dart' as _i12;
import 'book_genre_secondary.dart' as _i13;
import 'book_language.dart' as _i14;
import 'book_language_secondary.dart' as _i15;
import 'book_series.dart' as _i16;
import 'book_series_secondary.dart' as _i17;
import 'pagination.dart' as _i18;
import 'protocol.dart' as _i19;
import 'package:stackmata_server/src/generated/book.dart' as _i20;
export 'book.dart';
export 'book_author.dart';
export 'book_author_secondary.dart';
export 'book_award.dart';
export 'book_award_secondary.dart';
export 'book_call_number.dart';
export 'book_exception.dart';
export 'book_format.dart';
export 'book_format_secondary.dart';
export 'book_genre.dart';
export 'book_genre_secondary.dart';
export 'book_language.dart';
export 'book_language_secondary.dart';
export 'book_series.dart';
export 'book_series_secondary.dart';
export 'pagination.dart';

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
    if (t == _i9.BookException) {
      return _i9.BookException.fromJson(data, this) as T;
    }
    if (t == _i10.BookFormat) {
      return _i10.BookFormat.fromJson(data, this) as T;
    }
    if (t == _i11.BookFormatSecondary) {
      return _i11.BookFormatSecondary.fromJson(data, this) as T;
    }
    if (t == _i12.BookGenre) {
      return _i12.BookGenre.fromJson(data, this) as T;
    }
    if (t == _i13.BookGenreSecondary) {
      return _i13.BookGenreSecondary.fromJson(data, this) as T;
    }
    if (t == _i14.BookLanguage) {
      return _i14.BookLanguage.fromJson(data, this) as T;
    }
    if (t == _i15.BookLanguageSecondary) {
      return _i15.BookLanguageSecondary.fromJson(data, this) as T;
    }
    if (t == _i16.BookSeries) {
      return _i16.BookSeries.fromJson(data, this) as T;
    }
    if (t == _i17.BookSeriesSecondary) {
      return _i17.BookSeriesSecondary.fromJson(data, this) as T;
    }
    if (t == _i18.Pagination) {
      return _i18.Pagination.fromJson(data, this) as T;
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
    if (t == _i1.getType<_i9.BookException?>()) {
      return (data != null ? _i9.BookException.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i10.BookFormat?>()) {
      return (data != null ? _i10.BookFormat.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.BookFormatSecondary?>()) {
      return (data != null
          ? _i11.BookFormatSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i12.BookGenre?>()) {
      return (data != null ? _i12.BookGenre.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i13.BookGenreSecondary?>()) {
      return (data != null
          ? _i13.BookGenreSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i14.BookLanguage?>()) {
      return (data != null ? _i14.BookLanguage.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i15.BookLanguageSecondary?>()) {
      return (data != null
          ? _i15.BookLanguageSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i16.BookSeries?>()) {
      return (data != null ? _i16.BookSeries.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i17.BookSeriesSecondary?>()) {
      return (data != null
          ? _i17.BookSeriesSecondary.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i18.Pagination?>()) {
      return (data != null ? _i18.Pagination.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i19.BookAuthorSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookAuthorSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i19.BookAuthor>) {
      return (data as List).map((e) => deserialize<_i19.BookAuthor>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookLanguageSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookLanguageSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i19.BookLanguage>) {
      return (data as List)
          .map((e) => deserialize<_i19.BookLanguage>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookSeriesSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookSeriesSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i19.BookSeries>) {
      return (data as List).map((e) => deserialize<_i19.BookSeries>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookAwardSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookAwardSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i19.BookAward>) {
      return (data as List).map((e) => deserialize<_i19.BookAward>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookGenreSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookGenreSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i19.BookGenre>) {
      return (data as List).map((e) => deserialize<_i19.BookGenre>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookFormatSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookFormatSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i19.BookFormat>) {
      return (data as List).map((e) => deserialize<_i19.BookFormat>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookCallNumber>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookCallNumber>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookAuthorSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookAuthorSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookAwardSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookAwardSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookFormatSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookFormatSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookGenreSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookGenreSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookLanguageSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookLanguageSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i19.BookSeriesSecondary>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.BookSeriesSecondary>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == List<_i20.Book>) {
      return (data as List).map((e) => deserialize<_i20.Book>(e)).toList()
          as dynamic;
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
    if (data is _i9.BookException) {
      return 'BookException';
    }
    if (data is _i10.BookFormat) {
      return 'BookFormat';
    }
    if (data is _i11.BookFormatSecondary) {
      return 'BookFormatSecondary';
    }
    if (data is _i12.BookGenre) {
      return 'BookGenre';
    }
    if (data is _i13.BookGenreSecondary) {
      return 'BookGenreSecondary';
    }
    if (data is _i14.BookLanguage) {
      return 'BookLanguage';
    }
    if (data is _i15.BookLanguageSecondary) {
      return 'BookLanguageSecondary';
    }
    if (data is _i16.BookSeries) {
      return 'BookSeries';
    }
    if (data is _i17.BookSeriesSecondary) {
      return 'BookSeriesSecondary';
    }
    if (data is _i18.Pagination) {
      return 'Pagination';
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
    if (data['className'] == 'BookException') {
      return deserialize<_i9.BookException>(data['data']);
    }
    if (data['className'] == 'BookFormat') {
      return deserialize<_i10.BookFormat>(data['data']);
    }
    if (data['className'] == 'BookFormatSecondary') {
      return deserialize<_i11.BookFormatSecondary>(data['data']);
    }
    if (data['className'] == 'BookGenre') {
      return deserialize<_i12.BookGenre>(data['data']);
    }
    if (data['className'] == 'BookGenreSecondary') {
      return deserialize<_i13.BookGenreSecondary>(data['data']);
    }
    if (data['className'] == 'BookLanguage') {
      return deserialize<_i14.BookLanguage>(data['data']);
    }
    if (data['className'] == 'BookLanguageSecondary') {
      return deserialize<_i15.BookLanguageSecondary>(data['data']);
    }
    if (data['className'] == 'BookSeries') {
      return deserialize<_i16.BookSeries>(data['data']);
    }
    if (data['className'] == 'BookSeriesSecondary') {
      return deserialize<_i17.BookSeriesSecondary>(data['data']);
    }
    if (data['className'] == 'Pagination') {
      return deserialize<_i18.Pagination>(data['data']);
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
      case _i10.BookFormat:
        return _i10.BookFormat.t;
      case _i11.BookFormatSecondary:
        return _i11.BookFormatSecondary.t;
      case _i12.BookGenre:
        return _i12.BookGenre.t;
      case _i13.BookGenreSecondary:
        return _i13.BookGenreSecondary.t;
      case _i14.BookLanguage:
        return _i14.BookLanguage.t;
      case _i15.BookLanguageSecondary:
        return _i15.BookLanguageSecondary.t;
      case _i16.BookSeries:
        return _i16.BookSeries.t;
      case _i17.BookSeriesSecondary:
        return _i17.BookSeriesSecondary.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'stackmata';
}
