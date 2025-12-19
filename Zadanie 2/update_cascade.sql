USE biuro_podrozy;
GO

SELECT * FROM Rezerwacje_Transporty WHERE Numer_transportu = 'BUS666';
SELECT * FROM Transporty WHERE Numer_transportu = 'BUS666';

UPDATE Transporty
SET Numer_transportu = 'BUSSS'
WHERE Numer_transportu = 'BUS666';

SELECT * FROM Rezerwacje_Transporty WHERE Numer_transportu = 'BUSSS';
SELECT * FROM Transporty WHERE Numer_transportu = 'BUSSS';

UPDATE Transporty
SET Numer_transportu = 'BUS666'
WHERE Numer_transportu = 'BUSSS';