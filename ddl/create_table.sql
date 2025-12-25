#kategori
CREATE TABLE kategori (
    kategori_id INT AUTO_INCREMENT PRIMARY KEY,
    nama_kategori VARCHAR(50) NOT NULL
);
#barang
CREATE TABLE barang (
    barang_id INT AUTO_INCREMENT PRIMARY KEY,
    kategori_id INT NOT NULL,
    nama_barang VARCHAR(100) NOT NULL,
    harga DECIMAL(12,2) NOT NULL,
    stok INT NOT NULL
);
#supplier
CREATE TABLE supplier (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    nama_supplier VARCHAR(100) NOT NULL,
    alamat TEXT,
    no_telp VARCHAR(15)
);
#pegawai
CREATE TABLE pegawai (
    pegawai_id INT AUTO_INCREMENT PRIMARY KEY,
    nama_pegawai VARCHAR(100) NOT NULL,
    jabatan VARCHAR(50)
);
#pelanggan
CREATE TABLE pelanggan (
    pelanggan_id INT AUTO_INCREMENT PRIMARY KEY,
    nama_pelanggan VARCHAR(100) NOT NULL,
    alamat TEXT,
    no_telp VARCHAR(15)
);
#pembelian
CREATE TABLE pembelian (
    pembelian_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_id INT NOT NULL,
    pegawai_id INT NOT NULL,
    tgl_pembelian DATE NOT NULL
);
#detail_pembelian
CREATE TABLE pembelian (
    pembelian_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_id INT NOT NULL,
    pegawai_id INT NOT NULL,
    tgl_pembelian DATE NOT NULL
);
#penjualan
CREATE TABLE penjualan (
    penjualan_id INT AUTO_INCREMENT PRIMARY KEY,
    pelanggan_id INT NOT NULL,
    pegawai_id INT NOT NULL,
    tgl_penjualan DATE NOT NULL
);
#detail_penjualan
CREATE TABLE detail_penjualan (
    detail_penjualan_id INT AUTO_INCREMENT PRIMARY KEY,
    penjualan_id INT NOT NULL,
    barang_id INT NOT NULL,
    jumlah_barang INT NOT NULL,
    harga DECIMAL(12,2) NOT NULL
);


#Foreign key
-- barang
ALTER TABLE barang
ADD CONSTRAINT fk_barang_kategori
FOREIGN KEY (kategori_id) REFERENCES kategori(kategori_id);

-- pembelian
ALTER TABLE pembelian
ADD CONSTRAINT fk_pembelian_supplier
FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id);

ALTER TABLE pembelian
ADD CONSTRAINT fk_pembelian_pegawai
FOREIGN KEY (pegawai_id) REFERENCES pegawai(pegawai_id);

-- detail_pembelian
ALTER TABLE detail_pembelian
ADD CONSTRAINT fk_dp_pembelian
FOREIGN KEY (pembelian_id) REFERENCES pembelian(pembelian_id);

ALTER TABLE detail_pembelian
ADD CONSTRAINT fk_dp_barang
FOREIGN KEY (barang_id) REFERENCES barang(barang_id);

-- penjualan
ALTER TABLE penjualan
ADD CONSTRAINT fk_penjualan_pelanggan
FOREIGN KEY (pelanggan_id) REFERENCES pelanggan(pelanggan_id);

ALTER TABLE penjualan
ADD CONSTRAINT fk_penjualan_pegawai
FOREIGN KEY (pegawai_id) REFERENCES pegawai(pegawai_id);

-- detail_penjualan
ALTER TABLE detail_penjualan
ADD CONSTRAINT fk_dj_penjualan
FOREIGN KEY (penjualan_id) REFERENCES penjualan(penjualan_id);

ALTER TABLE detail_penjualan
ADD CONSTRAINT fk_dj_barang
FOREIGN KEY (barang_id) REFERENCES barang(barang_id);
