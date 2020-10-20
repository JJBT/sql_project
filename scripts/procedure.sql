USE project;

DELIMITER //

-- Выбрать все данные из заданной таблицы
DROP PROCEDURE IF EXISTS selection //

CREATE PROCEDURE selection (IN table_name NCHAR(20))
BEGIN
    SELECT * FROM table_name;
END //

-- Удалить запись из заданной таблицы по id
DROP PROCEDURE IF EXISTS deletion //

CREATE PROCEDURE deletion (IN table_name NCHAR(20), IN del_id INT)
BEGIN
    DELETE FROM table_name WHERE id = del_id;
END //

-- Изменить строку из заданной таблицы
DROP PROCEDURE IF EXISTS updation //

CREATE PROCEDURE updation (IN table_name NCHAR(20), IN del_id INT)
BEGIN
    DELETE FROM table_name WHERE id = del_id;
END //

DELIMITER ;