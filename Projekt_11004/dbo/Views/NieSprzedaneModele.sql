
CREATE VIEW NieSprzedaneModele AS

SELECT 
				Ma.Marka
			,	Mo.Model
FROM 
				dbo.Zamowienia as Za
	INNER JOIN	dbo.Modele as Mo ON Mo.ModelId = Za.ModelId
	INNER JOIN	dbo.Marki as Ma	ON	Ma.MarkaId = Mo.MarkaId
WHERE
		Za.ModelId != Mo.ModelId
		
