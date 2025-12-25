-- =========================
-- TRANSAKSI PENJUALAN LENGKAP
-- =========================
SELECT p.penjualan_id, p.tgl_penjualan, pl.nama_pelanggan,
       b.nama_barang, dp.jumlah_barang, dp.harga
FROM penjualan p
JOIN pelanggan pl ON p.pelanggan_id = pl.pelanggan_id
JOIN detail_penjualan dp ON p.penjualan_id = dp.penjualan_id
JOIN barang b ON dp.barang_id = b.id_barang;

-- =========================
-- BARANG YANG TERJUAL
-- =========================
SELECT b.nama_barang, SUM(dp.jumlah_barang) AS total_terjual
FROM detail_penjualan dp
JOIN barang b ON dp.barang_id = b.id_barang
GROUP BY b.nama_barang;

-- =========================
-- PEMBELIAN DARI SUPPLIER
-- =========================
SELECT s.nama_pemasok, p.pembelian_id, p.tgl_pembelian, p.total_pembelian
FROM pembelian p
JOIN supplier s ON p.supplier_id = s.supplier_id;

-- =========================
-- TOTAL PENJUALAN PER HARI
-- =========================
SELECT p.tgl_penjualan, SUM(dp.jumlah_barang * dp.harga) AS total_penjualan
FROM penjualan p
JOIN detail_penjualan dp ON p.penjualan_id = dp.penjualan_id
GROUP BY p.tgl_penjualan;

-- =========================
-- PEMBELIAN PER SUPPLIER
-- =========================
SELECT s.nama_pemasok, COUNT(p.pembelian_id) AS jumlah_pembelian
FROM supplier s
JOIN pembelian p ON s.supplier_id = p.supplier_id
GROUP BY s.nama_pemasok;
