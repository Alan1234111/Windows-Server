# 🧩 Konfiguracja Active Directory, tworzenie OU, użytkowników i grup na Windows Server

W ramach tego projektu zainstalowałem i skonfigurowałem **Active Directory Domain Services (AD DS)** na systemie **Windows Server 2019**.  
Celem było utworzenie lokalnego środowiska domenowego na potrzeby testów i nauki zarządzania użytkownikami oraz usługami katalogowymi.

---

## 🛠️ Co zrobiłem

### ✅ Instalacja roli AD DS przez Server Manager

Zainstalowałem rolę **Active Directory Domain Services** za pomocą kreatora ról i funkcji w Server Managerze.

![Instalacja AD DS](https://github.com/user-attachments/assets/54bf5c0e-605c-452e-b3c6-214e5c2b3ecc)

---

### ✅ Promocja serwera do kontrolera domeny

Po zakończeniu instalacji uruchomiłem kreator promocji i utworzyłem nową strukturę domenową:

- Wybrałem opcję `Add a new forest`
- Nazwa domeny: `realcompany.local`
- Ustawiłem hasło DSRM (Directory Services Restore Mode)
- Pozostawiłem domyślną nazwę NetBIOS

![Promocja Serwera do kontrolera domeny](https://github.com/user-attachments/assets/374790fe-a7dc-4f5f-aea1-0c62e24a47a4)

---

### ✅ Weryfikacja działania

Po ponownym uruchomieniu systemu:

- Zalogowałem się jako administrator domeny
- Otworzyłem konsolę: **Active Directory Users and Computers**
- Zweryfikowałem, że struktura domeny `realcompany.local` została poprawnie utworzona i działa

![image](https://github.com/user-attachments/assets/eb598d5c-218d-4d76-a969-f7f24394f874)

---

### ✅ Tworzenie jednostki organizacyjnej (OU)

Utworzyłem jednostkę organizacyjną o nazwie **helpdesk**.

![Tworzenie OU](https://github.com/user-attachments/assets/8c1e6948-854e-4020-87e3-73a33da809b3)

---

### ✅ Tworzenie grup użytkowników

W ramach OU **helpdesk** utworzyłem trzy grupy bezpieczeństwa:

- `l1`
- `l2`
- `l3`

![image](https://github.com/user-attachments/assets/18f6a285-8bd1-4da4-b5d7-93237d5ddb59)

---

### ✅ Tworzenie użytkowników i przypisanie do grup

Utworzyłem użytkownika:

- **Imię i nazwisko**: Alan Pason
- **Logon name**: `l1_alan`

- Przypisałem go do grupy `l1`
- Przetestowałem logowanie na stacji roboczej jako użytkownik `l1_alan`

![image](https://github.com/user-attachments/assets/c30273f1-8555-4a63-bc3e-9e26adc0171f)
![image](https://github.com/user-attachments/assets/58e172be-980f-4fe1-aff2-cb3a3a9d3aa4)
![image](https://github.com/user-attachments/assets/6f7af19e-e7a6-4283-a9b9-950fbc1f2fe6)

---

## 🔍 Czego się nauczyłem

- Praktyczna instalacja i konfiguracja Active Directory Domain Services
- Rola kontrolera domeny w środowisku sieciowym
- Tworzenie struktury domenowej od podstaw
- Organizacja OU, grup oraz użytkowników
- Testowanie logowania i poprawności konfiguracji
- Wykorzystanie narzędzi graficznych systemu Windows Server do zarządzania AD

