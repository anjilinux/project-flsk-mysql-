




DROP TABLE IF EXISTS equip;
DROP TABLE IF EXISTS progress;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS receps;
DROP TABLE IF EXISTS trainors;

DROP TABLE IF EXISTS plans;

DROP TABLE IF EXISTS info;



CREATE TABLE info(username VARCHAR(200), password VARCHAR(500), name VARCHAR(100), prof INT, street VARCHAR(100), city VARCHAR(50), phone VARCHAR(32), PRIMARY KEY(username));

CREATE TABLE plans(name VARCHAR(100),exercise VARCHAR(100),sets VARCHAR(100),reps VARCHAR(100), PRIMARY KEY(name)); 

CREATE TABLE receps(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username));

CREATE TABLE trainors(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username));

CREATE TABLE members(username VARCHAR(200), plan VARCHAR(100), trainor VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username), FOREIGN KEY(plan) references plans(name), FOREIGN KEY(trainor) references trainors(username));

ALTER TABLE info ADD time TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

INSERT INTO info(username, password, name, prof, street, city, phone) VALUES('saireddy', '$5$rounds=535000$OjcHFa7Td9IJSyzR$ecf/fBzKTsacRXKNQZAXk15B/p1lWqNJpp8UqeUuoS/', 'saireddy', 1, 'IIIT Basar', 'Nirmal Telangana',8501998863);


CREATE TABLE progress(username VARCHAR(200), date DATE, daily_result VARCHAR(200),rate VARCHAR(100), time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(username, date), FOREIGN KEY(username) references members(username));


CREATE TABLE equip(name VARCHAR(200),count INT);
