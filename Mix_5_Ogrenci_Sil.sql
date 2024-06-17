create procedure sp_Ogrenci_Sil
	@ogrenci_id INT
as
begin
	delete from Ogrenciler where ogrenci_id=@ogrenci_id
end

--EXEC sp_Ogrenci_Sil @ogrenci_id = 1;