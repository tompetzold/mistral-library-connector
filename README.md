# Mistral Library Connector

Dieses kleine Tool verbindet eine bestehende Mistral-Bibliothek mit einem bestehenden Mistral-Agenten.

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

## macOS / Linux

1. Lade `connect-library.sh` herunter.
2. Öffne ein Terminal im Ordner der Datei.
3. Mache die Datei ausführbar:

```bash
chmod +x connect-library.sh
```

4. Starte das Script:

```bash
./connect-library.sh
```

5. Gib nacheinander ein:

```text
API-Key
Agent-ID
Library-ID
```

Der API-Key wird beim Eingeben nicht angezeigt.

Bei erfolgreicher Verbindung erscheint:

```text
✓ Bibliothek erfolgreich mit dem Agenten verbunden.
```

## Windows

1. Lade `connect-library.ps1` herunter.
2. Öffne PowerShell im Ordner der Datei.
3. Starte das Script:

```powershell
powershell -ExecutionPolicy Bypass -File .\connect-library.ps1
```

4. Gib nacheinander ein:

```text
API-Key
Agent-ID
Library-ID
```

Bei erfolgreicher Verbindung erscheint:

```text
✓ Bibliothek erfolgreich mit dem Agenten verbunden.
```

## Danach

Öffne den Agenten wieder in Mistral Studio und stelle eine Frage, deren Antwort in deiner Bibliothek enthalten ist.

Wenn alles funktioniert, sollte bei der Antwort eine Tool-Ausführung wie diese erscheinen:

```text
document_library -> library_search
```

Dann verwendet der Agent tatsächlich die angebundene Bibliothek.

## Sicherheit

Der API-Key wird von den Scripts nur für den einmaligen API-Aufruf verwendet und nicht in einer Datei gespeichert.

Nach erfolgreicher Verbindung kannst du den dafür erstellten API-Key in Mistral wieder löschen.
