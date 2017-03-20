CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "staffs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "file_no" integer, "last_name" varchar, "first_name" varchar, "middle_name" varchar, "rank" varchar, "gender" varchar, "area_specialize" varchar, "qualification" varchar, "station" varchar, "department" varchar, "section" varchar, "grade" integer, "step" integer, "submitted" boolean, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "trainings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "code" varchar, "category" varchar, "title" varchar, "date_attended" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "staff_id" integer);
CREATE INDEX "index_trainings_on_staff_id" ON "trainings" ("staff_id");
CREATE TABLE "skills" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "oral_score" varchar, "written_score" varchar, "analytic_score" varchar, "computing_score" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "staff_id" integer);
CREATE INDEX "index_skills_on_staff_id" ON "skills" ("staff_id");
CREATE TABLE "set_genders" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "code" varchar, "display" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "set_ranks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "code" varchar, "name" varchar, "display" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "set_qualifications" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "code" varchar, "name" varchar, "display" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "set_specilizations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "code" varchar, "name" varchar, "display" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "set_stations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "code" varchar, "name" varchar, "display" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "set_departments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "code" varchar, "name" varchar, "display" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "set_sections" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "code" varchar, "name" varchar, "display" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "queries" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "query" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO schema_migrations (version) VALUES ('20170316163706');

INSERT INTO schema_migrations (version) VALUES ('20170316164021');

INSERT INTO schema_migrations (version) VALUES ('20170317095200');

INSERT INTO schema_migrations (version) VALUES ('20170317095320');

INSERT INTO schema_migrations (version) VALUES ('20170318173301');

INSERT INTO schema_migrations (version) VALUES ('20170318173440');

INSERT INTO schema_migrations (version) VALUES ('20170318173507');

INSERT INTO schema_migrations (version) VALUES ('20170318173534');

INSERT INTO schema_migrations (version) VALUES ('20170318173600');

INSERT INTO schema_migrations (version) VALUES ('20170318173623');

INSERT INTO schema_migrations (version) VALUES ('20170318173643');

INSERT INTO schema_migrations (version) VALUES ('20170318233849');

