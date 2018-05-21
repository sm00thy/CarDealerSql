CREATE TABLE [dbo].[Klient] (
    [KlientId]           INT           IDENTITY (1, 1) NOT NULL,
    [Imie]               VARCHAR (50)  NOT NULL,
    [Nazwisko]           VARCHAR (50)  NOT NULL,
    [Miejscowosc]        VARCHAR (100) NOT NULL,
    [NrDowoduOsobistego] VARCHAR (20)  NOT NULL,
    PRIMARY KEY CLUSTERED ([KlientId] ASC),
    UNIQUE NONCLUSTERED ([NrDowoduOsobistego] ASC)
);

