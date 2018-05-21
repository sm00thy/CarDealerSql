
CREATE DATABASE Projekt_11004
GO

USE Projekt_11004
GO

INSERT INTO [dbo].[Marki] 
		(Marka, Kraj, Kontynent)
VALUES 

		('Aston Martin','Wielka Brytania','Europa')
	,	('Audi','Niemcy','Europa') 
	,	('Bentley','Wielka Brytania','Europa')
	,	('Toyota','Japonia','Azja')
	,	('Ford','Stany Zjednoczone','Ameryka Północna')
GO

SELECT *
FROM [dbo].[Marki]
GO

INSERT INTO Modele
		(MarkaId, Model, TypNadwozia, Rok)
Values
			('3','Continental GT','Coupe','2014')
	,		('2','A5','Hatchback','2009')
	,		('1','DB9','Coupe','2016')
	,		('2','A6','Kombi','2015')
	,		('1','Vanquish','Coupe','2012')		
	,		('4','Prius','Kombi','2007')
	,		('5','Mustang','Coupe','2012')
GO

SELECT * 
FROM Modele
GO

INSERT INTO dbo.Cennik
		(ModelId,Cena,DataOd, DataDo)
VALUES
		('2','400000','2015-02-05','2018-05-19')
	,	('1','813000','2012-12-03','2016-05-19')
	,	('3','53000','2017-06-25','2017-12-19')
	,	('5','250000','2012-06-25','2018-05-19')
	,	('4','125000','2009-06-25','2015-05-10')
	,	('7','93000','2007-06-25','2014-11-09')
	,	('6','83000','2008-06-25','2017-09-19')
GO

SELECT * 
FROM dbo.Cennik
GO

INSERT INTO dbo.Pracownik
			(Imie, Nazwisko, Plec, Pesel)
VALUES
		('Marek','Nowak','M','90111292717')
	,	('Michał','Kosak','M','94111234717')
	,	('Anna','Brak','K','92111292300')
	,	('Joanna','Ewidencja','K','98121292717')
	,	('Antoni','Kruk','M','89042192411')
GO

SELECT * 
FROM dbo.Pracownik
GO

INSERT INTO dbo.Klient
		(Imie, Nazwisko, Miejscowosc, NrDowoduOsobistego)
VALUES
		('Arek','Nowak','M','ABC487439')
	,	('Bartek','Kosak','M','CUU393920')
	,	('Anna','Kasowy','K','PLO391232')
	,	('Piotr','Nowak','K','ABC487429')
	,	('Szymon','Wnuk','M','PLO391422')
GO

SELECT * 
FROM dbo.Klient
GO

INSERT INTO dbo.Zamowienia
		(KlientId, PracownikId, ModelId, CenaSprzedazy, DataZamowienia, DataPlanowanegoOdbioru, StanRealizacji, StanPlatnosci)
VALUES
		(5, 5, 7, 80000, '20180502', '20180823', 0, 1)
	,	(3, 1, 2, 399000, '20180202', '20181103', 0, 0)
	,	(4, 3, 5, 248000, '20180502', '20180313', 12, 1)	
	,	(2, 2, 4, 120000, '20180502', '20180823', 1, 0)	
	,	(1, 4, 6, 83000, '20180502', '20180823', 1, 1)	
	,	(5, 3, 1, 379000, '20180402', '20190105', 0, 1)	
	,	(2, 1, 3, 53000, '20180502', '20180823', 1, 1)	
	,	(5, 3, 1, 811000, '20180302', '20190105', 0, 1)	
	,	(2, 1, 3, 54000, '20180502', '20180720', 0, 1)
GO
