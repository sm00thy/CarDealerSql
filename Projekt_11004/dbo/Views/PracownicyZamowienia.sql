
CREATE VIEW PracownicyZamowienia AS

SELECT 
		Pr.PracownikId
	,	Pr.Imie
	,	Pr.Nazwisko
	,	Pr.Pesel
	,	Pr.Plec
	,	COUNT(Za.PracownikId) as IleZamowien
	,	SUM(Za.CenaSprzedazy) as LacznaKwotaZamowien
FROM
				dbo.Pracownik as Pr
	INNER JOIN	dbo.Zamowienia as Za ON Za.PracownikId = Pr.PracownikId

	GROUP BY 
		Pr.PracownikId
	,	Pr.Imie
	,	Pr.Nazwisko
	,	Pr.Pesel
	,	Pr.Plec

