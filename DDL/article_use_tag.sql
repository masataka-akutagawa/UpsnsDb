CREATE TABLE upload_sns.article_use_tag (
	article_id int NOT NULL,
	tag_id int NOT NULL,
	CONSTRAINT article_use_tag_pk PRIMARY KEY (article_id, tag_id),
	CONSTRAINT fk_article_id FOREIGN KEY (article_id) REFERENCES upload_sns.article(id) ON DELETE CASCADE,
	CONSTRAINT fk_tag_id FOREIGN KEY (tag_id) REFERENCES upload_sns.tag(id) ON DELETE CASCADE
);