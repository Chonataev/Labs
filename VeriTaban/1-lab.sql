CREATE TABLE users
(
    user_id INT(10) AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(20) NOT NULL,
    user_email VARCHAR(50) NOT NULL,
    user_password VARCHAR(15) NOT NULL
);

CREATE TABLE topics 
(
    topic_id int (10) AUTO_INCREMENT, 
    topic_name varchar(100) NOT NULL, 
    author_id int (10) NOT NULL, 
    PRIMARY KEY (topic_id),
    FOREIGN KEY (author_id) REFERENCES users (user_id
 ));
CREATE TABLE mail
(
    mail_id int (10) AUTO_INCREMENT PRIMARY KEY, 
    mail_description TEXT(500) NOT NULL, 
    author_id int (10) NOT NULL, 
    topic_id int (10) NOT NULL,
    FOREIGN KEY (author_id) REFERENCES users (user_id),
    FOREIGN KEY (topic_id) REFERENCES topics (topic_id
));
