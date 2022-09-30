CREATE TABLE upload_sns.tag (
	id serial NOT NULL,
	name varchar(255) NOT NULL,
	insert_time timestamp NOT NULL,
	update_time timestamp NULL,
	CONSTRAINT tags_pk PRIMARY KEY (id)
);