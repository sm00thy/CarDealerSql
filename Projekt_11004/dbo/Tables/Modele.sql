CREATE TABLE Modele 
(
		ModelId		INT				NOT NULL	IDENTITY(1,1) PRIMARY KEY
	,	MarkaId		INT				NOT NULL	
	,	Model		VARCHAR(50)		NOT NULL	
	,	TypNadwozia	VARCHAR(30)		
	,	Rok			SMALLINT			CHECK(Rok >= 1900)			
)


GO
ALTER TABLE			Modele
ADD CONSTRAINT		MarkaId_Modele_Marki
FOREIGN KEY			(MarkaId)
REFERENCES			Marki(MarkaId)