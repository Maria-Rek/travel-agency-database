GO
CREATE VIEW V_SzczegolyOferty AS
SELECT
    w.Kod_wycieczki,
    w.Nazwa AS Nazwa_Wycieczki,
    d.Kraj,
    d.Miasto,
    h.Nazwa AS Nazwa_Hotelu,
    h.Standard,
    z.Cena_za_osobe,
    z.Czas_trwania
FROM Wycieczki w
JOIN Destynacje d ON w.Id_destynacji = d.Id_destynacji
JOIN Zakwaterowanie z ON w.Kod_wycieczki = z.Kod_wycieczki
JOIN Hotele h ON z.Id_hotelu = h.Id_hotelu;
GO


/* ZAPYTANIE 1:
   Wyświetl nazwę wycieczki, kraj, nazwę hotelu oraz cenę za osobę.
   dla ofert 5-gwiazdkowych. Wyniki posortuj malejąco według całkowitego kosztu, 
   aby przygotować ranking najbardziej ekskluzywnych i najdroższych wyjazdów w ofercie.
*/
SELECT 
    Nazwa_Wycieczki,
    Kraj,
    Nazwa_Hotelu,
    Czas_trwania,
    Cena_za_osobe
FROM V_SzczegolyOferty
WHERE Standard >= 5 
  AND Cena_za_osobe > 5000
ORDER BY Cena_za_osobe DESC;

/* ZAPYTANIE 2:
   Wyświetl imię, nazwisko oraz adres e-mail klientów zarejestrowanych w systemie,
   którzy nie dokonali jeszcze żadnej rezerwacji. 
   Wyniki posortuj alfabetycznie w celu wysłania spersonalizowanej oferty zachęcającej do pierwszej rezerwacji.
*/
SELECT 
    do.Imie,
    do.Nazwisko,
    do.Email
FROM Klienci k
JOIN Dane_Osobowe do ON k.Id_osoby = do.Id_osoby
WHERE NOT EXISTS (
    SELECT 1 
    FROM Rezerwacje r 
    WHERE r.Id_osoby = k.Id_osoby
)
ORDER BY do.Nazwisko, do.Imie;


/* ZAPYTANIE 3:
   Wyświetl imię, nazwisko i login 3 klientów, którzy wydali łącznie najwięcej pieniędzy 
   na zrealizowane wycieczki. Wyniki posortuj malejąco według sumy wydatków, 
   a w przypadku takiej samej sumy według liczby zrealizowanych rezerwacji,
   w celu przyznania nagród w programie lojalnościowym.
*/
SELECT TOP 3
    do.Imie,
    do.Nazwisko,
    k.Login,
    COUNT(r.Id_rezerwacji) AS Liczba_Zrealizowanych_Wycieczek,
    SUM(r.Cena_calkowita) AS Suma_Wydatkow
FROM Klienci k
JOIN Dane_Osobowe do ON k.Id_osoby = do.Id_osoby
JOIN Rezerwacje r ON k.Id_osoby = r.Id_osoby
WHERE r.Status_rezerwacji = 'zrealizowana'
GROUP BY do.Imie, do.Nazwisko, k.Login
ORDER BY Suma_Wydatkow DESC, Liczba_Zrealizowanych_Wycieczek DESC;


/* ZAPYTANIE 4:
   Wyświetl imiona i nazwiska pilotów, którzy mają przydzielone w systemie więcej niż dwa terminy wycieczek. 
   Dla każdego pilota wyświetl liczbę tych terminów. Wyniki posortuj malejąco według obciążenia,
   aby zoptymalizować grafik pracowników i równiej rozłożyć obowiązki w zespole.
*/
SELECT 
    p.Imie,
    p.Nazwisko,
    COUNT(t.Id_terminu) AS Liczba_Terminow
FROM Piloci p
JOIN Terminy t ON p.Id_pilota = t.Id_pilota
WHERE t.Status_terminu <> 'odwołany'
GROUP BY p.Imie, p.Nazwisko
HAVING COUNT(t.Id_terminu) > 2
ORDER BY Liczba_Terminow DESC;


/* ZAPYTANIE 5:
   Wyświetl dane kontaktowe klienta oraz kwotę zaległości dla nieopłaconych rezerwacji,
   dla których termin płatności już minął. 
   Wyniki posortuj od najstarszych zaległości, aby ustalić kolejność działań windykacyjnych.
*/
SELECT 
    do.Imie,
    do.Nazwisko,
    do.Nr_telefonu,
    r.Id_rezerwacji,
    p.Kwota AS Kwota_Zaleglosci,
    p.Data_planowana
FROM Platnosci p
JOIN Rezerwacje r ON p.Id_rezerwacji = r.Id_rezerwacji
JOIN Klienci k ON r.Id_osoby = k.Id_osoby
JOIN Dane_Osobowe do ON k.Id_osoby = do.Id_osoby
WHERE p.Status_platnosci = 'nieopłacona' 
  AND p.Data_planowana < CAST(GETDATE() AS DATE)
ORDER BY p.Data_planowana ASC;


/* ZAPYTANIE 6:
   Wyświetl nazwę kraju docelowego oraz obliczony średni wiek klientów, 
   którzy dokonali rezerwacji do tego kraju. 
   Wyniki pogrupuj według kraju, aby umożliwić działowi marketingu dokładniejsze dopasowanie 
   treści reklamowych do grupy docelowej.
*/
SELECT 
    d.Kraj,
    CAST(AVG(DATEDIFF(YEAR, do.Data_urodzenia, GETDATE()) * 1.0) AS INT) AS Sredni_Wiek_Klienta
FROM Rezerwacje r
JOIN Klienci k ON r.Id_osoby = k.Id_osoby
JOIN Dane_Osobowe do ON k.Id_osoby = do.Id_osoby
JOIN Terminy t ON r.Id_terminu = t.Id_terminu
JOIN Zakwaterowanie z ON t.Kod_wycieczki = z.Kod_wycieczki AND t.Id_hotelu = z.Id_hotelu
JOIN Wycieczki w ON z.Kod_wycieczki = w.Kod_wycieczki
JOIN Destynacje d ON w.Id_destynacji = d.Id_destynacji
GROUP BY d.Kraj;


/* ZAPYTANIE 7:
   Wyświetl identyfikator, nazwę wycieczki oraz datę wyjazdu dla wszystkich planowanych terminów, 
   które nie mają ani jednej rezerwacji, w celu podjęcia decyzji o odwołaniu nierentownych wyjazdów.
*/
SELECT 
    t.Id_terminu,
    w.Nazwa AS Wycieczka,
    t.Data_wyjazdu
FROM Terminy t
JOIN Wycieczki w ON t.Kod_wycieczki = w.Kod_wycieczki
WHERE t.Status_terminu = 'planowany'
  AND NOT EXISTS (
      SELECT 1 
      FROM Rezerwacje r 
      WHERE r.Id_terminu = t.Id_terminu
  );


/* ZAPYTANIE 8:
   Wyświetl rok i miesiąc wpłaty oraz sumę wszystkich wpłat brutto dla zrealizowanych transakcji.
   Wyniki pogrupuj według roku i miesiąca wpłaty oraz posortuj chronologicznie od najnowszej daty, 
   w celu przygotowania prostego zestawienia miesięcznych przychodów.
*/
SELECT 
    YEAR(Data_wplaty) AS Rok,
    MONTH(Data_wplaty) AS Miesiac,
    SUM(Kwota) AS Suma_Wplywow
FROM Platnosci
WHERE Status_platnosci = 'opłacona' AND Data_wplaty IS NOT NULL
GROUP BY YEAR(Data_wplaty), MONTH(Data_wplaty)
ORDER BY YEAR(Data_wplaty) DESC, MONTH(Data_wplaty) DESC;


/* ZAPYTANIE 9:
   Wyświetl nazwę hotelu, kraj oraz cenę za osobę dla ofert 5-gwiazdkowych, 
   których cena jest niższa niż średnia cena wszystkich hoteli o tym samym standardzie.
   Wyniki posortuj od najniższej ceny, aby przygotować listę wycieczek w okazyjnych cenach do kampanii promocyjnej.
*/
SELECT 
    h.Nazwa AS Hotel,
    d.Kraj,
    z.Cena_za_osobe
FROM Zakwaterowanie z
JOIN Hotele h ON z.Id_hotelu = h.Id_hotelu
JOIN Wycieczki w ON z.Kod_wycieczki = w.Kod_wycieczki
JOIN Destynacje d ON w.Id_destynacji = d.Id_destynacji
WHERE h.Standard = 5 
  AND z.Cena_za_osobe < (
      SELECT AVG(z2.Cena_za_osobe)
      FROM Zakwaterowanie z2
      JOIN Hotele h2 ON z2.Id_hotelu = h2.Id_hotelu
      WHERE h2.Standard = 5
  )
ORDER BY z.Cena_za_osobe ASC;


/* ZAPYTANIE 10:
   Wyświetl numer transportu, datę wyjazdu oraz liczbę pasażerów dla kursów odbywających się w sezonie 2025.
   w celu weryfikacji obłożenia autokarów/samolotów w danym okresie.
*/
SELECT 
    tr.Numer_transportu,
    tr.Data_wyjazdu,
    COUNT(u.Id_osoby) AS Liczba_Pasazerow
FROM Transporty tr
JOIN Rezerwacje_Transporty rt ON tr.Numer_transportu = rt.Numer_transportu
JOIN Rezerwacje r ON rt.Id_rezerwacji = r.Id_rezerwacji
JOIN Rezerwacje_Uczestnicy ru ON r.Id_rezerwacji = ru.Id_rezerwacji
JOIN Uczestnicy u ON ru.Id_osoby = u.Id_osoby
WHERE tr.Data_wyjazdu BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY tr.Numer_transportu, tr.Data_wyjazdu
ORDER BY tr.Data_wyjazdu ASC, Liczba_Pasazerow DESC;