create table user(
	_id int auto_increment not null unique,
    username varchar(255) unique,
    password varchar(255),
    enabled tinyint(4),
    primary key(_id)
)Engine= InnoDb;