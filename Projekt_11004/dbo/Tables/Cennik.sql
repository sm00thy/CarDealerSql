CREATE TABLE [dbo].[Cennik] (
    [CenaId]  INT   IDENTITY (1, 1) NOT NULL,
    [ModelId] INT   NOT NULL,
    [Cena]    MONEY NOT NULL,
    [DataOd]  DATE  NULL,
    [DataDo]  DATE  NULL,
    PRIMARY KEY CLUSTERED ([CenaId] ASC),
    CHECK ([Cena]>(0)),
    CHECK ([DataDo]<=getdate()),
    CHECK ([DataOd]<=getdate()),
    CONSTRAINT [ModelId_Cennik_Modele] FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Modele] ([ModelId])
);

