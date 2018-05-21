CREATE VIEW MarkiZamowieniaSprzedaz AS

SELECT 
		Marka
	,	COUNT(Za.ModelId) as IleSprzedanych
	,	SUM(Cena) as SumaSprzedazy
FROM 
				dbo.Marki as Ma
	INNER JOIN	dbo.Modele as Mo ON Mo.MarkaId = Ma.MarkaId
	INNER JOIN	dbo.Cennik as Cen ON Cen.ModelId = Mo.ModelId
	INNER JOIN	dbo.Zamowienia as Za ON Za.ModelId = Ma.MarkaId

GROUP BY 
Marka