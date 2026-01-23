CREATE DATABASE biuro_podrozy;
GO

USE biuro_podrozy;
GO



CREATE TABLE Destynacje (
    Id_destynacji INT IDENTITY(1,1) PRIMARY KEY,
    Kraj NVARCHAR(50) NOT NULL CHECK (
        Kraj COLLATE Latin1_General_BIN2 LIKE '[A-ZĄĆĘŁŃÓŚŹŻ]%' 
        AND Kraj COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ -]%'
    ),
    Region NVARCHAR(100) CHECK (Region COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ -]%'),
    Miasto NVARCHAR(50) NOT NULL CHECK (Miasto COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ .-]%'),

    CONSTRAINT UQ_Destynacje UNIQUE (Kraj, Region, Miasto)
);
GO

CREATE TABLE Hotele (
    Id_hotelu INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa NVARCHAR(100) NOT NULL CHECK (
        Nazwa COLLATE Latin1_General_BIN2 LIKE '[A-ZĄĆĘŁŃÓŚŹŻ0-9]%' 
        AND Nazwa COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ0-9 .,*-]%'
    ),
    Standard INT NOT NULL CHECK (Standard BETWEEN 1 AND 5),
    Adres NVARCHAR(150) NOT NULL CHECK (Adres COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ0-9 .,/-]%'),
    Certyfikat_wspolpracy NVARCHAR(20) NOT NULL DEFAULT 'aktywny' CHECK (Certyfikat_wspolpracy IN ('aktywny', 'wygasł')),

    CONSTRAINT UQ_Hotele UNIQUE (Nazwa, Adres)
);
GO

CREATE TABLE Piloci (
    Id_pilota INT IDENTITY(1,1) PRIMARY KEY,
    Imie NVARCHAR(50) NOT NULL CHECK (
        Imie COLLATE Latin1_General_BIN2 LIKE '[A-ZĄĆĘŁŃÓŚŹŻ]%' 
        AND Imie COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ -]%'
    ),
    Nazwisko NVARCHAR(70) NOT NULL CHECK (
        Nazwisko COLLATE Latin1_General_BIN2 LIKE '[A-ZĄĆĘŁŃÓŚŹŻ]%' 
        AND Nazwisko COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ -]%'
    ),
    Email VARCHAR(100) CHECK (Email LIKE '%_@__%.__%'),
    Telefon VARCHAR(20) UNIQUE NOT NULL CHECK (
        Telefon NOT LIKE '%[^0-9+]%' 
        AND Telefon NOT LIKE '_%+%'
    ),
    Data_zatrudnienia DATE NOT NULL CHECK (Data_zatrudnienia <= GETDATE()),
    Status_pilota NVARCHAR(30) NOT NULL CHECK (Status_pilota IN ('aktywny','niedostępny','zakończona współpraca'))
);
GO

CREATE TABLE Transporty (
    Numer_transportu VARCHAR(30) PRIMARY KEY, -- Klucz naturalny
    Typ_transportu NVARCHAR(20) NOT NULL CHECK (Typ_transportu IN ('autokar', 'samolot', 'prom', 'pociąg')),
    Przewoznik NVARCHAR(60) NOT NULL CHECK (
        Przewoznik COLLATE Latin1_General_BIN2 LIKE '[A-ZĄĆĘŁŃÓŚŹŻ0-9]%' 
        AND Przewoznik COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ0-9 .,-]%'
    ),
    Miejsce_poczatkowe NVARCHAR(50) NOT NULL CHECK (
        Miejsce_poczatkowe COLLATE Latin1_General_BIN2 LIKE '[A-ZĄĆĘŁŃÓŚŹŻ]%' 
        AND Miejsce_poczatkowe COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ0-9 ]%'
    ),
    Miejsce_docelowe NVARCHAR(50) NOT NULL CHECK (
        Miejsce_docelowe COLLATE Latin1_General_BIN2 LIKE '[A-ZĄĆĘŁŃÓŚŹŻ]%' 
        AND Miejsce_docelowe COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ0-9 ]%'
    ),
    Data_wyjazdu DATETIME NOT NULL,
    Data_przyjazdu DATETIME NOT NULL,
    
    CONSTRAINT CK_Transport_Daty CHECK (Data_przyjazdu >= Data_wyjazdu),
    CONSTRAINT CK_Numer_Transportu CHECK (Numer_transportu NOT LIKE '%[^A-Z0-9]%')
);
GO

CREATE TABLE Dane_Osobowe (
    Id_osoby INT IDENTITY(1,1) PRIMARY KEY,
    Imie NVARCHAR(50) NOT NULL CHECK (
        Imie COLLATE Latin1_General_BIN2 LIKE '[A-ZĄĆĘŁŃÓŚŹŻ]%' 
        AND Imie COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ -]%'
    ),
    Nazwisko NVARCHAR(70) NOT NULL CHECK (
        Nazwisko COLLATE Latin1_General_BIN2 LIKE '[A-ZĄĆĘŁŃÓŚŹŻ]%' 
        AND Nazwisko COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ -]%'
    ),
    Email VARCHAR(100) CHECK (Email LIKE '%_@__%.__%'),
    Nr_telefonu VARCHAR(20) CHECK (
        Nr_telefonu NOT LIKE '%[^0-9+]%' 
        AND Nr_telefonu NOT LIKE '_%+%'
    ),
    Data_urodzenia DATE NOT NULL CHECK (Data_urodzenia <= GETDATE()),

    CONSTRAINT UQ_Dane UNIQUE (Imie, Nazwisko, Data_urodzenia)
);
GO



CREATE TABLE Wycieczki (
    Kod_wycieczki VARCHAR(20) PRIMARY KEY CHECK (
        LEN(Kod_wycieczki) >= 5 
        AND Kod_wycieczki NOT LIKE '%[^A-Z0-9]%'
    ),
    Nazwa NVARCHAR(120) NOT NULL CHECK (
        Nazwa COLLATE Latin1_General_BIN2 LIKE '[A-ZĄĆĘŁŃÓŚŹŻ0-9]%' 
        AND Nazwa COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ0-9 .,-]%'
    ),
    Opis NVARCHAR(1000) CHECK (Opis COLLATE Latin1_General_BIN2 NOT LIKE '%[^a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ0-9 .,:-]%'),
    Status_wycieczki NVARCHAR(20) NOT NULL CHECK (Status_wycieczki IN ('aktywna', 'planowana', 'archiwalna')),
    Id_destynacji INT NOT NULL REFERENCES Destynacje(Id_destynacji)
);
GO

CREATE TABLE Zakwaterowanie (
    Kod_wycieczki VARCHAR(20) NOT NULL REFERENCES Wycieczki(Kod_wycieczki) ON UPDATE CASCADE,
    Id_hotelu INT NOT NULL REFERENCES Hotele(Id_hotelu),
    Czas_trwania INT NOT NULL CHECK (Czas_trwania > 0),
    Cena_za_osobe DECIMAL(10,2) NOT NULL CHECK (Cena_za_osobe > 0),
    PRIMARY KEY (Kod_wycieczki, Id_hotelu)
);
GO

CREATE TABLE Terminy (
    Id_terminu INT IDENTITY(1,1) PRIMARY KEY,
    Data_wyjazdu DATE NOT NULL,
    Data_powrotu DATE NOT NULL,
    Status_terminu NVARCHAR(20) NOT NULL CHECK (Status_terminu IN ('planowany', 'aktywny', 'zakończony', 'odwołany')),
    Liczba_dostepnych_miejsc INT NOT NULL CHECK (Liczba_dostepnych_miejsc >= 0),
    Id_pilota INT NOT NULL REFERENCES Piloci(Id_pilota),
    Kod_wycieczki VARCHAR(20) NOT NULL,
    Id_hotelu INT NOT NULL,
    
    FOREIGN KEY (Kod_wycieczki, Id_hotelu) REFERENCES Zakwaterowanie(Kod_wycieczki, Id_hotelu) ON UPDATE CASCADE,
    CONSTRAINT CK_Termin_Daty CHECK (Data_powrotu >= Data_wyjazdu)
);
GO

CREATE TABLE Klienci (
    Id_osoby INT PRIMARY KEY REFERENCES Dane_Osobowe(Id_osoby),
    Login VARCHAR(30) NOT NULL UNIQUE CHECK (
        LEN(Login) >= 3 
        AND Login NOT LIKE '%[^a-zA-Z0-9_]%'
    )
);
GO

CREATE TABLE Uczestnicy (
    Id_osoby INT PRIMARY KEY REFERENCES Dane_Osobowe(Id_osoby),
    Typ_dokumentu NVARCHAR(30) NOT NULL CHECK (Typ_dokumentu IN ('dowód osobisty', 'paszport', 'inny dokument tożsamości'))
);
GO

CREATE TABLE Rezerwacje (
    Id_rezerwacji INT IDENTITY(1,1) PRIMARY KEY,
    Status_rezerwacji NVARCHAR(20) NOT NULL CHECK (Status_rezerwacji IN ('oczekująca', 'potwierdzona', 'anulowana', 'zrealizowana')),
    Cena_calkowita DECIMAL(10,2) NOT NULL CHECK (Cena_calkowita >= 0),
    Data_rezerwacji DATE DEFAULT GETDATE(),
    Id_terminu INT NOT NULL REFERENCES Terminy(Id_terminu),
    Id_osoby INT NOT NULL REFERENCES Klienci(Id_osoby)
);
GO

CREATE TABLE Platnosci (
    Nr_transakcji INT IDENTITY(1,1) PRIMARY KEY,
    Kwota DECIMAL(10,2) NOT NULL CHECK (Kwota > 0),
    Metoda_platnosci NVARCHAR(20),
    Status_platnosci NVARCHAR(20) NOT NULL CHECK (Status_platnosci IN ('nieopłacona', 'opłacona')),
    Data_planowana DATE NOT NULL,
    Data_wplaty DATE,
    Id_rezerwacji INT NOT NULL UNIQUE REFERENCES Rezerwacje(Id_rezerwacji) ON DELETE CASCADE,

    CONSTRAINT CK_Platnosci_Logika CHECK (
        (Status_platnosci = 'nieopłacona' AND Metoda_platnosci IS NULL)
        OR
        (Status_platnosci = 'opłacona' AND Metoda_platnosci IN ('gotówka', 'karta', 'przelew'))
    )
);
GO



CREATE TABLE Rezerwacje_Transporty (
    Id_rezerwacji INT NOT NULL REFERENCES Rezerwacje(Id_rezerwacji) ON DELETE CASCADE,
    Numer_transportu VARCHAR(30) NOT NULL REFERENCES Transporty(Numer_transportu) ON UPDATE CASCADE,
    PRIMARY KEY (Id_rezerwacji, Numer_transportu)
);
GO

CREATE TABLE Rezerwacje_Uczestnicy (
    Id_rezerwacji INT NOT NULL REFERENCES Rezerwacje(Id_rezerwacji) ON DELETE CASCADE,
    Id_osoby INT NOT NULL REFERENCES Uczestnicy(Id_osoby),
    PRIMARY KEY (Id_rezerwacji, Id_osoby)
);
GO
