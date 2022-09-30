CREATE TABLE upload_sns.image (
	id serial NOT NULL,
	image_file_path varchar(255) NOT NULL,
	insert_time timestamp NOT NULL,
	update_time timestamp NULL,
	article_id int NOT NULL,
	CONSTRAINT images_pk PRIMARY KEY (id),
	CONSTRAINT fk_article_id FOREIGN KEY (article_id) REFERENCES upload_sns.article(id) ON DELETE CASCADE
);