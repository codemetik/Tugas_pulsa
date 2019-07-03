DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    TRIGGER `irfa_db`.`saldo_user` AFTER INSERT
    ON `irfa_db`.`trx`
    FOR EACH ROW BEGIN
	UPDATE at_uset SET saldo = saldo + new.saldo_masuk - new.saldo_keluar WHERE id_user = new.id_user;
    END$$

DELIMITER ;