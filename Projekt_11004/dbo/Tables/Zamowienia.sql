CREATE TABLE Zamowienia
(
			ZamowienieId			INT				NOT NULL	IDENTITY(1,1) PRIMARY KEY
		,	KlientId				INT				NOT NULL
		,	PracownikId				INT				NOT NULL
		,	ModelId					INT				NOT NULL
		,	CenaSprzedazy			MONEY			NOT NULL
		,	DataZamowienia			DATE
		,	DataPlanowanegoOdbioru 	DATE
		,	StanRealizacji			BIT
		,	StanPlatnosci			BIT
)


GO
ALTER TABLE			Zamowienia
	ADD CONSTRAINT		ModelId_Zamowienia_Model
	FOREIGN KEY			(ModelId)
	REFERENCES			Modele(ModelId)
GO
ALTER TABLE			Zamowienia
	ADD CONSTRAINT		PracownikId_Zamowienia_Pracownik
	FOREIGN KEY			(PracownikId)
	REFERENCES			Pracownik(PracownikId)
GO
ALTER TABLE			Zamowienia
	ADD CONSTRAINT		KlientId_Zamowienia_Klienci
	FOREIGN KEY			(KlientId)
	REFERENCES			Klient(KlientId)