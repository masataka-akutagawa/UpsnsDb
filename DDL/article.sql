CREATE TABLE upload_sns.article (
	id serial NOT NULL,
	title varchar(255) NOT NULL,
	body varchar NULL,
	user_id int NOT NULL,
	insert_time timestamp NOT NULL,
	update_time timestamp NULL,
	CONSTRAINT articles_pk PRIMARY KEY (id),
	CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES upload_sns.user(id) ON DELETE CASCADE
);