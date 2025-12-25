-- =========================
-- INSERT DATA KATEGORI
-- =========================
INSERT INTO kategori (id_kategori, nama_kategori) VALUES
(1, 'Beras'),
(2, 'Minyak'),
(3, 'Mie Instan'),
(4, 'Gula');

-- =========================
-- INSERT DATA BARANG
-- =========================
INSERT INTO barang (id_barang, nama_barang, id_kategori, harga_beli, harga_jual, stok) VALUES
(101, 'Beras Ramos 5kg', 1, 60000, 65000, 30),
(102, 'Minyak Bimoli 1L', 2, 17000, 20000, 50),
(103, 'Indomie Goreng', 3, 2500, 3000, 100),
(104, 'Gula Pasir 1kg', 4, 12000, 15000, 40);

-- =========================
-- INSERT DATA SUPPLIER
-- =========================
INSERT INTO supplier (supplier_id, nama_pemasok, alamat, no_telp) VALUES
(1, 'PT Sumber Pangan', 'Jakarta', '081234567890'),
(2, 'CV Makmur Jaya', 'Bekasi', '082345678901');

-- =========================
-- INSERT DATA PEGAWAI
-- =========================
INSERT INTO pegawai (pegawai_id, nama_pegawai, alamat, jenis_kelamin, jabatan) VALUES
(1, 'Andi', 'Depok', 'L', 'Kasir'),
(2, 'Budi', 'Bogor', 'L', 'Admin');

-- =========================
-- INSERT DATA PELANGGAN
-- =========================
INSERT INTO pelanggan (pelanggan_id, nama_pelanggan, alamat, no_hp) VALUES
(1, 'Rina', 'Jakarta', '0811111111'),
(2, 'Dewi', 'Depok', '0822222222');

-- =========================
-- INSERT DATA PEMBELIAN
-- =========================
INSERT INTO pembelian (pembelian_id, tgl_pembelian, supplier_id, pegawai_id, total_pembelian) VALUES
(1, '2025-01-10', 1, 2, 3000000);

-- =========================
-- INSERT DETAIL PEMBELIAN
-- =========================
INSERT INTO detail_pembelian (pembelian_id, barang_id, jumlah_beli, harga_beli) VALUES
(1, 101, 20, 60000),
(1, 102, 30, 17000);

-- =========================
-- INSERT DATA PENJUALAN
-- =========================
INSERT INTO penjualan (penjualan_id, tgl_penjualan, pelanggan_id, pegawai_id) VALUES
(1, '2025-01-11', 1, 1);

-- =========================
-- INSERT DETAIL PENJUALAN
-- =========================
INSERT INTO detail_penjualan (penjualan_id, barang_id, jumlah_barang, harga) VALUES
(1, 101, 2, 65000),
(1, 103, 5, 3000);
