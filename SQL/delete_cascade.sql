USE biuro_podrozy
GO

SELECT * FROM Platnosci WHERE Id_rezerwacji = 1;
SELECT * FROM Rezerwacje_Transporty WHERE Id_rezerwacji = 1;
SELECT * FROM Rezerwacje_Uczestnicy WHERE Id_rezerwacji = 1;

DELETE FROM Rezerwacje WHERE Id_rezerwacji = 1;

SELECT * FROM Platnosci WHERE Id_rezerwacji = 1;
SELECT * FROM Rezerwacje_Transporty WHERE Id_rezerwacji = 1;
SELECT * FROM Rezerwacje_Uczestnicy WHERE Id_rezerwacji = 1;