BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_author_secondary" (
    "id" serial PRIMARY KEY,
    "bookAuthorId" integer NOT NULL,
    "bookId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_authors" (
    "id" serial PRIMARY KEY,
    "lastFirst" text NOT NULL,
    "firstLast" text NOT NULL,
    "role" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_award_secondary" (
    "id" serial PRIMARY KEY,
    "awardId" integer NOT NULL,
    "bookId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_awards" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_call_numbers" (
    "id" serial PRIMARY KEY,
    "callNumber" text NOT NULL,
    "bookId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_format_secondary" (
    "id" serial PRIMARY KEY,
    "bookFormatId" integer NOT NULL,
    "bookId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_formats" (
    "id" serial PRIMARY KEY,
    "code" text NOT NULL,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_genre_secondary" (
    "id" serial PRIMARY KEY,
    "genreId" integer NOT NULL,
    "bookId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_genres" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_language_secondary" (
    "id" serial PRIMARY KEY,
    "bookLanguageId" integer NOT NULL,
    "bookId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_languages" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_series" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "book_series_secondary" (
    "id" serial PRIMARY KEY,
    "seriesId" integer NOT NULL,
    "bookId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "books" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "publisher" text NOT NULL,
    "summary" text NOT NULL,
    "source" text NOT NULL,
    "entryDate" timestamp without time zone NOT NULL,
    "numberOfCopies" integer NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "book_author_secondary"
    ADD CONSTRAINT "book_author_secondary_fk_0"
    FOREIGN KEY("bookAuthorId")
    REFERENCES "book_authors"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "book_author_secondary"
    ADD CONSTRAINT "book_author_secondary_fk_1"
    FOREIGN KEY("bookId")
    REFERENCES "books"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "book_award_secondary"
    ADD CONSTRAINT "book_award_secondary_fk_0"
    FOREIGN KEY("awardId")
    REFERENCES "book_awards"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "book_award_secondary"
    ADD CONSTRAINT "book_award_secondary_fk_1"
    FOREIGN KEY("bookId")
    REFERENCES "books"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "book_call_numbers"
    ADD CONSTRAINT "book_call_numbers_fk_0"
    FOREIGN KEY("bookId")
    REFERENCES "books"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "book_format_secondary"
    ADD CONSTRAINT "book_format_secondary_fk_0"
    FOREIGN KEY("bookFormatId")
    REFERENCES "book_formats"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "book_format_secondary"
    ADD CONSTRAINT "book_format_secondary_fk_1"
    FOREIGN KEY("bookId")
    REFERENCES "books"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "book_genre_secondary"
    ADD CONSTRAINT "book_genre_secondary_fk_0"
    FOREIGN KEY("genreId")
    REFERENCES "book_genres"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "book_genre_secondary"
    ADD CONSTRAINT "book_genre_secondary_fk_1"
    FOREIGN KEY("bookId")
    REFERENCES "books"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "book_language_secondary"
    ADD CONSTRAINT "book_language_secondary_fk_0"
    FOREIGN KEY("bookLanguageId")
    REFERENCES "book_languages"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "book_language_secondary"
    ADD CONSTRAINT "book_language_secondary_fk_1"
    FOREIGN KEY("bookId")
    REFERENCES "books"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "book_series_secondary"
    ADD CONSTRAINT "book_series_secondary_fk_0"
    FOREIGN KEY("seriesId")
    REFERENCES "book_series"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "book_series_secondary"
    ADD CONSTRAINT "book_series_secondary_fk_1"
    FOREIGN KEY("bookId")
    REFERENCES "books"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR stackmata
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('stackmata', '20240405115138739', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240405115138739', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
