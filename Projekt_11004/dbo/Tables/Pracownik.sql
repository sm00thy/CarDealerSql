﻿CREATE TABLE Pracownik
(
			PracownikId		INT			NOT NULL	IDENTITY(1,1) PRIMARY KEY
		,	Imie			VARCHAR(50)	NOT NULL
		,	Nazwisko		VARCHAR(50)	NOT NULL
		,	Plec			VARCHAR(1)	NOT NULL
		,	Pesel			BIGINT					UNIQUE
)

