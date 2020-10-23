DELIMITER //

USE project //


DROP TRIGGER IF EXISTS before_player_delete //

CREATE TRIGGER before_player_delete BEFORE DELETE ON Player
FOR EACH ROW BEGIN
    DELETE FROM Disease WHERE idPlayer = old.id ;
END //


DROP TRIGGER IF EXISTS before_team_inv_insert //

CREATE TRIGGER before_team_inv_insert BEFORE INSERT ON Team_Inventory
FOR EACH ROW BEGIN
    select count(*) from Team_Inventory as t where t.idInventory = NEW.idInventory AND t.idTeam <> NEW.idTeam AND (t.start_time < coalesce(NEW.end_time, curdate()) and NEW.start_time < coalesce(t.end_time, curdate())) into @c;

    IF @c <> 0 THEN
        SIGNAL SQLSTATE '22000' SET MESSAGE_TEXT = 'fail';
    END IF;
END //

DELIMITER ;
