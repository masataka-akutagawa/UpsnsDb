CREATE TABLE upload_sns.user (
	id serial NOT NULL,
	name varchar(255) NOT NULL,
	furigana varchar(255) NOT NULL,
	mail varchar(255) NOT NULL,
	tel_no varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	role varchar(255) NULL,
	insert_time timestamp NOT NULL,
	update_time timestamp NULL,
	icon_image_path varchar(255) NOT NULL,
	CONSTRAINT user_pk PRIMARY KEY (id)
);