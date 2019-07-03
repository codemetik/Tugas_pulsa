DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    TRIGGER `irfa_db`.`saldo_trx` AFTER INSERT
    ON `irfa_db`.`trx_barang`
    FOR EACH ROW BEGIN
	UPDATE at_uset SET saldo = saldo - new.harga_trx_barang WHERE id_user = new.id_user;
    END$$

DELIMITER ;