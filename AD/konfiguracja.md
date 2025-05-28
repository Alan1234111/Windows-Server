# 🧩 Konfiguracja Active Directory na Windows Server

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

## 🔍 Czego się nauczyłem

- Praktyczna instalacja i konfiguracja AD DS w środowisku Windows Server
- Rola kontrolera domeny w zarządzaniu środowiskiem sieciowym
- Tworzenie i konfigurowanie domeny od podstaw
- Weryfikacja działania usługi i zarządzanie nią przez wbudowane narzędzia Microsoft

