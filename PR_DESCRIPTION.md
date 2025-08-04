# TypeScript Fixes for Documentation

## Übersicht
Dieser Pull Request behebt 20 TypeScript-Kompilierungsfehler in der Dokumentation des Goose-Projekts.

## Problem
Die TypeScript-Kompilierung in der Dokumentation schlug fehl aufgrund von:
- Fehlenden Typdefinitionen für Recipe- und Prompt-Objekte
- Inkonsistenter Behandlung von Extension-Typen
- Fehlenden Webpack-spezifischen Typdefinitionen
- Problemen mit der Author-Feld-Behandlung

## Lösung
### 1. Recipe-Typ erweitert
- `localPath`, `prompt`, `instructions`, `version`, `tags` hinzugefügt
- `extensions` kann jetzt sowohl `string` als auch `{ name: string; type?: string }` sein
- `author` kann sowohl `string` als auch `{ contact?: string }` sein

### 2. Prompt-Typ erweitert
- `example_result`, `category`, `job` hinzugefügt
- `Category`-Typ hinzugefügt

### 3. Webpack require.context Typen
- Typdefinitionen für `require.context` hinzugefügt
- Unterstützt Webpack-spezifische Syntax

### 4. Author-Behandlung korrigiert
- Sichere Behandlung von `author` als string oder object

## Betroffene Dateien
- `documentation/src/components/recipe-card.tsx`
- `documentation/src/types/prompt.ts`
- `documentation/src/utils/prompts.ts`
- `documentation/src/utils/recipes.ts`

## Testing
- TypeScript-Kompilierung läuft jetzt ohne Fehler durch
- Alle bestehenden Funktionen bleiben erhalten
- Rückwärtskompatibilität gewährleistet

## Checkliste
- [x] TypeScript-Fehler behoben
- [x] Rückwärtskompatibilität getestet
- [x] Code-Style eingehalten
- [x] Dokumentation aktualisiert

## Screenshots
Vorher: 20 TypeScript-Fehler
Nachher: 0 TypeScript-Fehler ✅ 