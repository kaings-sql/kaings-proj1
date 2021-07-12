-- create record on 'unfollow' table after unfollow (on 'follow' table) is captured

DELIMITER $$

CREATE TRIGGER capture_unfollow
    AFTER DELETE ON follows FOR EACH ROW
    BEGIN
        INSERT INTO unfollows(follower_id, followee_id) 
        VALUES(OLD.follower_id, OLD.followee_id);
    END;

$$
DELIMITER ;

-- OR can also use the following syntax which is SIMILAR

DELIMITER $$

CREATE TRIGGER capture_unfollow
    AFTER DELETE ON follows FOR EACH ROW
    BEGIN
        INSERT INTO unfollows
        SET follower_id = OLD.follower_id, 
            followee_id = OLD.followee_id;
    END;

$$
DELIMITER ;

