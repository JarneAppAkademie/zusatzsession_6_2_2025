📱 Flutter Übungsaufgabe: To-Do-App mit Custom Fonts, Themes & Modelklassen

🎯 Ziel der Aufgabe  
Erstelle eine einfache To-Do-App, die folgende Anforderungen erfüllt:  
✅ Benutzer können Aufgaben zur Liste hinzufügen und entfernen.  
✅ Die App nutzt ein konsistentes Theme und eine eigene Schriftart.  
✅ Die Projektstruktur folgt dem Feature-First-Ansatz.  
✅ Modelklassen werden genutzt, um Daten zu verwalten und durch den Widget-Tree zu übergeben.  

---

🏗️ 1. Projektstruktur vorbereiten  
- Erstelle eine **Feature-First** Ordnerstruktur: 
    Die Dateien musst du erstmal noch nicht füllen.

  ```
  lib/
  ├── main.dart               # Startpunkt der App
  ├── app.dart               # Hier liegt das MaterialApp Widget
  ├── styles/                  # Enthält Theme & Farben
  │   ├── theme.dart           # Definiert das App-Theme
  │   ├── colors.dart         # Hier könntest du die Farben deiner App definieren
  │
  ├── features/todo/        # Feature-spezifischer Code
  │   ├── data/             # Enthält die Daten unserer App z.B. in einem Databaserepository
  │   ├── models/           # Enthält Modelklassen
  │   │   ├── todo.dart     # Modelklasse für To-Dos
  │   ├── screens/          # UI-Screens
  │   │   ├── todo_screen.dart # Hauptbildschirm für To-Dos
  │   ├── widgets/          # Wiederverwendbare Widgets
  │   │   ├── todo_tile.dart # Widget für eine einzelne To-Do-Zeile
  ```

---

🎨 2. MaterialApp mit Theme und Custom Font einrichten
- Verwende die Schriftart **Raleway**, die du Downloadest, in den assets Ordner hinzufügst und in die`pubspec.yaml` einbindest.  
- Definiere in `app/theme.dart` ein eigenes **Theme**, inkl. Primärfarbe, Textstyle ein AppbarTheme.  
    - Verwende die Schriftart **Raleway** in dem Textstyles, Füge mindestens eine Dünne und eine dicke Schrift hinzu.  
- Verschiebe das Widget mit der MaterialApp in die `app.dart` und rufe es in der `main.dart` auf. Füge auch das Theme hinzu. 


🎨 2.1 Theme ausprobieren
- Erstelle eine Appbar mit einem Title, und zwei Texte im Body. Der eine Soll die dünne Themeschrift und der andere die Dicke benutzen


🏷️ 3. Modelklasse für To-Do-Elemente erstellen  
- Erstelle eine Datei `features/todo/models/todo.dart` und definiere die Modelklasse:  

---



📋 4. To-Do-Screen mit State und Modelklasse bauen  
- Erstelle eine Datei `features/todo/screens/todo_screen.dart`.  
- Erstelle einen `StatefulWidget` (`TodoScreen`), der eine Liste von `Todo`-Objekten verwaltet.  
- Nutze `ListView.builder`, um die To-Do-Liste darzustellen.
- Todos Sollten aus einem text und einer Checkbox bestehen
  - Style die Checkbox mit einem Theme  

---

➕ 5. Funktionalität zum Hinzufügen und Entfernen von To-Dos  
- Erstelle eine Methode `addTodo(String title)`, die ein neues `Todo`-Objekt zur Liste hinzufügt.  
- Erstelle eine Methode `removeTodo(int index)`, die ein To-Do entfernt.  
- Zeige ein `TextField` und einen `FloatingActionButton`, um neue To-Dos hinzuzufügen.  
- Nutze `setState()`, um die UI zu aktualisieren.  

---

🔄 6. Widgets für To-Do-Elemente auslagern  
- Erstelle in `features/todo/widgets/todo_tile.dart` ein eigenes Widget `TodoTile`.  
- Übergebe das `Todo`-Objekt als Parameter und zeige den Titel sowie eine `Checkbox`, um den Status zu ändern.


🔄 7. Wir wollen die Todos in ein Databasereository auslagern
- Orientiere dich an der in der Vorlesung gezeigten Struktur



Viel Erfolg! 🚀✨
