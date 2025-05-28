
-- Müşteri tablosu
CREATE TABLE Musteri (
    MusteriID INT PRIMARY KEY,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    Telefon VARCHAR(20)
);

-- Ürün tablosu
CREATE TABLE Urun (
    UrunID INT PRIMARY KEY,
    UrunAdi VARCHAR(100),
    Fiyat DECIMAL(10,2)
);

-- Sipariş tablosu
CREATE TABLE Siparis (
    SiparisID INT PRIMARY KEY,
    MusteriID INT,
    SiparisTarihi DATE,
    FOREIGN KEY (MusteriID) REFERENCES Musteri(MusteriID)
);

-- Sipariş Detay tablosu
CREATE TABLE SiparisDetay (
    SiparisDetayID INT PRIMARY KEY,
    SiparisID INT,
    UrunID INT,
    Adet INT,
    FOREIGN KEY (SiparisID) REFERENCES Siparis(SiparisID),
    FOREIGN KEY (UrunID) REFERENCES Urun(UrunID)
);

-- Örnek veriler
INSERT INTO Musteri VALUES (1, 'Ayşe', 'Yılmaz', '05001234567');
INSERT INTO Musteri VALUES (2, 'Mehmet', 'Demir', '05007654321');

INSERT INTO Urun VALUES (1, 'Lahmacun', 25.00);
INSERT INTO Urun VALUES (2, 'Ayran', 10.00);
INSERT INTO Urun VALUES (3, 'Kebap', 55.00);

INSERT INTO Siparis VALUES (1, 1, '2024-05-01');
INSERT INTO Siparis VALUES (2, 2, '2024-05-02');

INSERT INTO SiparisDetay VALUES (1, 1, 1, 2);
INSERT INTO SiparisDetay VALUES (2, 1, 2, 1);
INSERT INTO SiparisDetay VALUES (3, 2, 3, 1);
