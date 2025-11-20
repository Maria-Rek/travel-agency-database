# Analiza wymagań i kontekstu biznesowego – Biuro podróży

---

## a) Kto jest klientem (kto kupuje program/projekt)

Klientem systemu jest **prezes biura podróży** organizującego krajowe i zagraniczne wycieczki. Potrzebuje narzędzia do sprawnego zarządzania **ofertą, terminami, rezerwacjami, płatnościami oraz przydziałem pilotów**, a także umożliwiającego dostęp do **zestawień sprzedażowych**.

---

## b) Jaki jest cel bazy oraz jakie problemy klient chce rozwiązać

### Cel systemu

Celem systemu jest gromadzenie w jednym miejscu informacji o **ofercie biura podróży** (wycieczki, terminy, hotele, transport), **klientach** i ich **rezerwacjach**. Dzięki temu pracownik może szybciej sprawdzić, ile jest wolnych miejsc, czy klient zapłacił oraz łatwiej zaplanować wyjazdy i przygotować podstawowe zestawienia sprzedaży.

### Problemy, które ma rozwiązać system

- Dane o wycieczkach, terminach, hotelach i transporcie są rozproszone, przez co pojawiają się niespójności (różne ceny, różna liczba wolnych miejsc).
- Dostępność miejsc jest pilnowana ręcznie, więc łatwo o **nadrezerwowania** terminu.
- Nikt automatycznie nie sprawdza, czy ten sam pilot albo autokar nie został przypisany do dwóch terminów w tym samym czasie.
- Sprawdzenie, czy rezerwacja jest opłacona, zajmuje dużo czasu, bo informacja o płatności nie jest jednoznacznie powiązana z rezerwacją.
- Przygotowanie zestawień sprzedaży wymaga ręcznego zbierania danych z kilku miejsc, co jest czasochłonne i sprzyja błędom.

---

## c) Kto będzie obsługiwał system i jakie stanowiska pracy system wspomoże

### Użytkownicy systemu

- **Doradcy klienta / Sprzedawcy** – obsługują bezpośredni kontakt z klientem, zakładają rezerwacje, wprowadzają uczestników i udzielają informacji o ofercie.
- **Specjaliści ds. logistyki i produktu** – odpowiadają za tworzenie wycieczek, ustalanie terminów, planowanie transportu (wyszukiwanie połączeń), kontraktowanie hoteli oraz przypisywanie pilotów do wyjazdów.
- **Specjalista ds. marketingu** – analizuje ceny i obłożenie terminów oraz zarządza polityką cenową.
- **Księgowość** – monitoruje statusy płatności, generuje raporty finansowe (wpłaty, salda, zaległości) i przygotowuje listy do windykacji.
- **Pilot wycieczki** – ma podgląd do przydzielonych mu terminów oraz list uczestników.
- **Kierownik działu turystyki** – nadzoruje pracę zespołu, korzysta z raportów zarządczych (sprzedaż, popularność kierunków) i podejmuje kluczowe decyzje o kształcie oferty.
- **Prezes (klient projektu)** – ma dostęp do ogólnych zestawień finansowych i statystyk w celu podejmowania decyzji strategicznych.

---

## d) Scenariusze użycia

**Scenariusz 1**  
Doradca klienta wyszukuje wszystkie dostępne terminy wycieczek do kraju **X**, które oferują zakwaterowanie w hotelach o standardzie **Y** gwiazdek, aby przygotować spersonalizowaną ofertę dla klienta i zweryfikować dostępność miejsc w wybranym standardzie.

**Scenariusz 2**  
Pracownik działu księgowości generuje raport zaległości dla wycieczek, które rozpoczynają się w przedziale dat od **X** do **Y** i wciąż mają status płatności „nieopłacona”, aby stworzyć listę priorytetową i przekazać ją doradcom klienta w celu pilnego wezwania klientów do zapłaty.

**Scenariusz 3**  
Specjalista ds. logistyki i produktu wyszukuje dostępne połączenia typu **X** na trasie z miasta **Y** do miasta **Z** w konkretnym dniu **W**, aby znaleźć odpowiedni transport dla zorganizowanej grupy wycieczkowej i zaplanować jej przejazd do miejsca docelowego.

**Scenariusz 4**  
Specjalista ds. marketingu wyszukuje terminy wycieczek w sezonie wakacyjnym (zakres dat od **X** do **Y**), w których cena zakwaterowania za osobę nie przekracza kwoty **Z**, aby wytypować atrakcyjne cenowo oferty do newslettera promocyjnego dla klientów z niższym budżetem.

**Scenariusz 5**  
Specjalista ds. logistyki i produktu wyszukuje dane kontaktowe pilota przypisanego do wycieczki o kodzie **X**, która wyjeżdża w dniu **Y**, aby przesłać mu listę pasażerów i bilety lotnicze przed wyjazdem.

---

## e) Przykładowe zapytania w języku naturalnym

**Zapytanie 1**  
Wyświetl nazwy wycieczek, nazwy hoteli, daty wyjazdu oraz liczbę dostępnych miejsc dla wszystkich terminów, w których kraj destynacji jest równy **X**, a standard hotelu wynosi **Y**, pod warunkiem, że liczba dostępnych miejsc jest większa od zera.

**Zapytanie 2**  
Pokaż dane kontaktowe klienta (imię, nazwisko, telefon, e-mail), numer rezerwacji oraz kwotę płatności dla wszystkich rezerwacji, dla których data wyjazdu zawiera się w przedziale od daty **X** do daty **Y**, a status powiązanej płatności przyjmuje wartość „nieopłacona”.

**Zapytanie 3**  
Wyświetl nazwę przewoźnika, numer transportu oraz godziny wyjazdu i przyjazdu dla wszystkich rekordów, w których typ transportu jest równy **X**, miejsce początkowe to **Y**, miejsce docelowe to **Z**, a data wyjazdu jest równa **W**.

**Zapytanie 4**  
Pokaż nazwę wycieczki, nazwę hotelu, datę wyjazdu oraz cenę za osobę dla terminów rozpoczynających się pomiędzy datą **X** a datą **Y**, dla których cena za osobę jest mniejsza lub równa kwocie **Z**.

**Zapytanie 5**  
Wyświetl imię, nazwisko, numer telefonu oraz adres e-mail pilota, który jest przypisany do terminu wycieczki o kodzie równym **X** i dacie wyjazdu równej **Y**.

---

## f) Wykluczenia i założenia upraszczające

### Z bazy wyłączono następujące elementy

- **Rozliczenia z dostawcami usług** – system rejestruje wyłącznie płatności od klientów za rezerwacje (nie obsługujemy rozliczeń z hotelami i przewoźnikami).
- **Ubezpieczenia turystyczne** – w bazie nie uwzględniono wyboru ani przypisywania polis uczestnikom.
- **System rabatowy** – baza nie obsługuje kodów promocyjnych ani kart stałego klienta.
- **Przechowywanie haseł** – w bazie trzymamy tylko Login klienta. Zakładamy, że sprawdzanie haseł odbywa się w aplikacji.
- **Dane płacowe pilotów** – nie przechowujemy stawek ani wypłat (tabela „Piloci” służy tylko do organizacji wycieczek).

### Przyjęte uproszczenia

- Termin wycieczki jest przypisany do jednego konkretnego hotelu. Klient nie może w ramach tego samego terminu wybrać tańszego lub droższego hotelu. Jeśli biuro chce zaoferować inny standard, tworzy w systemie osobny termin.
- Cena wycieczki zapisana w rezerwacji (`Cena_calkowita`) jest ostateczna. Jeśli później biuro zmieni cennik w tabeli „Zakwaterowanie”, nie wpływa to na stare rezerwacje (nie przechowujemy historii zmian cen).
- Zakładamy, że nazwy miast w ofercie się nie powtarzają. Dlatego w tabeli „Transporty” jako miejsce startowe i docelowe zapisujemy samą nazwę miasta, bez konieczności podawania kraju.
- System odnotowuje, że dana rezerwacja korzysta z transportu, ale nie przydzielamy konkretnych numerów foteli.
