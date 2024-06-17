--exec sp_Ogrenci_Getir
CREATE PROCEDURE sp_Ogrenci_Getir
AS
BEGIN
	SELECT
		Ogrenciler.ogrenci_no as 'ÖÐRENCÝ NO',
		Ogrenciler.ogrenci_isim as 'ÝSÝM',
		Ogrenciler.ogrenci_soyisim as 'SOYÝSÝM',
		Bolumler.bolum_isim as 'BÖLÜM',
		Siniflar.sinif_isim as 'SINIF',
		Akademik_yil.akademik_yil_isim as 'YIL'

	FROM
		Ogrenciler

	INNER JOIN
		Bolumler ON Ogrenciler.bolum_id = Bolumler.bolum_id

	INNER JOIN
		Siniflar ON Ogrenciler.sinif_id = Siniflar.sinif_id

	INNER JOIN
		Akademik_yil ON Ogrenciler.akademik_yil_id = Akademik_yil.akademik_yil_id
END
GO