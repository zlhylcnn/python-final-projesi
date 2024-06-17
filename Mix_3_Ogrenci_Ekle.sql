CREATE PROCEDURE sp_Ogrenci_Ekle
    @ogrenci_no BIGINT,
    @ogrenci_isim NVARCHAR(50),
	@ogrenci_soyisim NVARCHAR(50),
    @bolum_id INT,
    @sinif_id INT,
    @akademik_yil_id INT
AS
BEGIN
    INSERT INTO Ogrenciler (ogrenci_no, ogrenci_isim, ogrenci_soyisim, bolum_id, sinif_id, akademik_yil_id)
    VALUES (@ogrenci_no, @ogrenci_isim, @ogrenci_soyisim, @bolum_id, @sinif_id, @akademik_yil_id)
END


--EXEC sp_Ogrenci_Ekle 
--    @ogrenci_no = 1234567890,
--    @ogrenci_isim = 'Ahmet',
--    @ogrenci_soyisim = 'Yýlmaz',
--    @bolum_id = 4,
--    @sinif_id = 2,
--    @akademik_yil_id = 1;

