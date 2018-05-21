CREATE TABLE Cennik
(
			CenaId		INT			NOT NULL	IDENTITY(1,1)	PRIMARY KEY		
		,	ModelId		INT			NOT NULL	
		,	Cena		MONEY		NOT NULL	CHECK(Cena > 0)
		,	DataOd		DATE					CHECK(DataOd <= GETDATE())
		,	DataDo		DATE					CHECK(DataDo <= GETDATE())
)


GO
ALTER TABLE			Cennik
ADD CONSTRAINT		ModelId_Cennik_Modele
FOREIGN KEY			(ModelId)
REFERENCES			Modele(ModelId)