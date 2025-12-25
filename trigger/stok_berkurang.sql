DELIMITER $$

CREATE TRIGGER trg_stok_kurang
AFTER INSERT ON detail_penjualan
FOR EACH ROW
BEGIN
    UPDATE barang
    SET stok = stok - NEW.jumlah_barang
    WHERE id_barang = NEW.barang_id;
END$$

DELIMITER ;
