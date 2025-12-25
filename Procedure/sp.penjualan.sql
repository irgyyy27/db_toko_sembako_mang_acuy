DELIMITER $$

CREATE PROCEDURE tambah_penjualan (
    IN p_penjualan_id INT,
    IN p_tgl_penjualan DATE,
    IN p_pelanggan_id INT,
    IN p_pegawai_id INT
)
BEGIN
    INSERT INTO penjualan (
        penjualan_id,
        tgl_penjualan,
        pelanggan_id,
        pegawai_id
    )
    VALUES (
        p_penjualan_id,
        p_tgl_penjualan,
        p_pelanggan_id,
        p_pegawai_id
    );
END$$

DELIMITER ;
