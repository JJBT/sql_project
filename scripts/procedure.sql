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

CREATE PROCEDURE updation (IN p_table_name NCHAR(20), IN up_id INT, IN vals NCHAR(1000))
BEGIN
    CREATE VIEW cols AS SELECT column_name FROM information_schema.columns WHERE table_name = p_table_name;
    DECLARE
END //

DELIMITER ;