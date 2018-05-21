CREATE TABLE [dbo].[Zamowienia] (
    [ZamowienieId]           INT   IDENTITY (1, 1) NOT NULL,
    [KlientId]               INT   NOT NULL,
    [PracownikId]            INT   NOT NULL,
    [ModelId]                INT   NOT NULL,
    [CenaSprzedazy]          MONEY NOT NULL,
    [DataZamowienia]         DATE  NULL,
    [DataPlanowanegoOdbioru] DATE  NULL,
    [StanRealizacji]         BIT   NULL,
    [StanPlatnosci]          BIT   NULL,
    PRIMARY KEY CLUSTERED ([ZamowienieId] ASC),
    CONSTRAINT [KlientId_Zamowienia_Klienci] FOREIGN KEY ([KlientId]) REFERENCES [dbo].[Klient] ([KlientId]),
    CONSTRAINT [ModelId_Zamowienia_Model] FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Modele] ([ModelId]),
    CONSTRAINT [PracownikId_Zamowienia_Pracownik] FOREIGN KEY ([PracownikId]) REFERENCES [dbo].[Pracownik] ([PracownikId])
);

