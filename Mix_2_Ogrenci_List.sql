--exec sp_Ogrenci_Getir
CREATE PROCEDURE sp_Ogrenci_Getir
AS
BEGIN
	SELECT
		Ogrenciler.ogrenci_no as '��RENC� NO',
		Ogrenciler.ogrenci_isim as '�S�M',
		Ogrenciler.ogrenci_soyisim as 'SOY�S�M',
		Bolumler.bolum_isim as 'B�L�M',
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