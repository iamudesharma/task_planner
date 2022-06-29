--
-- Class Task as table task
--

CREATE TABLE task (
  "id" serial,
  "task_id" text NOT NULL,
  "task_title" text NOT NULL,
  "des" text,
  "created_at" timestamp without time zone NOT NULL,
  "is_completed" boolean NOT NULL
);

ALTER TABLE ONLY task
  ADD CONSTRAINT task_pkey PRIMARY KEY (id);

CREATE INDEX company_name_idx ON task USING btree ("task_id");


