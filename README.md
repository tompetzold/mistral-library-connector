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

## Linux / Raspberry Pi

1. Lade `connect-library-linux.sh` herunter.
2. Öffne ein Terminal im Ordner der Datei.
3. Mache die Datei ausführbar:

```bash
chmod +x connect-library-linux.sh
```

4. Starte das Script:

```bash
./connect-library-linux.sh
```

5. Gib nacheinander API-Key, Agent-ID und Library-ID ein.

Der API-Key wird beim Eingeben nicht angezeigt.

Bei erfolgreicher Verbindung erscheint:

```text
✓ Bibliothek erfolgreich mit dem Agenten verbunden.
```

## macOS

1. Lade `connect-library-mac.sh` herunter.
2. Öffne ein Terminal im Ordner der Datei.
3. Mache die Datei ausführbar:

```bash
chmod +x connect-library-mac.sh
```

4. Starte das Script:

```bash
./connect-library-mac.sh
```

5. Gib nacheinander API-Key, Agent-ID und Library-ID ein.

Der API-Key wird beim Eingeben nicht angezeigt.

Bei erfolgreicher Verbindung erscheint:

```text
✓ Bibliothek erfolgreich mit dem Agenten verbunden.
```

## Windows

1. Lade `connect-library-windows.ps1` herunter.
2. Öffne PowerShell im Ordner der Datei.
3. Starte das Script:

```powershell
powershell -ExecutionPolicy Bypass -File .\connect-library-windows.ps1
```

4. Gib nacheinander API-Key, Agent-ID und Library-ID ein.

Der API-Key wird beim Eingeben nicht angezeigt.

Bei erfolgreicher Verbindung erscheint:

```text
✓ Bibliothek erfolgreich mit dem Agenten verbunden.
```

## Danach

Öffne den Agenten wieder in Mistral Studio und stelle eine Frage, deren Antwort in deiner Bibliothek enthalten ist.

Wenn alles funktioniert, sollte bei der Antwort eine Tool-Ausführung erscheinen:

```text
document_library -> library_search
```

Dann verwendet der Agent tatsächlich die angebundene Bibliothek.

## Sicherheit

Der API-Key wird nur für den einmaligen API-Aufruf verwendet und nicht dauerhaft gespeichert.

Nach erfolgreicher Verbindung solltest du den dafür erstellten API-Key in Mistral wieder löschen.
