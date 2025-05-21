# 🖥️ Podłączanie komputerów do domeny Active Directory

Ten poradnik pokazuje, jak dołączyć komputery do domeny Active Directory zarówno przez GUI

## 📍 Wymagania wstępne

- Komputer musi mieć połączenie z siecią i widzieć kontroler domeny (np. `DC01.bytecorp.local`)
- DNS na komputerze **musi wskazywać na kontroler domeny**
- Użytkownik musi mieć uprawnienia do dodawania komputerów do domeny (np. konto administratora domeny)

- ## 🧑‍💻 1. Podłączenie do domeny (GUI)

1. Kliknij prawym na **Ten komputer** → **Właściwości**
2. Wybierz **Domena lub grupa robocza** → **identyfikator sieciowy**
3. Kliknij **dalej** aż do pola nazwy użytkownika i hasła
4. Wprowadź dane logowania konta domenowego (np. `alan`, `haslo`, `REALCOMPANY.LOCAL`)
   ![image](https://github.com/user-attachments/assets/ef47ebaa-eeeb-465c-963d-79e56a4e304c)
5. Jeśli w domenie nie ma komputera o podanej nazwię należy utworzyć nowego
   ![image](https://github.com/user-attachments/assets/c58049b4-a1fc-4545-9eb1-ba6d1731afdf)
6. Następnie trzeba podać nazwę i hasło do użytkownika na serwerze który ma uprawnienia administratora
  ![image](https://github.com/user-attachments/assets/22ab62b4-32cb-43cb-8a28-2702234f546b)
7. Po komunikacie o powodzeniu — **zrestartuj komputer**



