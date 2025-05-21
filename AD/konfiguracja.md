# 🧩 Konfiguracja Active Directory

W tym przewodniku pokażę, jak zainstalować i skonfigurować **Active Directory Domain Services** na Windows Server 2019/2022

---

## 🖥️ 1. Instalacja AD DS przez GUI (Server Manager)

### 📍 Krok 1: Otwórz Server Manager

- Kliknij **Start** → **Server Manager**
- Przejdź do: **Manage** → **Add Roles and Features**

### ⚙️ Krok 2: Kreator ról i funkcji

1. Wybierz `Role-based or feature-based installation`
2. Wybierz swój serwer z listy
3. Na liście ról zaznacz: ✅ **Active Directory Domain Services**

> Pojawi się okno z dodatkowymi funkcjami – kliknij **Add Features**

4. Kliknij **Next** aż do końca → **Install**

![image](https://github.com/user-attachments/assets/54bf5c0e-605c-452e-b3c6-214e5c2b3ecc)

---

## 🧱 2. Promocja serwera do kontrolera domeny

Po instalacji roli AD pojawi się żółty trójkąt ⚠️ w Server Manager → kliknij **Promote this server to a domain controller**

### 🔧 Wybierz opcję:
- ✅ `Add a new forest`
- Nazwa domeny: `realcompany.local`

![image](https://github.com/user-attachments/assets/374790fe-a7dc-4f5f-aea1-0c62e24a47a4)


### Ustawienia:
- Hasło Directory Services Restore Mode (DSRM)
- Zostaw domyślne NetBIOS name
- Kliknij **Next** do końca → **Install**

🔁 Serwer zrestartuje się automatycznie.

---

## ✅ 3. Weryfikacja działania AD

Po ponownym uruchomieniu:
- Otwórz **Server Manager** → **Tools** → **Active Directory Users and Computers**
- Powinieneś zobaczyć strukturę domeny `realcompany.local`

![image](https://github.com/user-attachments/assets/eb598d5c-218d-4d76-a969-f7f24394f874)

