
#Поиск по Создателю категории

SELECT user_name FROM users WHERE user_id =
(SELECT author_id FROM topics WHERE topic_name='Красные носки');

#Передаем ответ запроса как аргумет новому запросу 
SELECT topic_name FROM topics WHERE topic_id IN (4,1);

#2 способа поиска c помощью аргумента in и '='
SELECT User_name FROM users WHERE user_id IN
(SELECT author_id FROM topics WHERE topic_name='Красные носки');

SELECT User_name FROM users WHERE user_id =
(SELECT author_id FROM topics WHERE topic_name='Красные носки');

#Обединенный запрос к двум таблицам

SELECT user_name, user_email, user_password, topic_id, topic_name FROM users, topics;

#Вывод авторов категорий

SELECT topic_name, user_name From topics, users WHERE topics.author_id = users.user_id

#Вывод авторов записей

SELECT mail_description, user_name From mail, users WHERE mail.author_id = users.user_id

#Вывод записей из трех таблиц по автору и категории

SELECT mail_description, topic_name, user_name From mail, topics, users 
WHERE mail.author_id = users.user_id AND mail.topic_id = topics.topic_id

#Сортировка вывода с помощью id автора
SELECT mail_description, topic_name, user_name From mail, topics, users 
WHERE mail.author_id = users.user_id AND mail.topic_id = topics.topic_id and mail.author_id = 1
