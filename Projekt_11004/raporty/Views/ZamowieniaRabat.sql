CREATE VIEW raporty.ZamowieniaRabat AS
SELECT
				Za.ZamowienieId
			,	Za.KlientId
			,	Za.ModelId
			,	Za.PracownikId
			,	Za.StanPlatnosci
			,	Za.StanRealizacji
			,	Za.DataZamowienia
			,	Za.DataPlanowanegoOdbioru
			,	Cen.Cena
			,	CenaSprzedazy
			,	SUM((Cen.Cena-Za.CenaSprzedazy)/cen.Cena)*100 as Rabat
FROM 
				dbo.Zamowienia as Za
	INNER JOIN	dbo.Cennik as Cen	ON Cen.ModelId = Za.ModelId
GROUP BY
		CenaSprzedazy, Cena, ZamowienieId, KlientId, 
		Za.ModelId, Za.PracownikId, Za.StanPlatnosci, Za.StanRealizacji,
Za.DataZamowienia, Za.DataPlanowanegoOdbioru

