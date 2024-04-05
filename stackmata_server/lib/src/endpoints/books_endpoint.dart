import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

/// The endpoint for working with books.
class BooksEndpoint extends Endpoint {
  /// Upload a list of books.
  Future<int> uploadBooks(final Session session, final List<Book> books) async {
    final count = await session.dbNext.transaction((final transaction) async {
      await Book.db.deleteWhere(
        session,
        where: (final t) => t.id.notEquals(null),
        transaction: transaction,
      );
      await BookAuthor.db.deleteWhere(
        session,
        where: (final t) => t.id.notEquals(null),
        transaction: transaction,
      );
      await BookLanguage.db.deleteWhere(
        session,
        where: (final t) => t.id.notEquals(null),
        transaction: transaction,
      );
      await BookSeries.db.deleteWhere(
        session,
        where: (final t) => t.id.notEquals(null),
        transaction: transaction,
      );
      await BookAward.db.deleteWhere(
        session,
        where: (final t) => t.id.notEquals(null),
        transaction: transaction,
      );
      await BookGenre.db.deleteWhere(
        session,
        where: (final t) => t.id.notEquals(null),
        transaction: transaction,
      );
      await BookFormat.db.deleteWhere(
        session,
        where: (final t) => t.id.notEquals(null),
        transaction: transaction,
      );
      for (final book in books) {
        final authors = <BookAuthor>[
          for (final author in book.clientBookAuthors)
            (await BookAuthor.db.findFirstRow(
                  session,
                  where: (final t) =>
                      t.firstLast.equals(author.firstLast) &
                      t.lastFirst.equals(author.lastFirst),
                  transaction: transaction,
                )) ??
                (await BookAuthor.db.insertRow(
                  session,
                  author,
                  transaction: transaction,
                )),
        ];
        final languages = <BookLanguage>[
          for (final language in book.clientLanguages)
            (await BookLanguage.db.findFirstRow(
                  session,
                  where: (final t) => t.name.equals(language.name),
                  transaction: transaction,
                )) ??
                (await BookLanguage.db.insertRow(
                  session,
                  language,
                  transaction: transaction,
                )),
        ];
        final series = <BookSeries>[
          for (final series in book.clientSeries)
            (await BookSeries.db.findFirstRow(
                  session,
                  where: (final t) => t.name.equals(series.name),
                  transaction: transaction,
                )) ??
                (await BookSeries.db.insertRow(
                  session,
                  series,
                  transaction: transaction,
                )),
        ];
        final awards = <BookAward>[
          for (final award in book.clientAwards)
            (await BookAward.db.findFirstRow(
                  session,
                  where: (final t) => t.name.equals(award.name),
                  transaction: transaction,
                )) ??
                (await BookAward.db.insertRow(
                  session,
                  award,
                  transaction: transaction,
                )),
        ];
        final genres = <BookGenre>[
          for (final genre in book.clientGenres)
            (await BookGenre.db.findFirstRow(
                  session,
                  where: (final t) => t.name.equals(genre.name),
                  transaction: transaction,
                )) ??
                (await BookGenre.db.insertRow(
                  session,
                  genre,
                  transaction: transaction,
                )),
        ];
        final formats = <BookFormat>[
          for (final format in book.clientFormats)
            (await BookFormat.db.findFirstRow(
                  session,
                  where: (final t) =>
                      t.code.equals(format.code) & t.name.equals(format.name),
                  transaction: transaction,
                )) ??
                (await BookFormat.db.insertRow(
                  session,
                  format,
                  transaction: transaction,
                )),
        ];
        final newBook = await Book.db.insertRow(
          session,
          book,
          transaction: transaction,
        );
        final bookId = newBook.id!;
        await BookAuthorSecondary.db.insert(
          session,
          authors
              .map(
                (final e) => BookAuthorSecondary(
                  bookAuthorId: e.id!,
                  bookId: bookId,
                ),
              )
              .toList(),
          transaction: transaction,
        );
        await BookLanguageSecondary.db.insert(
          session,
          languages
              .map(
                (final e) => BookLanguageSecondary(
                  bookLanguageId: e.id!,
                  bookId: bookId,
                ),
              )
              .toList(),
          transaction: transaction,
        );
        await BookSeriesSecondary.db.insert(
          session,
          series
              .map(
                (final e) => BookSeriesSecondary(
                  seriesId: e.id!,
                  bookId: bookId,
                ),
              )
              .toList(),
          transaction: transaction,
        );
        await BookAwardSecondary.db.insert(
          session,
          awards
              .map(
                (final e) => BookAwardSecondary(awardId: e.id!, bookId: bookId),
              )
              .toList(),
          transaction: transaction,
        );
        await BookGenreSecondary.db.insert(
          session,
          genres
              .map(
                (final e) => BookGenreSecondary(genreId: e.id!, bookId: bookId),
              )
              .toList(),
          transaction: transaction,
        );
        await BookFormatSecondary.db.insert(
          session,
          formats
              .map(
                (final e) =>
                    BookFormatSecondary(bookFormatId: e.id!, bookId: bookId),
              )
              .toList(),
          transaction: transaction,
        );
      }
      return session.dbNext.count<Book>(transaction: transaction);
    });
    return count;
  }

  /// Get all the books in the database.
  Future<List<Book>> getBooks(
    final Session session,
    final Pagination pagination,
  ) async {
    final numberOfRecords = pagination.numberOfRecords;
    final books = await Book.db.find(
      session,
      include: Book.include(
        authors: BookAuthorSecondary.includeList(
          include: BookAuthorSecondary.include(
            bookAuthor: BookAuthor.include(),
          ),
        ),
        awards: BookAwardSecondary.includeList(
          include: BookAwardSecondary.include(
            award: BookAward.include(),
          ),
        ),
        callNumbers: BookCallNumber.includeList(),
        formats: BookFormatSecondary.includeList(
          include: BookFormatSecondary.include(
            bookFormat: BookFormat.include(),
          ),
        ),
        genres: BookGenreSecondary.includeList(
          include: BookGenreSecondary.include(
            genre: BookGenre.include(),
          ),
        ),
        language: BookLanguageSecondary.includeList(
          include: BookLanguageSecondary.include(
            bookLanguage: BookLanguage.include(),
          ),
        ),
        series: BookSeriesSecondary.includeList(
          include: BookSeriesSecondary.include(
            series: BookSeries.include(),
          ),
        ),
      ),
      orderBy: (final t) => t.title,
      limit: numberOfRecords,
      offset: (pagination.pageNumber - 1) * numberOfRecords,
    );
    return books;
  }
}
