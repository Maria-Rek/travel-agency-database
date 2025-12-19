USE biuro_podrozy;
GO

INSERT INTO Destynacje (Kraj, Region, Miasto) VALUES 
('Polska', 'Małopolska', 'Kraków'),
('Włochy', 'Lacjum', 'Rzym'),
('Francja', NULL, 'Paryż'),
('USA', 'Nevada', 'Las Vegas'),
('USA', 'New York', 'New York'),
('ZEA', NULL, 'Dubaj'),
('Malediwy', NULL, 'Male'),
('Wielka Brytania', 'Anglia', 'London'),
('Egipt', 'Synaj', 'Sharm El Sheikh'),
('Monako', NULL, 'Monako'),
('Hiszpania', 'Katalonia', 'Barcelona'),
('Japonia', 'Tokio', 'Tokio');

INSERT INTO Hotele (Nazwa, Standard, Adres, Certyfikat_wspolpracy) VALUES 
('Hotel Copernicus', 5, 'Kanonicza 16, Kraków', 'aktywny'),
('Hotel Hassler', 5, 'Piazza Trinita 6, Rzym', 'aktywny'),
('Ritz Paris', 5, 'Place Vendome 15, Paryż', 'aktywny'),
('Bellagio', 5, 'Las Vegas Blvd, Las Vegas', 'aktywny'),
('The Plaza', 5, '5th Avenue, New York', 'aktywny'),
('Burj Al Arab', 5, 'Jumeirah St, Dubaj', 'aktywny'), 
('One and Only Reethi Rah', 5, 'North Atoll, Male', 'aktywny'),
('The Savoy', 5, 'Strand, London', 'wygasł'),
('Four Seasons Resort', 5, 'Four Seasons Blvd, Sharm', 'aktywny'),
('Hotel de Paris', 5, 'Place du Casino, Monako', 'aktywny'),
('W Barcelona', 5, 'Placa de la Rosa, Barcelona', 'aktywny');

INSERT INTO Piloci (Imie, Nazwisko, Email, Telefon, Data_zatrudnienia, Status_pilota) VALUES 
('Bartosz', 'Kurek', 'bartosz.kurek@wp.pl', '500100100', '2016-01-01', 'aktywny'),
('Wilfredo', 'Leon', 'w.leon@gmail.com', '500100101', '2019-03-15', 'aktywny'),
('Aleksander', 'Śliwka', 'olek.sliwka@wp.pl', '500100102', '2018-05-20', 'aktywny'),
('Tomasz', 'Fornal', 'tomek.fornal@gmail.com', '500100103', '2022-07-01', 'niedostępny'),
('Paweł', 'Zatorski', 'zati@wp.pl', '500100104', '2015-11-10', 'aktywny'),
('Jakub', 'Kochanowski', 'kuba.kochan@gmail.com', '500100105', '2021-01-05', 'aktywny'),
('Marcin', 'Janusz', 'marcin.janusz@gmail.com', '500100106', '2020-09-01', 'zakończona współpraca'),
('Kamil', 'Semeniuk', 'semeniuk@gmail.com', '500100107', '2020-06-15', 'aktywny'),
('Łukasz', 'Kaczmarek', 'lukasz.k@wp.pl', '500100108', '2019-02-28', 'aktywny'),
('Grzegorz', 'Łomacz', 'g.lomacz@wp.pl', '500100109', '2016-04-10', 'aktywny');

INSERT INTO Transporty (Numer_transportu, Typ_transportu, Przewoznik, Miejsce_poczatkowe, Miejsce_docelowe, Data_wyjazdu, Data_przyjazdu) VALUES 
('LOT001', 'samolot', 'LOT', 'Warszawa', 'Kraków', '2025-06-01 08:00', '2025-06-01 09:00'),
('LOT002', 'samolot', 'LOT', 'Kraków', 'Warszawa', '2025-06-08 14:00', '2025-06-08 15:00'),
('AF1234', 'samolot', 'AirFrance', 'Warszawa', 'Paryż', '2025-06-15 10:00', '2025-06-15 12:30'),
('DL9999', 'samolot', 'Delta', 'Warszawa', 'New York', '2025-08-01 07:00', '2025-08-01 17:00'),
('EK1010', 'samolot', 'Emirates', 'Warszawa', 'Dubaj', '2025-07-01 05:00', '2025-07-01 13:00'),
('RYAN01', 'samolot', 'Ryanair', 'Modlin', 'Rzym', '2025-07-15 14:00', '2025-07-15 16:00'),
('WIZZ01', 'samolot', 'WizzAir', 'Katowice', 'London', '2025-09-01 11:00', '2025-09-01 13:00'),
('PKP500', 'pociąg', 'PKP', 'Gdańsk', 'Kraków', '2025-06-20 12:00', '2025-06-20 18:00'),
('BUS666', 'autokar', 'Sindbad', 'Wrocław', 'Paryż', '2025-08-15 20:00', '2025-08-16 12:00'),
('LH1111', 'samolot', 'Lufthansa', 'Warszawa', 'Las Vegas', '2025-07-10 09:00', '2025-07-10 20:00'),
('QATAR1', 'samolot', 'Qatar', 'Warszawa', 'Male', '2025-05-05 06:00', '2025-05-06 10:00'),
('EGYPT1', 'samolot', 'EnterAir', 'Poznań', 'Sharm', '2025-08-05 07:00', '2025-08-05 11:00'),
('PRIVMJ', 'samolot', 'PrivateJet', 'Chicago', 'Monako', '2025-08-16 14:00', '2025-08-16 22:00'),
('EIP555', 'pociąg', 'PKP', 'Warszawa', 'Gdańsk', '2025-06-01 05:00', '2025-06-01 08:00'),
('BA007', 'samolot', 'British Airways', 'London', 'Las Vegas', '2025-09-10 06:00', '2025-09-10 18:00'),
('AF1235', 'samolot', 'AirFrance', 'Paryż', 'Warszawa', '2025-09-20 08:00', '2025-09-20 10:30'),
('DL9998', 'samolot', 'Delta', 'New York', 'Warszawa', '2025-10-01 11:00', '2025-10-02 08:00'),
('EK1011', 'samolot', 'Emirates', 'Dubaj', 'Warszawa', '2025-08-20 05:00', '2025-08-20 13:00'),
('RYAN02', 'samolot', 'Ryanair', 'Rzym', 'Modlin', '2025-08-05 14:00', '2025-08-05 16:00'),
('LH1112', 'samolot', 'Lufthansa', 'Las Vegas', 'Warszawa', '2025-09-05 09:00', '2025-09-06 08:00'),
('BUS667', 'autokar', 'Sindbad', 'Paryż', 'Wrocław', '2025-07-25 18:00', '2025-07-26 10:00');

INSERT INTO Dane_Osobowe (Imie, Nazwisko, Email, Nr_telefonu, Data_urodzenia) VALUES 
('Iga', 'Świątek', 'iga.1ga@wp.pl', '600100100', '2001-05-31'),
('Robert', 'Makłowicz', 'robert@wp.pl', '600100101', '1963-08-12'),
('Nicki', 'Minaj', 'nicki@gmail.com', '600100102', '1982-12-08'),
('Kanye', 'West', 'ye@gmail.com', '123456789', '1977-06-08'),
('Kim', 'Kardashian', 'kim@gmail.com', '987654321', '1980-10-21'),
('Elon', 'Musk', 'elon@gmail.com', '555000111', '1971-06-28'),
('Taylor', 'Swift', 'taylor@gmail.com', '131313131', '1989-12-13'),
('Robert', 'Lewandowski', 'rl9@wp.pl', '999999999', '1988-08-21'),
('Lana', 'Del Rey', 'lana@gmail.com', '666999666', '1985-06-21'),
('Olivia', 'Rodrigo', 'liv@gmail.com', '555444333', '2003-02-20'),
('Cristiano', 'Ronaldo', 'cr7@gmail.com', '777777777', '1985-02-05'),
('Doja', 'Cat', 'doja@gmail.com', '222333444', '1995-10-21'),
('Travis', 'Scott', 'travis@gmail.com', '444555666', '1991-04-30'),
('Beyonce', 'Knowles', 'queen@gmail.com', '888888888', '1981-09-04'),
('Jay', 'Z', 'jayz@gmail.com', '666666666', '1969-12-04'),
('Billie', 'Eilish', 'billie@gmail.com', '111000111', '2001-12-18'),
('Ariana', 'Grande', 'ari@gmail.com', '777000777', '1993-06-26'),
('Miley', 'Cyrus', 'miley@gmail.com', '333222111', '1992-11-23'),
('Sabrina', 'Carpenter', 'sabrina@gmail.com', '777888999', '1999-05-11'),
('Dua', 'Lipa', 'dua@gmail.com', '420420420', '1995-08-22'),
('North', 'West', NULL, NULL, '2013-06-15'),
('Saint', 'West', NULL, NULL, '2015-12-05'),
('Stormi', 'Webster', NULL, NULL, '2018-02-01'),
('Blue', 'Ivy', NULL, NULL, '2012-01-07'),
('Robert', 'Pattinson', 'batman@gmail.com', '123123123', '1986-05-13'), 
('Keanu', 'Reeves', 'neo@gmail.com', '111222333', '1964-09-02'), 
('Zendaya', 'Coleman', 'zen@gmail.com', '999888777', '1996-09-01'); 

INSERT INTO Wycieczki (Kod_wycieczki, Nazwa, Opis, Status_wycieczki, Id_destynacji) VALUES 
('PLKRK001', 'Kraków Standard', 'Zwiedzanie Wawelu, Rynku i Sukiennic z przewodnikiem', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Polska' AND Region='Małopolska' AND Miasto='Kraków')),
('ITROM002', 'Rzymskie Wakacje', 'Koloseum, Watykan i Forum Romanum autokarem', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Włochy' AND Region='Lacjum' AND Miasto='Rzym')),
('FRPAR003', 'Paryż w Pigułce', 'Wjazd na Wieżę Eiffla, Luwr i rejs po Sekwanie', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Francja' AND Region IS NULL AND Miasto='Paryż')),
('USALV004', 'Las Vegas Trip', 'Spacer główną ulicą, pokaz fontann i czas wolny', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='USA' AND Region='Nevada' AND Miasto='Las Vegas')),
('USANY005', 'Nowy Jork City', 'Statua Wolności, Times Square i spacer po parku', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='USA' AND Region='New York' AND Miasto='New York')),
('DXB006', 'Dubaj Express', 'Wjazd na Burj Khalifa, Dubai Mall i plażowanie', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='ZEA' AND Region IS NULL AND Miasto='Dubaj')),
('MLE007', 'Malediwy Wypoczynek', 'Typowe plażowanie, hotel i basen przez tydzień', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Malediwy' AND Region IS NULL AND Miasto='Male')),
('UKLON008', 'Londyn Klasyczny', 'Big Ben, London Eye i zmiana warty pod pałacem', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Wielka Brytania' AND Region='Anglia' AND Miasto='London')),
('EGSAR009', 'Egipt All Inclusive', 'Siedzenie nad basenem, bufet i wycieczka na quady', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Egipt' AND Region='Synaj' AND Miasto='Sharm El Sheikh')),
('MON010', 'Monako Spacer', 'Spacer pod kasyno, oceanarium i zdjęcia w porcie', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Monako' AND Region IS NULL AND Miasto='Monako')),
('PLKRK001VIP', 'Kraków i Wieliczka', 'Zwiedzanie miasta plus kopalnia soli', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Polska' AND Region='Małopolska' AND Miasto='Kraków')),
('ITROM002REL', 'Rzym i Watykan', 'Całodzienne zwiedzanie bazyliki i muzeów', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Włochy' AND Region='Lacjum' AND Miasto='Rzym')),
('FRPAR003ART', 'Paryż Muzealny', 'Luwr, dOrsay i dzielnica łacińska pieszo', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Francja' AND Region IS NULL AND Miasto='Paryż')),
('USALV004VIP', 'Vegas i Kanion', 'Wycieczka autokarowa nad Wielki Kanion', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='USA' AND Region='Nevada' AND Miasto='Las Vegas')),
('USANY005BUS', 'NY Objazdówka', 'Zwiedzanie Manhattanu piętrowym autobusem', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='USA' AND Region='New York' AND Miasto='New York')),
('DXB006GOLD', 'Dubaj i Pustynia', 'Safari samochodami terenowymi po wydmach', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='ZEA' AND Region IS NULL AND Miasto='Dubaj')),
('MLE007HON', 'Malediwy Nurkowanie', 'Snorkeling na rafie koralowej przy hotelu', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Malediwy' AND Region IS NULL AND Miasto='Male')),
('UKLON008ROY', 'Londyn Historyczny', 'Tower of London i spacer wzdłuż Tamizy', 'planowana',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Wielka Brytania' AND Region='Anglia' AND Miasto='London')),
('EGSAR009FAM', 'Egipt Piramidy', 'Całodniowa wycieczka autokarem pod piramidy', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Egipt' AND Region='Synaj' AND Miasto='Sharm El Sheikh')),
('MON010YCH', 'Lazurowe Wybrzeże', 'Wycieczka pociągiem do Nicei i Cannes', 'aktywna',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Monako' AND Region IS NULL AND Miasto='Monako')),
('ESBAR011', 'Barcelona Sun', 'Wycieczka widmo bez terminow', 'planowana',
 (SELECT Id_destynacji FROM Destynacje WHERE Kraj='Hiszpania' AND Region='Katalonia' AND Miasto='Barcelona'));

INSERT INTO Zakwaterowanie (Kod_wycieczki, Id_hotelu, Czas_trwania, Cena_za_osobe) VALUES 
('PLKRK001', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel Copernicus' AND Adres='Kanonicza 16, Kraków'), 3, 1500.00),
('ITROM002', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel Hassler' AND Adres='Piazza Trinita 6, Rzym'), 5, 3000.00),
('FRPAR003', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Ritz Paris' AND Adres='Place Vendome 15, Paryż'), 4, 10000.00),
('USALV004', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Bellagio' AND Adres='Las Vegas Blvd, Las Vegas'), 7, 8000.00),
('USANY005', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='The Plaza' AND Adres='5th Avenue, New York'), 5, 9500.00),
('DXB006', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Burj Al Arab' AND Adres='Jumeirah St, Dubaj'), 7, 15000.00),
('MLE007', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='One and Only Reethi Rah' AND Adres='North Atoll, Male'), 10, 12000.00),
('UKLON008', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='The Savoy' AND Adres='Strand, London'), 4, 4000.00),
('EGSAR009', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Four Seasons Resort' AND Adres='Four Seasons Blvd, Sharm'), 14, 2500.00),
('MON010', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel de Paris' AND Adres='Place du Casino, Monako'), 3, 20000.00),
('PLKRK001VIP', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel Copernicus' AND Adres='Kanonicza 16, Kraków'), 3, 3000.00),
('ITROM002REL', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel Hassler' AND Adres='Piazza Trinita 6, Rzym'), 7, 4000.00),
('FRPAR003ART', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Ritz Paris' AND Adres='Place Vendome 15, Paryż'), 5, 11000.00),
('USALV004VIP', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Bellagio' AND Adres='Las Vegas Blvd, Las Vegas'), 7, 25000.00),
('USANY005BUS', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='The Plaza' AND Adres='5th Avenue, New York'), 3, 12000.00),
('DXB006GOLD', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Burj Al Arab' AND Adres='Jumeirah St, Dubaj'), 14, 30000.00),
('MLE007HON', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='One and Only Reethi Rah' AND Adres='North Atoll, Male'), 14, 18000.00),
('UKLON008ROY', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='The Savoy' AND Adres='Strand, London'), 5, 6000.00),
('EGSAR009FAM', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Four Seasons Resort' AND Adres='Four Seasons Blvd, Sharm'), 7, 3000.00),
('MON010YCH', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel de Paris' AND Adres='Place du Casino, Monako'), 7, 50000.00);

INSERT INTO Terminy (Data_wyjazdu, Data_powrotu, Status_terminu, Liczba_dostepnych_miejsc, Id_pilota, Kod_wycieczki, Id_hotelu) VALUES 
('2025-06-01', '2025-06-04', 'planowany', 40,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100100'),
 'PLKRK001', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel Copernicus' AND Adres='Kanonicza 16, Kraków')),

('2025-07-15', '2025-07-20', 'planowany', 30,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100101'),
 'ITROM002', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel Hassler' AND Adres='Piazza Trinita 6, Rzym')),

('2025-06-15', '2025-06-19', 'planowany', 20,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100104'),
 'FRPAR003', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Ritz Paris' AND Adres='Place Vendome 15, Paryż')),

('2025-07-10', '2025-07-17', 'planowany', 100,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100108'),
 'USALV004', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Bellagio' AND Adres='Las Vegas Blvd, Las Vegas')),

('2025-08-01', '2025-08-06', 'planowany', 25,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100102'),
 'USANY005', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='The Plaza' AND Adres='5th Avenue, New York')),

('2025-07-01', '2025-07-08', 'planowany', 10,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100105'),
 'DXB006', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Burj Al Arab' AND Adres='Jumeirah St, Dubaj')),

('2025-05-05', '2025-05-15', 'planowany', 15,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100107'),
 'MLE007', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='One and Only Reethi Rah' AND Adres='North Atoll, Male')),

('2025-09-01', '2025-09-05', 'planowany', 35,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100109'),
 'UKLON008', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='The Savoy' AND Adres='Strand, London')),

('2025-08-05', '2025-08-19', 'planowany', 50,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100101'),
 'EGSAR009', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Four Seasons Resort' AND Adres='Four Seasons Blvd, Sharm')),

('2025-08-16', '2025-08-19', 'planowany', 5,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100109'),
 'MON010', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel de Paris' AND Adres='Place du Casino, Monako')),

('2025-09-10', '2025-09-17', 'planowany', 20,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100108'),
 'USALV004VIP', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Bellagio' AND Adres='Las Vegas Blvd, Las Vegas')),

('2025-06-20', '2025-06-27', 'planowany', 45,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100100'),
 'ITROM002REL', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel Hassler' AND Adres='Piazza Trinita 6, Rzym')),

('2025-10-01', '2025-10-15', 'planowany', 35,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100105'),
 'DXB006GOLD', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Burj Al Arab' AND Adres='Jumeirah St, Dubaj')),

('2025-08-20', '2025-09-03', 'planowany', 50,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100104'),
 'FRPAR003ART', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Ritz Paris' AND Adres='Place Vendome 15, Paryż')),

('2025-08-05', '2025-08-12', 'planowany', 48,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100107'),
 'MLE007HON', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='One and Only Reethi Rah' AND Adres='North Atoll, Male')),

('2025-09-05', '2025-09-10', 'planowany', 30,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100109'),
 'UKLON008ROY', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='The Savoy' AND Adres='Strand, London')),

('2025-07-25', '2025-08-01', 'planowany', 30,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100101'),
 'EGSAR009FAM', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Four Seasons Resort' AND Adres='Four Seasons Blvd, Sharm')),

('2025-06-10', '2025-06-13', 'planowany', 40,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100100'),
 'PLKRK001VIP', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel Copernicus' AND Adres='Kanonicza 16, Kraków')),

('2025-09-15', '2025-09-18', 'planowany', 25,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100102'),
 'USANY005BUS', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='The Plaza' AND Adres='5th Avenue, New York')),

('2025-08-16', '2025-08-23', 'planowany', 5,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100109'),
 'MON010YCH', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel de Paris' AND Adres='Place du Casino, Monako')),

('2025-09-01', '2025-09-04', 'planowany', 10,
 (SELECT TOP 1 Id_pilota FROM Piloci WHERE Telefon='500100101'),
 'PLKRK001', (SELECT TOP 1 Id_hotelu FROM Hotele WHERE Nazwa='Hotel Copernicus' AND Adres='Kanonicza 16, Kraków'));

INSERT INTO Klienci (Id_osoby, Login) VALUES 
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='iga.1ga@wp.pl'), 'iga_s'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='robert@wp.pl'), 'robert_m'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='nicki@gmail.com'), 'nicki_m'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='ye@gmail.com'), 'kanye_w'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='kim@gmail.com'), 'kim_k'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='elon@gmail.com'), 'elon_m'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='taylor@gmail.com'), 'taylor_s'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='rl9@wp.pl'), 'robert_l'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='lana@gmail.com'), 'lana_dr'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='liv@gmail.com'), 'olivia_r'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='cr7@gmail.com'), 'cr7_siu'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='doja@gmail.com'), 'doja_c'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='travis@gmail.com'), 'travis_s'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='queen@gmail.com'), 'beyonce'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='jayz@gmail.com'), 'jay_z'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='billie@gmail.com'), 'billie_e'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='ari@gmail.com'), 'ariana_g'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='miley@gmail.com'), 'miley_c'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='sabrina@gmail.com'), 'sabrina_c'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='dua@gmail.com'), 'dua_l'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='neo@gmail.com'), 'neo_matrix');

INSERT INTO Uczestnicy (Id_osoby, Typ_dokumentu) VALUES 
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='iga.1ga@wp.pl'), 'dowód osobisty'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='robert@wp.pl'), 'dowód osobisty'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='nicki@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='ye@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='kim@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='elon@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='taylor@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='rl9@wp.pl'), 'dowód osobisty'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='lana@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='liv@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='cr7@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='doja@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='travis@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='queen@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='jayz@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='billie@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='ari@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='miley@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='sabrina@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='dua@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='neo@gmail.com'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Imie='North' AND Nazwisko='West' AND Data_urodzenia='2013-06-15'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Imie='Saint' AND Nazwisko='West' AND Data_urodzenia='2015-12-05'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Imie='Stormi' AND Nazwisko='Webster' AND Data_urodzenia='2018-02-01'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Imie='Blue' AND Nazwisko='Ivy' AND Data_urodzenia='2012-01-07'), 'paszport'),
((SELECT Id_osoby FROM Dane_Osobowe WHERE Email='zen@gmail.com'), 'paszport');

USE biuro_podrozy;
GO

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'zrealizowana', 1500.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='PLKRK001' AND Data_wyjazdu='2025-06-01'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='iga.1ga@wp.pl')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (1500.00, 'gotówka', 'opłacona', '2025-05-01', '2025-04-28', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'LOT001'),
       (IDENT_CURRENT('Rezerwacje'), 'LOT002');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='iga.1ga@wp.pl')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'potwierdzona', 3000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='ITROM002' AND Data_wyjazdu='2025-07-15'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='robert@wp.pl')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (3000.00, 'przelew', 'opłacona', '2025-04-20', '2025-04-20', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'RYAN01'),
       (IDENT_CURRENT('Rezerwacje'), 'RYAN02');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='robert@wp.pl')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'potwierdzona', 10000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='FRPAR003' AND Data_wyjazdu='2025-06-15'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='nicki@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (10000.00, 'karta', 'opłacona', '2025-06-01', '2025-06-01', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'AF1234'),
       (IDENT_CURRENT('Rezerwacje'), 'AF1235');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='nicki@gmail.com')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'oczekująca', 25000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='USALV004VIP' AND Data_wyjazdu='2025-09-10'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='ye@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (25000.00, NULL, 'nieopłacona', '2025-08-20', NULL, IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'LH1111'),
       (IDENT_CURRENT('Rezerwacje'), 'LH1112');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES
(IDENT_CURRENT('Rezerwacje'), (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='ye@gmail.com'))),
(IDENT_CURRENT('Rezerwacje'), (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Imie='North' AND Nazwisko='West' AND Data_urodzenia='2013-06-15'))),
(IDENT_CURRENT('Rezerwacje'), (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Imie='Saint' AND Nazwisko='West' AND Data_urodzenia='2015-12-05')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'zrealizowana', 11000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='FRPAR003ART' AND Data_wyjazdu='2025-08-20'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='kim@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (11000.00, 'karta', 'opłacona', '2025-07-01', '2025-06-30', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'BUS666');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='kim@gmail.com')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'potwierdzona', 30000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='DXB006GOLD' AND Data_wyjazdu='2025-10-01'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='elon@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (30000.00, 'karta', 'opłacona', '2025-09-01', '2025-09-01', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'EK1010'),
       (IDENT_CURRENT('Rezerwacje'), 'EK1011');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='elon@gmail.com')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'potwierdzona', 12000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='MLE007' AND Data_wyjazdu='2025-05-05'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='taylor@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (12000.00, 'przelew', 'opłacona', '2025-04-01', '2025-04-01', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'QATAR1');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='taylor@gmail.com')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'potwierdzona', 4000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='ITROM002REL' AND Data_wyjazdu='2025-06-20'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='rl9@wp.pl')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (4000.00, 'przelew', 'opłacona', '2025-06-10', '2025-06-10', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'RYAN01');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='rl9@wp.pl')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'anulowana', 9500.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='USANY005' AND Data_wyjazdu='2025-08-01'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='lana@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (9500.00, NULL, 'nieopłacona', '2025-07-01', NULL, IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'DL9999'),
       (IDENT_CURRENT('Rezerwacje'), 'DL9998');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='lana@gmail.com')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'potwierdzona', 20000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='MON010' AND Data_wyjazdu='2025-08-16'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='liv@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (20000.00, 'gotówka', 'opłacona', '2025-08-01', '2025-08-01', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'PRIVMJ');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='liv@gmail.com')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'oczekująca', 20000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='MON010' AND Data_wyjazdu='2025-08-16'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='cr7@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (20000.00, NULL, 'nieopłacona', '2025-08-01', NULL, IDENT_CURRENT('Rezerwacje'));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'potwierdzona', 4000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='UKLON008' AND Data_wyjazdu='2025-09-01'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='doja@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (4000.00, 'karta', 'opłacona', '2025-08-20', '2025-08-20', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'WIZZ01');

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'zrealizowana', 3000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='EGSAR009FAM' AND Data_wyjazdu='2025-07-25'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='travis@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (3000.00, 'gotówka', 'opłacona', '2025-07-05', '2025-07-05', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'EGYPT1');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES
(IDENT_CURRENT('Rezerwacje'), (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='travis@gmail.com'))),
(IDENT_CURRENT('Rezerwacje'), (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Imie='Stormi' AND Nazwisko='Webster' AND Data_urodzenia='2018-02-01')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'potwierdzona', 50001.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='MON010YCH' AND Data_wyjazdu='2025-08-16'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='queen@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (50001.00, 'przelew', 'opłacona', '2025-08-01', '2025-08-01', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'PRIVMJ');
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES
(IDENT_CURRENT('Rezerwacje'), (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='queen@gmail.com'))),
(IDENT_CURRENT('Rezerwacje'), (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Imie='Blue' AND Nazwisko='Ivy' AND Data_urodzenia='2012-01-07')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'potwierdzona', 50000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='MON010YCH' AND Data_wyjazdu='2025-08-16'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='jayz@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (50000.00, 'przelew', 'opłacona', '2025-08-01', '2025-08-01', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu)
VALUES (IDENT_CURRENT('Rezerwacje'), 'PRIVMJ');

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'zrealizowana', 15000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='DXB006' AND Data_wyjazdu='2025-07-01'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='billie@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (15000.00, 'karta', 'opłacona', '2025-06-15', '2025-06-15', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='billie@gmail.com')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'potwierdzona', 15000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='DXB006' AND Data_wyjazdu='2025-07-01'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='ari@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (15000.00, 'karta', 'opłacona', '2025-06-15', '2025-06-15', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='ari@gmail.com')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'oczekująca', 18000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='MLE007HON' AND Data_wyjazdu='2025-08-05'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='miley@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (18000.00, NULL, 'nieopłacona', '2025-07-10', NULL, IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='miley@gmail.com')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'zrealizowana', 8000.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='USALV004' AND Data_wyjazdu='2025-07-10'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='sabrina@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (8000.00, 'gotówka', 'opłacona', '2025-07-01', '2025-07-01', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby)
VALUES (IDENT_CURRENT('Rezerwacje'),
        (SELECT Id_osoby FROM Uczestnicy WHERE Id_osoby=(SELECT Id_osoby FROM Dane_Osobowe WHERE Email='sabrina@gmail.com')));

INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby)
VALUES (
 'anulowana', 1500.00,
 (SELECT TOP 1 Id_terminu FROM Terminy WHERE Kod_wycieczki='PLKRK001' AND Data_wyjazdu='2025-09-01'),
 (SELECT Id_osoby FROM Dane_Osobowe WHERE Email='dua@gmail.com')
);
INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji)
VALUES (1500.00, NULL, 'nieopłacona', '2025-08-20', NULL, IDENT_CURRENT('Rezerwacje'));
