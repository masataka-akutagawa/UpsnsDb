CREATE TABLE upload_sns.favorite (
	id serial NOT NULL,
	push_user_id int NOT NULL,
	article_id int NOT NULL,
	insert_time timestamp NOT NULL,
	update_time timestamp NULL,
	CONSTRAINT favorite_pk PRIMARY KEY (id),
	CONSTRAINT favorite_un UNIQUE (push_user_id, article_id),
	CONSTRAINT fk_article_id FOREIGN KEY (article_id) REFERENCES upload_sns.article(id) ON DELETE CASCADE,
	CONSTRAINT fk_push_user_id FOREIGN KEY (push_user_id) REFERENCES upload_sns.user(id) ON DELETE CASCADE
);