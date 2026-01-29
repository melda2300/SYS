CREATE DATABASE IF NOT EXISTS siparis_db;
USE siparis_db;

-- Kullanıcılar
CREATE TABLE kullanici (
    id INT AUTO_INCREMENT PRIMARY KEY,
    kullanici_adi VARCHAR(50),
    sifre VARCHAR(100),
    rol VARCHAR(20)
);

-- Müşteriler
CREATE TABLE musteri (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ad VARCHAR(50),
    soyad VARCHAR(50),
    telefon VARCHAR(20)
);

-- Ürünler
CREATE TABLE urun (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ad VARCHAR(100),
    fiyat DOUBLE,
    stok INT
);

-- Siparişler
CREATE TABLE siparis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    musteri_id INT,
    tarih DATE,
    toplam_tutar DOUBLE,
    FOREIGN KEY (musteri_id) REFERENCES musteri(id)
);

-- Sipariş Detay
CREATE TABLE siparis_detay (
    id INT AUTO_INCREMENT PRIMARY KEY,
    siparis_id INT,
    urun_id INT,
    adet INT,
    FOREIGN KEY (siparis_id) REFERENCES siparis(id),
    FOREIGN KEY (urun_id) REFERENCES urun(id)
);


