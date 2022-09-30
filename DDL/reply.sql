CREATE TABLE upload_sns.reply (
	id serial NOT NULL,
	comment varchar NOT NULL,
	user_id int NOT NULL,
	parent_id int NULL,
	insert_time timestamp NOT NULL,
	CONSTRAINT reply_pk PRIMARY KEY (id),
	CONSTRAINT fk_parent_id FOREIGN KEY (parent_id) REFERENCES upload_sns.reply(id) ON DELETE CASCADE,
	CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES upload_sns.user(id) ON DELETE CASCADE
);