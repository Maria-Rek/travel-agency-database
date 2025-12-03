-- CREATE DATABASE biuro_podrozy
-- USE biuro_podrozy

CREATE TABLE Destynacje (
    Id_destynacji INT IDENTITY(1,1) PRIMARY KEY,
    Kraj VARCHAR(50) NOT NULL,
    Region VARCHAR(100),
    Miasto VARCHAR(50) NOT NULL,
    CONSTRAINT UQ_Destynacje UNIQUE (Kraj, Region, Miasto) -- zapobieganie duplikatom
);

CREATE TABLE Hotele (
    Id_hotelu INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa VARCHAR(100) NOT NULL,
    Standard INT NOT NULL CHECK (Standard BETWEEN 1 AND 5),
    Adres VARCHAR(150) NOT NULL,
    Certyfikat_wspolpracy VARCHAR(20) DEFAULT 'aktywny' CHECK (Certyfikat_wspolpracy IN ('aktywny', 'wygas³'))
);

CREATE TABLE Piloci (
    Id_pilota INT IDENTITY(1,1) PRIMARY KEY,
    Imie VARCHAR(50) NOT NULL,
    Nazwisko VARCHAR(70) NOT NULL,
    Email VARCHAR(100) CHECK (Email LIKE '%_@__%.__%'), 
    Telefon VARCHAR(20) NOT NULL,
    Data_zatrudnienia DATE NOT NULL CHECK (Data_zatrudnienia <= GETDATE()),
    Status_pilota VARCHAR(30) NOT NULL CHECK (Status_pilota IN ('aktywny','niedostêpny','zakoñczona wspó³praca'))
);

CREATE TABLE Transporty (
    Numer_transportu VARCHAR(30) PRIMARY KEY, -- klucz naturalny
    Typ_transportu VARCHAR(20) NOT NULL CHECK (Typ_transportu IN ('autokar', 'samolot', 'prom', 'poci¹g')),
    Przewoznik VARCHAR(60) NOT NULL,
    Miejsce_poczatkowe VARCHAR(50) NOT NULL,
    Miejsce_docelowe VARCHAR(50) NOT NULL,
    Data_wyjazdu DATETIME NOT NULL,
    Data_przyjazdu DATETIME NOT NULL,
    -- data przyjazdu nie mo¿e byæ wczeœniejsza ni¿ wyjazdu
    CONSTRAINT CK_Transport_Daty CHECK (Data_przyjazdu >= Data_wyjazdu)
);

CREATE TABLE Dane_Osobowe (
    Id_osoby INT IDENTITY(1,1) PRIMARY KEY,
    Imie VARCHAR(50) NOT NULL,
    Nazwisko VARCHAR(70) NOT NULL,
    Email VARCHAR(100) CHECK (Email LIKE '%_@__%.__%'),
    Nr_telefonu VARCHAR(20),
    Data_urodzenia DATE NOT NULL CHECK (Data_urodzenia <= GETDATE())
);

-- TABELE ZALE¯NE

CREATE TABLE Wycieczki (
    Kod_wycieczki VARCHAR(20) PRIMARY KEY,
    Nazwa VARCHAR(120) NOT NULL,
    Opis VARCHAR(1000),
    Status_wycieczki VARCHAR(20) NOT NULL CHECK (Status_wycieczki IN ('aktywna', 'planowana', 'archiwalna')),
    Id_destynacji INT NOT NULL REFERENCES Destynacje(Id_destynacji)
);

CREATE TABLE Zakwaterowanie (
    Kod_wycieczki VARCHAR(20) NOT NULL REFERENCES Wycieczki(Kod_wycieczki) ON UPDATE CASCADE,
    Id_hotelu INT NOT NULL REFERENCES Hotele(Id_hotelu),
    Czas_trwania INT NOT NULL CHECK (Czas_trwania > 0),
    Cena_za_osobe DECIMAL(10,2) NOT NULL CHECK (Cena_za_osobe > 0),
    PRIMARY KEY (Kod_wycieczki, Id_hotelu)
);

CREATE TABLE Terminy (
    Id_terminu INT IDENTITY(1,1) PRIMARY KEY,
    Data_wyjazdu DATE NOT NULL,
    Data_powrotu DATE NOT NULL,
    Status_terminu VARCHAR(20) NOT NULL CHECK (Status_terminu IN ('aktywny', 'planowany', 'zakoñczony', 'odwo³any')),
    Liczba_dostepnych_miejsc INT NOT NULL CHECK (Liczba_dostepnych_miejsc >= 0),
    Id_pilota INT NOT NULL REFERENCES Piloci(Id_pilota),
    Kod_wycieczki VARCHAR(20) NOT NULL,
    Id_hotelu INT NOT NULL,
    
    FOREIGN KEY (Kod_wycieczki, Id_hotelu) REFERENCES Zakwaterowanie(Kod_wycieczki, Id_hotelu) ON UPDATE CASCADE,
    CONSTRAINT CK_Termin_Daty CHECK (Data_powrotu >= Data_wyjazdu)
);

CREATE TABLE Klienci (
    Id_osoby INT PRIMARY KEY REFERENCES Dane_Osobowe(Id_osoby),
    Login VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Uczestnicy (
    Id_osoby INT PRIMARY KEY REFERENCES Dane_Osobowe(Id_osoby),
    Typ_dokumentu VARCHAR(30) NOT NULL CHECK (Typ_dokumentu IN ('dowód osobisty', 'paszport', 'inny'))
);

CREATE TABLE Rezerwacje (
    Id_rezerwacji INT IDENTITY(1,1) PRIMARY KEY,
    Status_rezerwacji VARCHAR(20) NOT NULL CHECK (Status_rezerwacji IN ('oczekuj¹ca', 'potwierdzona', 'anulowana', 'zrealizowana')),
    Cena_calkowita DECIMAL(10,2) NOT NULL CHECK (Cena_calkowita >= 0),
    Data_rezerwacji DATE DEFAULT GETDATE(),
    Id_terminu INT NOT NULL REFERENCES Terminy(Id_terminu),
    Id_osoby INT NOT NULL REFERENCES Klienci(Id_osoby)
);

CREATE TABLE Platnosci (
    Nr_transakcji INT IDENTITY(1,1) PRIMARY KEY,
    Kwota DECIMAL(10,2) NOT NULL CHECK (Kwota > 0),
    Metoda_platnosci VARCHAR(20),
    Status_platnosci VARCHAR(20) NOT NULL,
    Data_planowana DATE NOT NULL,
    Data_wplaty DATE,
    Id_rezerwacji INT NOT NULL UNIQUE REFERENCES Rezerwacje(Id_rezerwacji) ON DELETE CASCADE,
    
    -- jeœli nieop³acona -> musi byæ NULL
    -- jeœli op³acona -> =musi byæ z listy
    CONSTRAINT CK_Platnosci_Logika CHECK (
        (Status_platnosci = 'nieop³acona' AND Metoda_platnosci IS NULL)
        OR
        (Status_platnosci = 'op³acona' AND Metoda_platnosci IN ('gotówka', 'karta', 'przelew'))
    )
);

-- TABELE £¥CZ¥CE

CREATE TABLE Rezerwacje_Transporty (
    Id_rezerwacji INT NOT NULL REFERENCES Rezerwacje(Id_rezerwacji) ON DELETE CASCADE,
    Numer_transportu VARCHAR(30) NOT NULL REFERENCES Transporty(Numer_transportu) ON UPDATE CASCADE,
    PRIMARY KEY (Id_rezerwacji, Numer_transportu)
);

CREATE TABLE Rezerwacje_Uczestnicy (
    Id_rezerwacji INT NOT NULL REFERENCES Rezerwacje(Id_rezerwacji) ON DELETE CASCADE,
    Id_osoby INT NOT NULL REFERENCES Uczestnicy(Id_osoby),
    PRIMARY KEY (Id_rezerwacji, Id_osoby)
);