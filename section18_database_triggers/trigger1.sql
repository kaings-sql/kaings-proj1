-- temporarily replace delimiter to '$$' (can use others also like '//' or others but '$$' is more common since it is not used elsewhere) to avoid the following script being triggered before it is completed

/*
DELIMITER $$

CREATE TRIGGER trigger_name
    trigger_time trigger_event ON table_name FOR EACH ROW
    BEGIN
        ... 
    END;

$$
DELIMITER ;
*/

DELIMITER $$

CREATE TRIGGER must_be_adult
    BEFORE INSERT ON users FOR EACH ROW
    BEGIN
        IF NEW.age < 18
        THEN   
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'must be an adult!!!!!';
        END IF;
    END;
$$            # marks the end of the script. instead of ';', it is '$$'

DELIMITER ;    # set back delimited to default ';' of every script

-- ref: https://dev.mysql.com/doc/refman/8.0/en/signal.html
-- ref: https://mariadb.com/kb/en/mariadb-error-codes/
-- ref: https://dev.mysql.com/doc/mysql-errors/5.7/en/server-error-reference.html