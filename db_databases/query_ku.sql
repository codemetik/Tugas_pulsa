
SELECT * FROM at_uset;
SELECT * FROM trx;
SELECT * FROM barang;
SELECT * FROM trx_barang;
SELECT * FROM kategori;

UPDATE at_uset SET PASSWORD=MD5('user') WHERE username='user';
SELECT CONCAT('Rp.',FORMAT(saldo,0)) AS saldo FROM at_uset WHERE username='admin';

SELECT id_trx_barang, id_user, id_barang, tgl_trx, nama_barang, harga_trx_barang FROM trx_barang WHERE id_user='U001';
SELECT * FROM trx_barang WHERE id_user='U002';
SELECT id_trx_barang, id_user, id_barang, tgl_trx, nama_barang, harga_trx_barang FROM trx_barang;

INSERT INTO trx(id_trx, id_user, tgl, saldo_masuk, saldo_keluar)VALUE('T001','U001','22-05-2019','100000','0');
INSERT INTO trx(id_trx, id_user, tgl, saldo_masuk, saldo_keluar)VALUE('T002','U001','22-05-2019','50000','0');

SELECT * FROM barang;
SELECT id_barang, kategori, CODE, nama, 
CONCAT('Rp. ',FORMAT(harga,0)) AS Harga, 
CONCAT('Rp. ', FORMAT(harga_jual,0)) AS Harga_jual 
FROM barang WHERE kategori='Telkomsel';
SELECT CONCAT('Rp. ', FORMAT(saldo,0)) AS saldo FROM at_uset WHERE id_user ='U001';

SELECT DISTINCT kategori FROM barang;

SELECT * FROM barang WHERE kategori LIKE 'Telkomsel';
SELECT saldo FROM at_uset WHERE id_user ='U001';

SELECT * FROM barang ORDER BY kategori;
SELECT nama FROM barang WHERE kategori='Axis';
SELECT harga FROM barang WHERE nama='Axis 5';

SELECT id_user, username, saldo FROM at_uset;

SELECT harga, harga_jual, harga_jual - harga AS total FROM barang;
SELECT SUM(harga_jual - harga ) AS total FROM barang;

SELECT X.id_trx_barang, X.id_user, Y.id_barang, tgl_trx, nama_barang, harga_trx_barang, harga_trx_barang - harga AS total, Nomor
FROM trx_barang X
INNER JOIN barang Y ON X.id_barang = Y.id_barang;