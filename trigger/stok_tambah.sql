DELIMITER $$

CREATE TRIGGER trg_stok_tambah
AFTER INSERT ON detail_pembelian
FOR EACH ROW
BEGIN
    UPDATE barang
    SET stok = stok + NEW.jumlah_beli
    WHERE id_barang = NEW.barang_id;
END$$

DELIMITER ;
