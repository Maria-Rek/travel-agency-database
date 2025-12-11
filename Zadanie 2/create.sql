--CREATE DATABASE biuro_podrozy;
--GO
--USE biuro_podrozy;
--GO

-- ==== S£OWNIKI I TABELE NIEZALEØNE ===

CREATE TABLE Destynacje (
    Id_destynacji INT IDENTITY(1,1) PRIMARY KEY,
    Kraj VARCHAR(50) NOT NULL CHECK (
    Kraj LIKE '[A-Z•∆ £—”åèØ]%' 
    AND Kraj NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ -]%'
    ),
    Region VARCHAR(100) CHECK (Region NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ -]%'),
    Miasto VARCHAR(50) NOT NULL CHECK (Miasto NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ .-]%'),

    CONSTRAINT UQ_Destynacje UNIQUE (Kraj, Region, Miasto)
);

CREATE TABLE Hotele (
    Id_hotelu INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa VARCHAR(100) NOT NULL CHECK (
    Nazwa LIKE '[A-Z•∆ £—”åèØ0-9]%' 
    AND Nazwa NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ0-9 .,*-]%'
    ),
    Standard INT NOT NULL CHECK (Standard BETWEEN 1 AND 5),
    Adres VARCHAR(150) NOT NULL CHECK (Adres NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ0-9 .,/-]%'),
    Certyfikat_wspolpracy VARCHAR(20) DEFAULT 'aktywny' CHECK (Certyfikat_wspolpracy IN ('aktywny', 'wygas≥'))
);

CREATE TABLE Piloci (
    Id_pilota INT IDENTITY(1,1) PRIMARY KEY,
    Imie VARCHAR(50) NOT NULL CHECK (
    Imie LIKE '[A-Z•∆ £—”åèØ]%' 
    AND Imie NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ -]%'
    ),
    Nazwisko VARCHAR(70) NOT NULL CHECK (
    Nazwisko LIKE '[A-Z•∆ £—”åèØ]%' 
    AND Nazwisko NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ -]%'
    ),
    Email VARCHAR(100) CHECK (Email LIKE '%_@__%.__%'),
    Telefon VARCHAR(20) NOT NULL CHECK (
    Telefon NOT LIKE '%[^0-9+]%' 
    AND Telefon NOT LIKE '_%+%'
    ),
    Data_zatrudnienia DATE NOT NULL CHECK (Data_zatrudnienia <= GETDATE()),
    Status_pilota VARCHAR(30) NOT NULL CHECK (Status_pilota IN ('aktywny','niedostÍpny','zakoÒczona wspÛ≥praca'))
);

CREATE TABLE Transporty (
    Numer_transportu VARCHAR(30) PRIMARY KEY, -- Klucz naturalny
    Typ_transportu VARCHAR(20) NOT NULL CHECK (Typ_transportu IN ('autokar', 'samolot', 'prom', 'pociπg')),
    Przewoznik VARCHAR(60) NOT NULL CHECK (
    Przewoznik LIKE '[A-Z•∆ £—”åèØ0-9]%' 
    AND Przewoznik NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ0-9 .,-]%'
    ),
    Miejsce_poczatkowe VARCHAR(50) NOT NULL CHECK (
    Miejsce_poczatkowe LIKE '[A-Z•∆ £—”åèØ]%' 
    AND Miejsce_poczatkowe NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ0-9 ]%'
    ),
    Miejsce_docelowe VARCHAR(50) NOT NULL CHECK (
    Miejsce_docelowe LIKE '[A-Z•∆ £—”åèØ]%' 
    AND Miejsce_docelowe NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ0-9 ]%'
    ),
    Data_wyjazdu DATETIME NOT NULL,
    Data_przyjazdu DATETIME NOT NULL,
    
    CONSTRAINT CK_Transport_Daty CHECK (Data_przyjazdu >= Data_wyjazdu),
    CONSTRAINT CK_Numer_Transportu CHECK (Numer_transportu NOT LIKE '%[^A-Z0-9]%')
);

CREATE TABLE Dane_Osobowe (
    Id_osoby INT IDENTITY(1,1) PRIMARY KEY,
    Imie VARCHAR(50) NOT NULL CHECK (
    Imie LIKE '[A-Z•∆ £—”åèØ]%' 
    AND Imie NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ -]%'
    ),
    Nazwisko VARCHAR(70) NOT NULL CHECK (
    Nazwisko LIKE '[A-Z•∆ £—”åèØ]%' 
    AND Nazwisko NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ -]%'
    ),
    Email VARCHAR(100) CHECK (Email LIKE '%_@__%.__%'),
    Nr_telefonu VARCHAR(20) CHECK (
    Nr_telefonu NOT LIKE '%[^0-9+]%' 
    AND Nr_telefonu NOT LIKE '_%+%'
    ),
    Data_urodzenia DATE NOT NULL CHECK (Data_urodzenia <= GETDATE())
);

-- ==== TABELE ZALEØNE ===

CREATE TABLE Wycieczki (
    Kod_wycieczki VARCHAR(20) PRIMARY KEY CHECK (
    LEN(Kod_wycieczki) >= 5 
    AND Kod_wycieczki NOT LIKE '%[^A-Z0-9]%'
    ),
    Nazwa VARCHAR(120) NOT NULL CHECK (
    Nazwa LIKE '[A-Z•∆ £—”åèØ0-9]%' 
    AND Nazwa NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ0-9 .,-]%'
    ),
    Opis VARCHAR(1000) CHECK (Opis NOT LIKE '%[^a-zA-ZπÊÍ≥ÒÛúüø•∆ £—”åèØ0-9 .,:-]%'),
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
    Status_terminu VARCHAR(20) NOT NULL CHECK (Status_terminu IN ('planowany', 'aktywny', 'zakoÒczony', 'odwo≥any')),
    Liczba_dostepnych_miejsc INT NOT NULL CHECK (Liczba_dostepnych_miejsc >= 0),
    Id_pilota INT NOT NULL REFERENCES Piloci(Id_pilota),
    Kod_wycieczki VARCHAR(20) NOT NULL,
    Id_hotelu INT NOT NULL,
    
    FOREIGN KEY (Kod_wycieczki, Id_hotelu) REFERENCES Zakwaterowanie(Kod_wycieczki, Id_hotelu) ON UPDATE CASCADE,
    CONSTRAINT CK_Termin_Daty CHECK (Data_powrotu >= Data_wyjazdu)
);

CREATE TABLE Klienci (
    Id_osoby INT PRIMARY KEY REFERENCES Dane_Osobowe(Id_osoby),
    Login VARCHAR(30) NOT NULL UNIQUE CHECK (
        LEN(Login) >= 3 
        AND Login NOT LIKE '%[^a-zA-Z0-9_]%'
    )
);

CREATE TABLE Uczestnicy (
    Id_osoby INT PRIMARY KEY REFERENCES Dane_Osobowe(Id_osoby),
    Typ_dokumentu VARCHAR(30) NOT NULL CHECK (Typ_dokumentu IN ('dowÛd osobisty', 'paszport', 'inny dokument toøsamoúci'))
);

CREATE TABLE Rezerwacje (
    Id_rezerwacji INT IDENTITY(1,1) PRIMARY KEY,
    Status_rezerwacji VARCHAR(20) NOT NULL CHECK (Status_rezerwacji IN ('oczekujπca', 'potwierdzona', 'anulowana', 'zrealizowana')),
    Cena_calkowita DECIMAL(10,2) NOT NULL CHECK (Cena_calkowita >= 0),
    Data_rezerwacji DATE DEFAULT GETDATE(),
    Id_terminu INT NOT NULL REFERENCES Terminy(Id_terminu),
    Id_osoby INT NOT NULL REFERENCES Klienci(Id_osoby)
);

CREATE TABLE Platnosci (
    Nr_transakcji INT IDENTITY(1,1) PRIMARY KEY,
    Kwota DECIMAL(10,2) NOT NULL CHECK (Kwota > 0),
    Metoda_platnosci VARCHAR(20),
    Status_platnosci VARCHAR(20) NOT NULL CHECK (Status_platnosci IN ('nieop≥acona', 'op≥acona')),
    Data_planowana DATE NOT NULL,
    Data_wplaty DATE,
    Id_rezerwacji INT NOT NULL UNIQUE REFERENCES Rezerwacje(Id_rezerwacji) ON DELETE CASCADE,

    CONSTRAINT CK_Platnosci_Logika CHECK (
        (Status_platnosci = 'nieop≥acona' AND Metoda_platnosci IS NULL)
        OR
        (Status_platnosci = 'op≥acona' AND Metoda_platnosci IN ('gotÛwka', 'karta', 'przelew'))
    )
);

-- ==== TABELE £•CZ•CE ===

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

PRINT 'Bazka utworzona';