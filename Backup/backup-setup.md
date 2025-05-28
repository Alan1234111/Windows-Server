# 💾 Automatyzacja kopii zapasowych w Windows Server

W ramach tego projektu skonfigurowałem **Windows Server Backup** na systemie **Windows Server 2019**, aby realizować automatyczne, codzienne kopie zapasowe danych. Celem było zapewnienie odporności serwera na utratę danych.

---

## 🛠️ Co zrobiłem:
### ✅ Instalacja narzędzia Windows Server Backup

Zainstalowałem rolę **Windows Server Backup** przez Server Manager.

![Instalacja WSB](https://github.com/user-attachments/assets/77f4bd57-d8d5-4ba6-b9a4-7a861b7b6429)

---

### ✅ Konfiguracja harmonogramu kopii zapasowej

Uruchomiłem narzędzie WSB i utworzyłem harmonogram backupów typu **Full Server** – codziennie o godzinie 2:00.  
Skonfigurowałem lokalizację docelową backupu na osobnej partycji  
(Nie miałem dostępu do zewnętrznego dysku).

![Harmonogram Backupu](https://github.com/user-attachments/assets/8292f430-12b2-41bd-bea5-6d379445b884)

---

### ✅ Weryfikacja działania backupu

Wykonałem testowy backup ręczny i potwierdziłem poprawność działania przez **Event Viewer** oraz komunikaty zakończenia zadania.

![Wykonany Backup](https://github.com/user-attachments/assets/dcd9f4b0-66bb-4efb-b19c-871252bbd342)
![Logi w Event Viewer](https://github.com/user-attachments/assets/2cfedb21-a36a-414d-b71f-4a5d791f3e0b)


---

Sprawdziłem również działanie **przywracania danych z kopii zapasowej**, weryfikując, czy odzyskiwanie przebiega prawidłowo.

---

## 🔍 Czego się nauczyłem:

- Praktyczna konfiguracja harmonogramów backupu z poziomu GUI.
- Znaczenie przechowywania danych na osobnym nośniku i ryzyka związanego z backupem na tej samej partycji.
- Obsługa i analiza logów backupu w Event Viewerze.
- Jak wygląda odzyskiwanie danych w Windows Server.

---

## 💡 Dobre praktyki

- Backup na osobnym dysku dla zwiększenia bezpieczeństwa.
- Regularne testy backupu i procesu odzyskiwania.
- W planie – automatyczne alerty w razie niepowodzenia backupu (zadanie + e-mail).

---





