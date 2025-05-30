# 🧩 Stworzenie Zasad Grupy (GPO)

W ramach tego projektu skonfigurowałem zasady grupy (Group Policy Objects – GPO) w środowisku domenowym opartym na Windows Server 2019.
Celem było poznanie praktycznych możliwości centralnego zarządzania środowiskiem użytkowników i komputerów w sieci oraz zróżnicowanie uprawnień według poziomu dostępu (L1, L2, L3).

---

## 🛠️ Co zrobiłem

### ✅ Struktura grup zróżnicowanych pod względem uprawnień

Utworzyłem trzy grupy użytkowników w ramach domeny, każdej przypisałem odpowiedni zestaw zasad zgodnie z regułą **Least Privilege**:

W jednostce organizacyjnej **helpdesk**:

 - L1 (najniższe uprawnienia) – środowisko maksymalnie ograniczone, skupione na bezpieczeństwie
 - L2 (średnie uprawnienia) – dostęp do podstawowych narzędzi administracyjnych
 - L3 (najwyższe uprawnienia) – użytkownicy techniczni z dostępem do zaawansowanych funkcji

---

### ✅ GPO dla grupy L1

 - Blokada Edytora Rejestru (regedit)
 - Blokada wierszu poleceń (cmd)
 - Blokada Panelu Sterowania
 - Blokada Windows Installer
 - Blokada Logowania Użytkownika Gościa

![Registry Block Workstation](https://github.com/user-attachments/assets/f4260a59-6146-44fa-b656-b244fbca3a23)

---

### ✅ GPO dla grupy L2

Grupa L2 dziedziczy wszystkie ograniczenia z grupy L1, dodatkowo uzyskuje dostęp do:

-  Restartowania wybranych usług (np. Print Spooler)
-  Resetowania haseł użytkowników

![RDP ](https://github.com/user-attachments/assets/f42184a4-2f4d-408a-ad39-093f2fd9bfd7)

---

### ✅ GPO dla grupy L3

Grupa L3 bez większości ograniczeń, z dodatkowymi przywilejami:

-  Zarządzanie dziennikiem zabezpieczeń (Security Log)
-  Restartowanie serwera
-  Dostęp do zdalnego łączenia się z serwerem (RDP)


RDP użytkownika który należy do Grupy L2:

  ![RDP_L2](https://github.com/user-attachments/assets/a4f7d889-5b59-405b-b622-dce149f50d0e)

RDP użytkownika który należy do Grupy L3:

![RDP_L3](https://github.com/user-attachments/assets/4f45de68-4633-4e90-b99d-2650028b01f4)  

---

### ✅ Zdjęcie GPO

![GPO](https://github.com/user-attachments/assets/ff54722b-93ee-42e5-bd79-f633a75962d5)


## 🔍 Czego się nauczyłem

- Praktyczna konfiguracja GPO dla różnych poziomów uprawnień
- Dziedziczenie i filtrowanie zasad GPO według grup
- Działanie zasady **Least Privilege** w praktyce
- Wpływ zasad grupy na zachowanie systemu operacyjnego
- Testowanie zmian GPO na stacjach roboczych w środowisku domenowym
