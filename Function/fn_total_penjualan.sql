DELIMITER $$

CREATE FUNCTION hitung_total_penjualan (
    p_penjualan_id INT
)
RETURNS DECIMAL(15,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(15,2);

    SELECT SUM(jumlah_barang * harga)
    INTO total
    FROM detail_penjualan
    WHERE penjualan_id = p_penjualan_id;

    RETURN total;
END$$

DELIMITER ;
