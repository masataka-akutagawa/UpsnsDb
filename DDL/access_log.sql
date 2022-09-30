CREATE TABLE upload_sns.access_log (
	id serial NOT NULL,
	access_uri varchar(255) NOT NULL,
	user_id int NOT NULL,
	insert_time timestamp NOT NULL,
	CONSTRAINT access_log_pk PRIMARY KEY (id),
	CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES upload_sns.user(id) ON DELETE CASCADE
);