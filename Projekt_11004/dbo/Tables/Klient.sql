CREATE TABLE Klient
(
			KlientId			INT				NOT NULL	IDENTITY(1,1) PRIMARY KEY
		,	Imie				VARCHAR(50)		NOT NULL
		,	Nazwisko			VARCHAR(50)		NOT NULL
		,	Miejscowosc			VARCHAR(100)	NOT NULL
		,	NrDowoduOsobistego	VARCHAR(20)		NOT NULL	UNIQUE
)

