# Mistral Library Connector

Dieses kleine Tool verbindet eine bestehende Mistral-Bibliothek mit einem bestehenden Mistral-Agenten.

Die Verbindung erfolgt über einen kurzen Copy-&-Paste-Befehl im Terminal bzw. in PowerShell. Es muss keine zusätzliche Datei ausgeführt oder installiert werden.

## Voraussetzungen

Du brauchst:

- einen Mistral-Agenten
- eine Mistral-Bibliothek
- einen temporären Mistral-API-Key

Die Agent-ID findest du unter:

`Agenten -> Liste`

Die Library-ID findest du unter:

`Wissen -> Bibliotheken`

Den API-Key kannst du unter:

`API-Schlüssel`

erstellen.

## Verwendung

Öffne im Repository den Ordner:

`copy-paste`

Dort findest du jeweils eine Version für:

- Linux / Raspberry Pi
- macOS
- Windows PowerShell

Öffne die passende Datei für dein Betriebssystem und kopiere den gesamten Inhalt.

## Linux / Raspberry Pi

1. Öffne `copy-paste/linux-copy-paste.txt`.
2. Kopiere den gesamten Inhalt.
3. Öffne ein Terminal.
4. Füge den Code ein und drücke Enter.
5. Gib nacheinander API-Key, Agent-ID und Library-ID ein.

Der API-Key wird beim Eingeben nicht angezeigt.

## macOS

1. Öffne `copy-paste/mac-copy-paste.txt`.
2. Kopiere den gesamten Inhalt.
3. Öffne das Terminal.
4. Füge den Code ein und drücke Enter.
5. Gib nacheinander API-Key, Agent-ID und Library-ID ein.

Der API-Key wird beim Eingeben nicht angezeigt.

## Windows

1. Öffne `copy-paste/windows-powershell-copy-paste.txt`.
2. Kopiere den gesamten Inhalt.
3. Öffne PowerShell.
4. Füge den Code ein und drücke Enter.
5. Gib nacheinander API-Key, Agent-ID und Library-ID ein.

Der API-Key wird beim Eingeben nicht angezeigt.

## Erfolgreiche Verbindung

Wenn alles funktioniert, erscheint eine Meldung wie:

```text
Bibliothek erfolgreich mit dem Agenten verbunden.
```

Anschließend kannst du wieder zu Mistral Studio wechseln und den Agenten testen.

## Verbindung testen

Stelle dem Agenten eine Frage, deren Antwort in deiner Bibliothek enthalten ist.

Wenn die Bibliothek verwendet wird, sollte bei der Antwort eine Tool-Ausführung erscheinen:

```text
document_library -> library_search
```

Dann verwendet der Agent tatsächlich die angebundene Bibliothek.

## Sicherheit

Der API-Key wird nur für den einmaligen API-Aufruf verwendet und nicht dauerhaft gespeichert.

Nach erfolgreicher Verbindung solltest du den dafür erstellten API-Key in Mistral wieder löschen.

Gib deinen API-Key niemals an andere Personen weiter und speichere ihn nicht im Repository.

## Beispiele

Im Ordner `Examples` findest du Beispiel-Agenten mit:

- Systemprompt
- geeigneten Quellen
- Beispiel-Fragen

Die Beispiele können als Orientierung für eigene Agenten verwendet werden.
