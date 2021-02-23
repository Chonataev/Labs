#Вывод всех пользователей и тем
SELECT users.user_name, topics.topic_name FROM users LEFT OUTER JOIN topics ON users.user_id=topics.author_id;

#Вывод количество записей в таблицк сообщения
SELECT COUNT(topic_id) FROM mail;

#Вывод количества записей в категориях
SELECT topic_id, COUNT(topic_id) FROM mail GROUP BY topic_id;


#Вывод количества записей в категориях в которых записей больше 2
SELECT topic_id, COUNT(topic_id) FROM mail GROUP BY topic_id
HAVING COUNT(topic_id) > 2; 
