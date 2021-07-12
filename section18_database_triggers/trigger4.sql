USE DB_trigger_demo;

DELIMITER $$

CREATE TRIGGER log_created_user
    AFTER INSERT ON users FOR EACH ROW
    BEGIN
        INSERT INTO userlog(username)
        VALUES(NEW.username);
    END;

$$

DELIMITER ;