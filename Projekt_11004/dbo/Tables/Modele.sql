CREATE TABLE [dbo].[Modele] (
    [ModelId]     INT          IDENTITY (1, 1) NOT NULL,
    [MarkaId]     INT          NOT NULL,
    [Model]       VARCHAR (50) NOT NULL,
    [TypNadwozia] VARCHAR (30) NULL,
    [Rok]         SMALLINT     NULL,
    PRIMARY KEY CLUSTERED ([ModelId] ASC),
    CHECK ([Rok]>=(1900)),
    CONSTRAINT [MarkaId_Modele_Marki] FOREIGN KEY ([MarkaId]) REFERENCES [dbo].[Marki] ([MarkaId])
);

