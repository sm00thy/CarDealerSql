CREATE TABLE [dbo].[Marki] (
    [MarkaId]   INT          IDENTITY (1, 1) NOT NULL,
    [Marka]     VARCHAR (50) NOT NULL,
    [Kraj]      VARCHAR (20) NOT NULL,
    [Kontynent] VARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([MarkaId] ASC),
    UNIQUE NONCLUSTERED ([Marka] ASC)
);

