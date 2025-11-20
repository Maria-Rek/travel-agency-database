# Relacje (nazwy + krotności + uzasadnienie)

1) **Miejsce — Wycieczka**  *(ma_miejsce_docelowe)*
   - Miejsce **(0..N)** — Wycieczka **(1)**
   - Uzasadnienie: jedno miejsce może być docelowe dla wielu wycieczek; każda wycieczka ma dokładnie jedno miejsce docelowe.

2) **Wycieczka — Termin**  *(ma_terminy)*
   - Wycieczka **(0..N)** — Termin **(1)**
   - Uzasadnienie: produkt może mieć wiele terminów (albo chwilowo żadnego); każdy termin dotyczy dokładnie jednej wycieczki.

3) **Pilot — Termin**  *(obsada)*
   - Pilot **(0..N)** — Termin **(0..N)**
   - Uzasadnienie: termin może mieć kilku pilotów (główny/zastępca/językowy), pilot obsługuje wiele terminów. Brak atrybutów → nie rysujemy tabeli łączącej.

4) **Obiekt_Zakwaterowania — Termin**  *(obsługuje)*
   - Obiekt_Zakwaterowania **(0..N)** — Termin **(0..1)**
   - Uzasadnienie: obiekt może obsługiwać wiele terminów; termin może nie mieć noclegu (jednodniowy) albo mieć dokładnie jeden obiekt.

5) **Termin — Rezerwacja**  *(ma_rezerwacje / dotyczy)*
   - Termin **(0..N)** — Rezerwacja **(1)**
   - Uzasadnienie: na dany termin powstaje wiele rezerwacji; każda rezerwacja przypisana jest do jednego konkretnego terminu.

6) **Uczestnik — Rezerwacja**  *(składa_rezerwacje)*
   - Uczestnik **(0..N)** — Rezerwacja **(1)**
   - Uzasadnienie: uczestnik może składać wiele rezerwacji w czasie; pojedyncza rezerwacja należy do jednego uczestnika.
   - **PK Rezerwacji:** (`id_dokumentu`, `kod_terminu`) — encja asocjacyjna z atrybutami.

7) **Rezerwacja — Platnosc**  *(ma_płatności)*
   - Rezerwacja **(0..N)** — Platnosc **(1)**
   - Uzasadnienie: zaliczka + dopłaty → wiele płatności; każda płatność dotyczy jednej rezerwacji.

8) **Rezerwacje — Płatnosci** *(pokrywa)*  
   - Rezerwacja: 1, Płatność: 1  
   - Uzasadnienie: w przyjętym modelu jedna rezerwacja wiąże się ściśle z jedną „teczką” płatności (rekordem transakcji). Relacja jest 1:1, aby zapewnić jednoznaczność rozliczeń.
