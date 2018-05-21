CREATE TABLE [dbo].[Pracownik] (
    [PracownikId] INT          IDENTITY (1, 1) NOT NULL,
    [Imie]        VARCHAR (50) NOT NULL,
    [Nazwisko]    VARCHAR (50) NOT NULL,
    [Plec]        VARCHAR (1)  NOT NULL,
    [Pesel]       BIGINT       NULL,
    PRIMARY KEY CLUSTERED ([PracownikId] ASC),
    UNIQUE NONCLUSTERED ([Pesel] ASC)
);

