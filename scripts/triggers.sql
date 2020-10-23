DELIMITER //

USE project //


DROP TRIGGER IF EXISTS before_player_delete //

CREATE TRIGGER before_player_delete BEFORE DELETE ON Player
FOR EACH ROW BEGIN
    DELETE FROM Disease WHERE idPlayer = old.id ;
END //

DELIMITER ;

