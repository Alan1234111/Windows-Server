## 🧰 Rozwiązywanie problemów z dołączaniem do domeny

## ❌ 1. Błędny DNS
🔍 Objaw: „The domain controller could not be contacted.”

💥 Problem: Komputer korzysta z DNS Google (np. 8.8.8.8) zamiast DNS kontrolera domeny.

✅ Rozwiązanie: Ustaw DNS ręcznie na IP serwera domeny (np. 192.168.1.10).

## 🔐 2. Niepoprawne dane logowania
🔍 Objaw: „Access denied” albo „The specified credentials were not verified.”

💥 Problem: Zła nazwa użytkownika lub hasło.

✅ Rozwiązanie: Użyj pełnego loginu np. REALCOMPANY\Administrator lub administrator@realcompany.local.

## 🌐 3. Brak komunikacji z kontrolerem domeny
🔍 Objaw: Timeout, brak odpowiedzi podczas próby dołączenia.

💥 Problem: Inna sieć, firewall, błąd routingu.

✅ Rozwiązanie: Sprawdź połączenie do serwera:
  `ping realcompany.local`
   Jeśli nie działa — sprawdź adres IP serwera i zaporę sieciową

## 🔒 4. Brak uprawnień do dodania komputera
🔍 Objaw: „You do not have permission to join this domain.”

💥 Problem: Użytkownik nie ma praw do dodawania maszyn do domeny.

✅ Rozwiązanie:

Użyj konta z grupy Domain Admins

Lub przypisz użytkownikowi delegację do tworzenia obiektów komputerów w AD

## 🕓 5. Błąd synchronizacji czasu
🔍 Objaw: „The trust relationship has failed.”

💥 Problem: Różnica czasu między komputerem a kontrolerem > 5 minut.

✅ Rozwiązanie:
`w32tm /resync`

## 🧱 6. Zablokowane porty sieciowe
🔍 Objaw: Nie można odnaleźć domeny lub komunikacja się zawiesza.

💥 Problem: Firewall blokuje porty potrzebne do AD.

✅ Rozwiązanie: Upewnij się, że są otwarte:

Protokół	Port	Usługa

DNS	53	Rozwiązywanie nazw

LDAP 389	Komunikacja z AD

Kerberos	88	Uwierzytelnianie

SMB	445	Dostęp do zasobów

RPC	135	Zdalne zarządzanie
