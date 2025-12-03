INSERT INTO Destynacje (Kraj, Region, Miasto) VALUES 
('Hiszpania', 'Andaluzja', 'Sewilla'),
('Hiszpania', 'Katalonia', 'Barcelona'),
('W�ochy', 'Toskania', 'Florencja'),
('W�ochy', 'Sycylia', 'Palermo'),
('Grecja', 'Kreta', 'Chania'),
('Grecja', 'Rodos', 'Rodos'),
('Turcja', 'Riwiera', 'Antalya'),
('Japonia', 'Kanto', 'Tokio'),
('Chorwacja', 'Dalmacja', 'Split'),
('Portugalia', 'Algarve', 'Faro');


INSERT INTO Hotele (Nazwa, Standard, Adres, Certyfikat_wspolpracy) VALUES 
('Hotel Sevilla', 5, 'ul. Hiszpanska 1, Sewilla', 'aktywny'),
('Barcelona Center', 3, 'ul. Glowna 120, Barcelona', 'aktywny'),
('Villa Toscana', 4, 'ul. Widokowa 10, Florencja', 'aktywny'),
('Palermo Beach', 4, 'ul. Nadmorska 5, Palermo', 'aktywny'),
('Kreta Sun', 3, 'ul. Plazowa 1, Chania', 'aktywny'),
('Hotel Rodos', 5, 'ul. Grecka 15, Rodos', 'aktywny'),
('Antalya Resort & Spa', 5, 'ul. Turecka 50, Antalya', 'aktywny'),
('Tokyo Tower Hotel', 4, 'Shibuya 1, Tokio', 'wygas�'),
('Pensjonat Marija', 3, 'ul. Portowa 20, Split', 'aktywny'),
('Hotel Faro', 4, 'Marina Plaza 5, Faro', 'aktywny');


INSERT INTO Piloci (Imie, Nazwisko, Email, Telefon, Data_zatrudnienia, Status_pilota) VALUES 
('Jan', 'Kowalski', 'jan.kowalski80@wp.pl', '500100100', '2020-01-01', 'aktywny'),
('Anna', 'Nowak', 'ania.nowak@gmail.com', '500100101', '2021-03-15', 'aktywny'),
('Piotr', 'Wi�niewski', 'piter.wisnia@onet.pl', '500100102', '2019-05-20', 'aktywny'),
('Maria', 'W�jcik', 'marysia.wojcik@interia.pl', '500100103', '2022-07-01', 'niedost�pny'),
('Krzysztof', 'Kowalczyk', 'krzysiek.k@o2.pl', '500100104', '2018-11-10', 'aktywny'),
('Agnieszka', 'Kami�ska', 'aga.kaminska@gmail.com', '500100105', '2023-01-05', 'aktywny'),
('Tomasz', 'Lewandowski', 'tomek.lew@wp.pl', '500100106', '2021-09-01', 'zako�czona wsp�praca'),
('Ewa', 'Zieli�ska', 'ewa.zielinska@onet.eu', '500100107', '2020-06-15', 'aktywny'),
('Micha�', 'Szyma�ski', 'michal.szymanski90@gmail.com', '500100108', '2019-02-28', 'aktywny'),
('Magdalena', 'Wo�niak', 'magda.wozniak@wp.pl', '500100109', '2022-04-10', 'aktywny');


INSERT INTO Transporty (Numer_transportu, Typ_transportu, Przewoznik, Miejsce_poczatkowe, Miejsce_docelowe, Data_wyjazdu, Data_przyjazdu) VALUES 
('LO3345', 'samolot', 'LOT', 'Warszawa', 'Sewilla', '2025-06-01 08:00', '2025-06-01 12:00'),
('LO3346', 'samolot', 'LOT', 'Sewilla', 'Warszawa', '2025-06-08 14:00', '2025-06-08 18:00'),
('FR1022', 'samolot', 'Ryanair', 'Krak�w', 'Sewilla', '2025-06-01 09:00', '2025-06-01 13:00'),
('FR1023', 'samolot', 'Ryanair', 'Sewilla', 'Krak�w', '2025-06-08 15:00', '2025-06-08 19:00'),
('BUS01', 'autokar', 'Sindbad', 'Wroc�aw', 'Barcelona', '2025-05-01 06:00', '2025-05-02 10:00'),
('BUS01-RET', 'autokar', 'Sindbad', 'Barcelona', 'Wroc�aw', '2025-05-04 18:00', '2025-05-05 22:00'),
('W61234', 'samolot', 'WizzAir', 'Gda�sk', 'Florencja', '2025-06-15 10:00', '2025-06-15 12:30'),
('LO5566', 'samolot', 'LOT', 'Warszawa', 'Palermo', '2025-08-01 07:00', '2025-08-01 10:00'),
('ENT111', 'samolot', 'EnterAir', 'Katowice', 'Chania', '2025-07-01 05:00', '2025-07-01 09:00'),
('RR222', 'samolot', 'Buzz', 'Warszawa', 'Rodos', '2025-07-15 14:00', '2025-07-15 18:00'),
('TK999', 'samolot', 'Turkish', 'Warszawa', 'Antalya', '2025-09-01 11:00', '2025-09-01 15:00'),
('LO777', 'samolot', 'LOT', 'Warszawa', 'Tokio', '2025-06-20 12:00', '2025-06-21 08:00'),
('FLIX09', 'autokar', 'FlixBus', 'Krak�w', 'Split', '2025-08-15 20:00', '2025-08-16 12:00'),
('LH111', 'samolot', 'Lufthansa', 'Warszawa', 'Faro', '2025-07-10 09:00', '2025-07-10 13:00'),
('BUS02', 'autokar', 'Sindbad', 'Opole', 'Barcelona', '2025-05-05 06:00', '2025-05-06 10:00'),
('FR555', 'samolot', 'Ryanair', 'Modlin', 'Palermo', '2025-08-05 07:00', '2025-08-05 10:00'),
('PROM01', 'prom', 'Polferries', 'Split', 'Hvar', '2025-08-16 14:00', '2025-08-16 15:00'),
('EIP55', 'poci�g', 'PKP', 'Gda�sk', 'Warszawa', '2025-06-01 05:00', '2025-06-01 08:00'),
('W69999', 'samolot', 'WizzAir', 'Warszawa', 'Barcelona', '2025-09-10 06:00', '2025-09-10 09:00'),
('LO888', 'samolot', 'LOT', 'Warszawa', 'Florencja', '2025-09-20 08:00', '2025-09-20 10:30'),
('TK1001', 'samolot', 'Turkish', 'Warszawa', 'Antalya', '2025-10-01 11:00', '2025-10-01 15:00'),
('ENT222', 'samolot', 'EnterAir', 'Pozna�', 'Chania', '2025-08-20 05:00', '2025-08-20 09:00'),
('RR333', 'samolot', 'Buzz', 'Wroc�aw', 'Rodos', '2025-08-05 14:00', '2025-08-05 18:00'),
('LH222', 'samolot', 'Lufthansa', 'Krak�w', 'Faro', '2025-09-05 09:00', '2025-09-05 13:00'),
('FLIX10', 'autokar', 'FlixBus', 'Katowice', 'Split', '2025-07-25 18:00', '2025-07-26 10:00');


INSERT INTO Dane_Osobowe (Imie, Nazwisko, Email, Nr_telefonu, Data_urodzenia) VALUES 
('Adam', 'Nowak', 'adam.nowak12@wp.pl', '600100100', '1980-05-15'),
('Beata', 'Kowalska', 'beti.kowalska@onet.pl', '600100101', '1985-10-20'),
('Cezary', 'Wi�niewski', 'czarek_wisnia@gmail.com', '600100102', '1990-03-12'),
('Dorota', 'W�jcik', 'dorota.wojcik@interia.pl', '600100103', '1975-12-05'),
('Edward', 'Kami�ski', 'edward.k@o2.pl', '600100104', '1988-07-30'),
('Filip', 'Lewandowski', 'fifi.lew@gmail.com', '600100105', '1995-02-14'),
('Gra�yna', 'Zieli�ska', 'grazyna.zielinska55@wp.pl', '600100106', '1960-11-11'),
('Henryk', 'Szyma�ski', 'heniek_szym@onet.eu', '600100107', '1970-08-25'),
('Iwona', 'Wo�niak', 'iwona.w82@interia.pl', '600100108', '1982-04-18'),
('Jacek', 'D�browski', 'jacek.dabrowski@gmail.com', '600100109', '1991-09-09'),
('Karol', 'Koz�owski', 'karol.koziol@wp.pl', '600100110', '1983-01-22'),
('Lidia', 'Jankowska', 'lidka.j@gmail.com', '600100111', '1998-06-30'),
('Marek', 'Mazur', 'marek.mazur@onet.pl', '600100112', '1979-11-15'),
('Natalia', 'Kwiatkowska', 'nati.kwiat@interia.pl', '600100113', '1993-05-28'),
('Olaf', 'Krawczyk', 'olaf_krawczyk@o2.pl', '600100114', '1987-02-02'),
('Patrycja', 'Piotrowska', 'pati.piotrowska@gmail.com', '600100115', '1990-12-12'),
('Robert', 'Grabowski', 'robert.g76@wp.pl', '600100116', '1976-03-25'),
('Sylwia', 'Paw�owska', 'sylwia.pawlowska@onet.pl', '600100117', '1984-09-19'),
('Tadeusz', 'Michalski', 'tadek.michalski@interia.pl', '600100118', '1965-07-07'),
('Urszula', 'Kr�l', 'ula.krol@gmail.com', '600100119', '1989-10-31'),
('Kacper', 'Nowak', NULL, NULL, '2015-06-01'),
('Zofia', 'Kowalska', NULL, NULL, '2012-05-15'),
('Julia', 'Wi�niewska', NULL, NULL, '2018-01-20'),
('Antoni', 'W�jcik', NULL, NULL, '1974-11-01'),
('Maja', 'Kami�ska', NULL, NULL, '2019-03-10');


INSERT INTO Wycieczki (Kod_wycieczki, Nazwa, Opis, Status_wycieczki, Id_destynacji) VALUES 
('ES-AND-001', 'S�oneczna Andaluzja', 'Zwiedzanie Sewilli i okolic', 'aktywna', 1),
('ES-BAR-002', 'Barcelona 3 dni', 'City break z przewodnikiem', 'aktywna', 2),
('IT-TOS-003', 'Smaki Toskanii', 'Wycieczka kulinarna', 'aktywna', 3),
('IT-SYC-004', 'Sycylijska Przygoda', 'Objazd�wka po wyspie', 'planowana', 4),
('GR-KRE-005', 'Kreta All Inclusive', 'Wypoczynek w hotelu 5*', 'aktywna', 5),
('GR-ROD-006', 'Rodos dla Rodziny', 'Animacje dla dzieci', 'aktywna', 6),
('TR-ANT-007', 'Tureckie Wakacje', 'Wypoczynek na Riwierze', 'aktywna', 7),
('JP-TOK-008', 'Japonia - Tokio i okolice', 'Zwiedzanie Tokio', 'aktywna', 8),
('HR-SPL-009', 'Per�y Dalmacji', 'Zwiedzanie Splitu i rejs', 'aktywna', 9),
('PT-ALG-010', 'Wypoczynek Algarve', 'Pla�owanie w Algarve', 'archiwalna', 10),
-- Dodatkowe wycieczki (11-20)
('ES-AND-001-VIP', 'Andaluzja VIP', 'Luksusowe hotele i transport', 'aktywna', 1),
('ES-BAR-002-FAM', 'Barcelona Rodzinna', 'Aquaparki i zwiedzanie', 'aktywna', 2),
('IT-TOS-003-EXP', 'Toskania Express', 'Kr�tki wypad na wino', 'aktywna', 3),
('IT-SYC-004-REL', 'Sycylia Relax', 'Tylko pla�owanie', 'planowana', 4),
('GR-KRE-005-ACT', 'Kreta Aktywnie', 'Trekking i rowery', 'aktywna', 5),
('GR-ROD-006-SEN', 'Rodos dla Seniora', 'Spokojny wypoczynek', 'aktywna', 6),
('TR-ANT-007-ULT', 'Turcja Ultra All', 'Najlepsze hotele 5*', 'aktywna', 7),
('JP-TOK-008-CUL', 'Japonia Kulinarna', 'Sushi warsztaty', 'planowana', 8),
('HR-SPL-009-YCH', 'Dalmacja Jachtem', 'Rejs prywatnym jachtem', 'aktywna', 9),
('PT-ALG-010-SRF', 'Algarve Surfing', 'Szko�a surfingu', 'aktywna', 10);


INSERT INTO Zakwaterowanie (Kod_wycieczki, Id_hotelu, Czas_trwania, Cena_za_osobe) VALUES 
('ES-AND-001', 1, 7, 3499.00),
('ES-BAR-002', 2, 3, 1200.00),
('IT-TOS-003', 3, 7, 4200.00),
('IT-SYC-004', 4, 10, 5000.00),
('GR-KRE-005', 5, 7, 2799.00),
('GR-ROD-006', 6, 7, 3100.00),
('TR-ANT-007', 7, 14, 4500.00),
('JP-TOK-008', 8, 7, 7490.00),
('HR-SPL-009', 9, 7, 1900.00),
('PT-ALG-010', 10, 7, 2900.00),
-- Zakwaterowanie dla nowych wycieczek
('ES-AND-001-VIP', 1, 7, 5500.00),
('ES-BAR-002-FAM', 2, 5, 2200.00),
('IT-TOS-003-EXP', 3, 4, 2500.00),
('IT-SYC-004-REL', 4, 7, 3000.00),
('GR-KRE-005-ACT', 5, 7, 2600.00),
('GR-ROD-006-SEN', 6, 10, 2800.00),
('TR-ANT-007-ULT', 7, 7, 5500.00),
('JP-TOK-008-CUL', 8, 10, 9900.00),
('HR-SPL-009-YCH', 9, 7, 4500.00),
('PT-ALG-010-SRF', 10, 7, 3200.00);


INSERT INTO Terminy (Data_wyjazdu, Data_powrotu, Status_terminu, Liczba_dostepnych_miejsc, Id_pilota, Kod_wycieczki, Id_hotelu) VALUES 
('2025-06-01', '2025-06-08', 'planowany', 40, 1, 'ES-AND-001', 1),
('2025-07-10', '2025-07-17', 'planowany', 30, 2, 'ES-AND-001', 1),
('2025-05-01', '2025-05-04', 'planowany', 20, 3, 'ES-BAR-002', 2),
('2025-06-15', '2025-06-22', 'planowany', 45, 1, 'IT-TOS-003', 3),
('2025-08-01', '2025-08-11', 'planowany', 25, 4, 'IT-SYC-004', 4),
('2025-07-01', '2025-07-08', 'planowany', 50, 5, 'GR-KRE-005', 5),
('2025-07-15', '2025-07-22', 'planowany', 48, 6, 'GR-ROD-006', 6),
('2025-09-01', '2025-09-15', 'planowany', 35, 8, 'TR-ANT-007', 7),
('2025-06-20', '2025-06-27', 'planowany', 40, 9, 'JP-TOK-008', 8),
('2025-08-15', '2025-08-22', 'planowany', 30, 10, 'HR-SPL-009', 9),
('2025-09-10', '2025-09-13', 'planowany', 20, 3, 'ES-BAR-002', 2),
('2025-09-20', '2025-09-27', 'planowany', 45, 1, 'IT-TOS-003', 3),
('2025-10-01', '2025-10-15', 'planowany', 35, 8, 'TR-ANT-007', 7),
('2025-08-20', '2025-08-27', 'planowany', 50, 5, 'GR-KRE-005', 5),
('2025-08-05', '2025-08-12', 'planowany', 48, 6, 'GR-ROD-006', 6),
('2025-09-05', '2025-09-12', 'planowany', 30, 2, 'PT-ALG-010', 10),
('2025-07-25', '2025-08-01', 'planowany', 30, 10, 'HR-SPL-009', 9),
('2025-06-10', '2025-06-17', 'planowany', 40, 1, 'ES-AND-001', 1),
('2025-09-15', '2025-09-22', 'planowany', 25, 4, 'IT-SYC-004', 4),
('2025-10-10', '2025-10-17', 'planowany', 40, 9, 'JP-TOK-008', 8);


INSERT INTO Klienci (Id_osoby, Login) VALUES 
(1, 'adam_n'), (2, 'beata_k'), (3, 'czarek_w'), (4, 'dorota_w'), (5, 'edward_k'),
(6, 'filip_l'), (7, 'grazyna_z'), (8, 'henryk_s'), (9, 'iwona_w'), (10, 'jacek_d'),
(11, 'karol_k'), (12, 'lidia_j'), (13, 'marek_m'), (14, 'natalia_k'), (15, 'olaf_k'),
(16, 'pati_p'), (17, 'robert_g'), (18, 'sylwia_p'), (19, 'tadek_m'), (20, 'ula_k');


INSERT INTO Uczestnicy (Id_osoby, Typ_dokumentu) VALUES 
(1, 'dow�d osobisty'), (2, 'dow�d osobisty'), (3, 'paszport'), (4, 'dow�d osobisty'), (5, 'paszport'),
(6, 'dow�d osobisty'), (7, 'dow�d osobisty'), (8, 'paszport'), (9, 'dow�d osobisty'), (10, 'dow�d osobisty'),
(11, 'dow�d osobisty'), (12, 'dow�d osobisty'), (13, 'paszport'), (14, 'dow�d osobisty'), (15, 'dow�d osobisty'),
(16, 'dow�d osobisty'), (17, 'paszport'), (18, 'dow�d osobisty'), (19, 'dow�d osobisty'), (20, 'dow�d osobisty'),
(21, 'paszport'), (22, 'dow�d osobisty'), (23, 'paszport'), (24, 'dow�d osobisty'), (25, 'paszport');


INSERT INTO Rezerwacje (Status_rezerwacji, Cena_calkowita, Id_terminu, Id_osoby) VALUES 
('potwierdzona', 6998.00, 1, 1),
('oczekuj�ca', 2400.00, 3, 2),
('potwierdzona', 8400.00, 4, 3),
('zrealizowana', 10000.00, 5, 4),
('anulowana', 2799.00, 6, 5),
('potwierdzona', 6200.00, 7, 6),
('potwierdzona', 9000.00, 8, 7),
('oczekuj�ca', 5000.00, 9, 8),
('potwierdzona', 3800.00, 10, 9),
('zrealizowana', 5800.00, 10, 10),
('oczekuj�ca', 3499.00, 1, 11),
('potwierdzona', 1200.00, 3, 12),
('potwierdzona', 4200.00, 4, 13),
('anulowana', 5000.00, 5, 14),
('potwierdzona', 2799.00, 6, 15),
('potwierdzona', 3100.00, 7, 16),
('oczekuj�ca', 4500.00, 8, 17),
('potwierdzona', 2500.00, 9, 18),
('zrealizowana', 1900.00, 10, 19),
('potwierdzona', 2900.00, 10, 20),
('potwierdzona', 1200.00, 11, 1),
('oczekuj�ca', 4200.00, 12, 2),
('potwierdzona', 4500.00, 13, 3),
('potwierdzona', 2800.00, 14, 4),
('potwierdzona', 3100.00, 15, 5),
('oczekuj�ca', 2900.00, 16, 6),
('potwierdzona', 1900.00, 17, 7),
('anulowana', 3499.00, 18, 8),
('potwierdzona', 5000.00, 19, 9),
('potwierdzona', 7490.00, 20, 10);


INSERT INTO Platnosci (Kwota, Metoda_platnosci, Status_platnosci, Data_planowana, Data_wplaty, Id_rezerwacji) VALUES 
(6998.00, 'przelew', 'op�acona', '2025-05-01', '2025-04-28', 1),
(2400.00, NULL, 'nieop�acona', '2025-04-20', NULL, 2),
(8400.00, 'karta', 'op�acona', '2025-06-01', '2025-06-01', 3),
(10000.00, 'got�wka', 'op�acona', '2025-07-15', '2025-07-10', 4),
(2799.00, NULL, 'nieop�acona', '2025-06-15', NULL, 5),
(6200.00, 'przelew', 'op�acona', '2025-07-01', '2025-06-30', 6),
(9000.00, 'karta', 'op�acona', '2025-08-15', '2025-08-14', 7),
(5000.00, NULL, 'nieop�acona', '2025-06-10', NULL, 8),
(3800.00, 'got�wka', 'op�acona', '2025-08-01', '2025-08-01', 9),
(5800.00, 'przelew', 'op�acona', '2025-08-01', '2025-07-25', 10),
(3499.00, NULL, 'nieop�acona', '2025-05-15', NULL, 11),
(1200.00, 'karta', 'op�acona', '2025-04-25', '2025-04-24', 12),
(4200.00, 'przelew', 'op�acona', '2025-06-10', '2025-06-05', 13),
(5000.00, NULL, 'nieop�acona', '2025-07-20', NULL, 14),
(2799.00, 'got�wka', 'op�acona', '2025-06-25', '2025-06-25', 15),
(3100.00, 'karta', 'op�acona', '2025-07-10', '2025-07-09', 16),
(4500.00, NULL, 'nieop�acona', '2025-08-25', NULL, 17),
(2500.00, 'przelew', 'op�acona', '2025-06-15', '2025-06-14', 18),
(1900.00, 'got�wka', 'op�acona', '2025-08-10', '2025-08-10', 19),
(2900.00, 'karta', 'op�acona', '2025-08-10', '2025-08-10', 20),
(1200.00, 'karta', 'op�acona', '2025-09-01', '2025-09-01', 21),
(4200.00, NULL, 'nieop�acona', '2025-09-10', NULL, 22),
(4500.00, 'przelew', 'op�acona', '2025-09-20', '2025-09-18', 23),
(2800.00, 'karta', 'op�acona', '2025-08-10', '2025-08-10', 24),
(3100.00, 'got�wka', 'op�acona', '2025-07-25', '2025-07-25', 25),
(2900.00, NULL, 'nieop�acona', '2025-08-25', NULL, 26),
(1900.00, 'przelew', 'op�acona', '2025-07-15', '2025-07-14', 27),
(3499.00, NULL, 'nieop�acona', '2025-06-01', NULL, 28),
(5000.00, 'karta', 'op�acona', '2025-09-05', '2025-09-05', 29),
(7490.00, 'przelew', 'op�acona', '2025-10-01', '2025-09-30', 30);


INSERT INTO Rezerwacje_Transporty (Id_rezerwacji, Numer_transportu) VALUES 
(1, 'LO3345'), (1, 'LO3346'), (1, 'EIP55'), 
(2, 'BUS01'), (2, 'BUS01-RET'),
(3, 'W61234'), 
(4, 'LO5566'), 
(5, 'ENT111'),
(6, 'RR222'), 
(7, 'TK999'), 
(8, 'LO777'), 
(9, 'FLIX09'), 
(10, 'FLIX09'),
(11, 'FR1022'), (11, 'FR1023'), 
(12, 'BUS01'), 
(13, 'W61234'), 
(14, 'LO5566'), 
(15, 'ENT111'),
(16, 'RR222'), 
(17, 'TK999'), 
(18, 'LO777'), 
(19, 'FLIX09'), 
(20, 'FLIX09'),
(21, 'W69999'), 
(22, 'LO888'), 
(23, 'TK1001'), 
(24, 'ENT222'), 
(25, 'RR333'), 
(26, 'LH222'), 
(27, 'FLIX10'), 
(28, 'LO3345'), 
(29, 'LO5566'), 
(30, 'LO777');


INSERT INTO Rezerwacje_Uczestnicy (Id_rezerwacji, Id_osoby) VALUES 
(1, 1), (1, 21),
(2, 2), (2, 22),
(3, 3), (3, 23),
(4, 4), (4, 24),
(5, 5), (5, 25),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15),
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 1), (22, 2), (23, 3), (24, 4), (25, 5), 
(26, 6), (27, 7), (28, 8), (29, 9), (30, 10);

PRINT 'Baza wype�niona';