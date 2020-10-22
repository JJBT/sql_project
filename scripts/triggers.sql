DELIMITER //

USE project //

DROP TRIGGER IF EXISTS after_player_delete //

CREATE TRIGGER after_player_delete AFTER DELETE ON Player
FOR EACH ROW BEGIN
    DELETE FROM Contract WHERE id = old.idContract ;
END //

DROP TRIGGER IF EXISTS before_player_delete //

CREATE TRIGGER before_player_delete BEFORE DELETE ON Player
FOR EACH ROW BEGIN
    DELETE FROM Disease WHERE idPlayer = old.id ;
END //

DELIMITER ;

