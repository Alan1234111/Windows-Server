# Windows Server AD Lab

Ten projekt przedstawia konfigurację kontrolera domeny Active Directory na Windows Server 2022 (w VirtualBox), wraz z:
- Dodaniem użytkowników i grup
- Konfiguracją zasad GPO (np. wymuszenie złożoności hasła, blokada Ctrl+Alt+Del)
- Automatyzacją niektórych zadań przy pomocy PowerShell

## 🔧 Wymagania

- VirtualBox / VMware
- ISO: Windows Server 2019 (trial)
- Min. 4 GB RAM, 40 GB dysku

## 🛠️ Instalacja

1. Zainstaluj Windows Server jako VM
2. Dodaj rolę `Active Directory Domain Services`
3. Promuj serwer do kontrolera domeny (np. `domena.local`)
4. Dodaj użytkowników i grupy:
    - `PS> New-ADUser ...`
5. Stwórz polityki GPO:
    - Hasło złożone (minimum 8 znaków)
    - Blokada Ctrl+Alt+Del
    - Autologowanie (dla testów)
  
   Siec lokalna 192.168.1.0/24
   Router 192.168.1.1/24
   Serwer 192.168.1.2/24
   Klient 192.168.1.3/24

   ![image](https://github.com/user-attachments/assets/2466ccef-3141-4291-95a1-1a254f97470a)

   1. Należy zdezaktywować konto Administratora, (Napisz jak to zrobić)
  
   2. Serwer i Klient pingują się
    ![image](https://github.com/user-attachments/assets/f8fd37d8-29ac-41a2-b47c-1afc8abee9aa)

3. Łączenie poprzez pulpit zdalny
![image](https://github.com/user-attachments/assets/50d1d422-b75c-4124-b806-59b20e0744bb)
![image](https://github.com/user-attachments/assets/66ffa355-999b-4e0a-8000-e54ed34a9f87)
![image](https://github.com/user-attachments/assets/ce07396d-4e66-4961-8cf2-6e91b5135af8)
![image](https://github.com/user-attachments/assets/8578640b-40b8-42e2-b4b2-302d0526d438)
![image](https://github.com/user-attachments/assets/b3796468-6415-4aa6-9382-20c1a0fab847)

![image](https://github.com/user-attachments/assets/f249999c-4f78-4f19-a43b-547d1fe1c607)









