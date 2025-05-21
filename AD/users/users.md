# 🖥️  Tworzeniue OU (Organizational-Unit), grupy oraz użytkowników.

Ten poradnik pokazuje, jak stworzyć OU w domenie Active Directory oraz dodać użytkowników.

## 🧑‍💻 1. Tworzeniue OU (Organizational-Unit)

1. Wchodzimy do `Server Manager` → `Tools` → `Active Directory Users and Computers`
2. Kliknij prawym na nazwę domeny w której chcesz utworzyć OU → `New` → `Organizational Unit`
3. Wprowadzamy nazwę dla naszej jednostki organizacyjnej (np. `helpdesk`)
   
   ![image](https://github.com/user-attachments/assets/8c1e6948-854e-4020-87e3-73a33da809b3)
4. Nowo utworzona OU pojawi się w strukturze domeny


## 👤 2. Tworzenie użytkownika w wybranym OU

1. Przejdź do wcześniej utworzonej jednostki organizacyjnej (np. `Helpdesk`)
2. Kliknij prawym przyciskiem myszy na OU → wybierz **New** → **User**
3. Wypełnij dane:
   - **First name**: Jan
   - **Last name**: Kowalski
   - **User logon name**: `jkowalski`  
   (automatycznie zostanie dodane np. `@yourdomain.local`)
4. Kliknij **Next** i ustaw hasło:
   - Możesz zaznaczyć opcję, by użytkownik zmienił hasło przy pierwszym logowaniu
   - Możesz zaznaczyć, by hasło nie wygasało (do testów)

   ![image](https://github.com/user-attachments/assets/example-user-creation)

6. Kliknij **Finish** – użytkownik zostanie utworzony w wybranym OU

## 👥 4. Tworzenie grup w Active Directory

Grupy umożliwiają łatwiejsze zarządzanie dostępem i przypisywaniem uprawnień – zamiast konfigurować każdego użytkownika osobno, dodajesz go do odpowiedniej grupy.

### 📍 Krok po kroku:

1. Otwórz **Active Directory Users and Computers**
2. Przejdź do wybranej jednostki organizacyjnej (OU), w której chcesz utworzyć grupę
3. Kliknij prawym przyciskiem myszy na OU → **New** → **Group**
4. Uzupełnij dane:
   - **Group name**: np. `HelpdeskUsers`
   - **Group scope**: zazwyczaj `Global`
   - **Group type**: zazwyczaj `Security`
5. Kliknij **OK** – grupa zostanie utworzona w wybranym OU

   ![image](https://github.com/user-attachments/assets/example-group-creation)

---

## ➕ Dodawanie użytkowników do grupy

1. Kliknij prawym przyciskiem myszy na utworzoną grupę → **Properties**
2. Przejdź do zakładki **Members** → kliknij **Add**
3. Wpisz nazwę użytkownika lub kliknij **Advanced** → **Find Now**, by wybrać z listy
4. Zatwierdź zmiany

   ![image](https://github.com/user-attachments/assets/example-add-member)
