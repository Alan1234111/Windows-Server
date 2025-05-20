# 💾 Konfiguracja Windows Server Backup

W tym dokumencie pokazuję, jak zainstalować oraz skonfigurować narzędzie **Windows Server Backup** na Windows Server 2019/2022, w celu wykonywania automatycznych kopii zapasowych.

## 🛠️ 1. Instalacja funkcji Windows Server Backup

### 📍 Krok 1: Otwórz Server Manager

1. Kliknij **Start** i wybierz **Server Manager**
2. Przejdź do zakładki **Manage** → **Add Roles and Features**

### 🧩 Krok 2: Kreator dodawania ról i funkcji

1. Wybierz typ instalacji: `Role-based or feature-based installation`
2. Wybierz lokalny serwer z listy
3. Przejdź dalej do ekranu **Features**

### ✅ Krok 3: Dodaj funkcję Windows Server Backup

- Zaznacz opcję **Windows Server Backup**
- Kliknij **Next**, a następnie **Install**

![image](https://github.com/user-attachments/assets/310411e7-f741-4e62-9fa0-2747faef4326)

## 📂 2. Uruchamianie Windows Server Backup

Po instalacji:

- Otwórz **Start** → wpisz `Windows Server Backup` → uruchom aplikację
![image](https://github.com/user-attachments/assets/2777812a-e99b-416f-bb34-dd6936d72147)

## 📅 3. Tworzenie harmonogramu backupu

1. W głównym oknie kliknij **Local Backup** → **Backup Schedule...**
2. Wybierz opcję `Full server` lub `Custom` (jeśli chcesz wybrać konkretne dyski/katalogi)
3. Określ częstotliwość (np. codziennie o 2:00 w nocy)
4. Wybierz lokalizację do przechowywania kopii:
   - Może to być inny dysk (zalecane)
   - Może to być ten sam dysk ale inna partycja — *tylko do celów edukacyjnych*
   - Może to być dzielony folder — Tylko jeśli nie ma innych opcji 
![image](https://github.com/user-attachments/assets/9aba5b7e-443d-47fa-a940-184ebc8203cd)

## 🔄 4. Testowanie backupu

Po zapisaniu harmonogramu możesz wykonać backup ręcznie:

- Kliknij **Backup Once...** → wykonaj kopię i sprawdź, czy backup się zakończył bez błędów
![image](https://github.com/user-attachments/assets/1e477b96-bd7e-4b26-9643-5d7d33f6a50b)


Sprawdź też logi w:
- Event Viewer > Applications and Services Logs > Microsoft > Windows > Backup

![image](https://github.com/user-attachments/assets/5b21a701-cd4d-42ee-b1af-409ff65c6553)





## 💡 5. Wskazówki i dobre praktyki

- Przechowuj backup na **oddzielnym dysku** (lub innym hoście)
- Ustaw alerty o nieudanym backupie (można skonfigurować zadanie + e-mail)
- Regularnie testuj **przywracanie** danych, nie tylko ich zapisywanie


