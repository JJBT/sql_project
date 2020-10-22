USE project;

DELIMITER //

DROP TRIGGER IF EXISTS after_player_delete //

CREATE TRIGGER after_player_delete AFTER DELETE ON Player
FOR EACH ROW BEGIN
    DELETE FROM Contract WHERE id = old.idContract ;
    DELETE FROM Disease WHERE idPlayer = old.id ;
END //

DELIMITER ;


