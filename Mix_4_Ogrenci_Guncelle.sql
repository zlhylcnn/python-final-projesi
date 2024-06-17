CREATE PROCEDURE sp_Ogrenci_Guncelle
	@ogrenci_id INT,
    @ogrenci_no BIGINT,
    @ogrenci_isim NVARCHAR(50),
	@ogrenci_soyisim NVARCHAR(50),
    @bolum_id INT,
    @sinif_id INT,
    @akademik_yil_id INT
AS
BEGIN
    UPDATE Ogrenciler SET 
		ogrenci_no = @ogrenci_no,
		ogrenci_isim = @ogrenci_isim,
		ogrenci_soyisim = @ogrenci_soyisim,
        bolum_id = @bolum_id,
		sinif_id = @sinif_id,
		akademik_yil_id = @akademik_yil_id
    WHERE ogrenci_id = @ogrenci_id;
END;

--EXEC sp_Ogrenci_Guncelle 
--    @ogrenci_id = 3,
--    @ogrenci_no = 21123561001,
--    @ogrenci_isim = 'Ali',
--    @ogrenci_soyisim = 'Yýlmaz',
--    @bolum_id = 2,
--    @sinif_id = 3,
--    @akademik_yil_id = 1;