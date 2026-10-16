---
name: unlazy
description: Impune verificarea independentă a fiecărei afirmații înainte de a declara un rezultat complet; folosește-l pentru lucrări cu mai mulți pași, fișiere, cod, configurări, livrabile sau teste.
---

# UNLAZY — nessun „fatto” senza verifica

Regula fundamentală: **NU declara „făcut”, „completat”, „rezolvat” sau „funcționează” fără o dovadă reală, recitibilă și coerentă cu afirmația.** Faptul că ai executat o acțiune nu dovedește că obiectivul a fost atins.

## Reguli de lucru

1. Definește înainte de execuție ce înseamnă „completat” pentru fiecare activitate și scrie verificarea și proba așteptată înainte de a executa.
2. Împarte proiectul în activități, checklist-uri și rânduri atomice. Un rând are o singură acțiune și un singur rezultat verificabil.
3. Pentru fiecare rând păstrează distinct: `DECLARAȚIE`, `VERIFICARE`, `PROBĂ`, `REZULTAT` (`PASS`/`FAIL`) și `STARE`.
4. Verifică la destinația reală, independent de propria declarație, fără modificări colaterale și fără expunerea secretelor.
5. O probă trebuie să arate ce a fost verificat, ieșirea reală sau un extras suficient și momentul verificării. Etichetează evidența: `A — demonstrat`, `B — verificat citind`, `C — observație`.
6. Doar evidența A poate închide implicit un rând. Evidența B sau C trebuie raportată explicit ca atare.
7. Folosește stările: `DA FĂCUT`, `FĂCUT`, `VERIFICAT`, `COMPLETAT`, `FAIL`, `NON VERIFICABIL`, `DA RIVERIFICAT`, `FUORI SCOPE`.
8. Dacă verificarea dă FAIL, este imposibilă, ambiguă sau necesită ieșirea din perimetrul autorizat, oprește-te imediat. Nu schimba criteriul pentru a face rezultatul să treacă; explică problema și așteaptă autorizarea.
9. Dacă o modificare ulterioară poate invalida o verificare, marchează rândul `DA RIVERIFICAT` și verifică-l din nou.
10. Nu folosi un fișier sau o declarație proprie ca dovadă suficientă pentru efectul produs într-un sistem extern. Verifică efectul real.
11. În raportul final include și FAIL, NON VERIFICABIL și DA RIVERIFICAT. Nu ascunde problemele și nu transforma „executat, neverificat” în „completat”.
12. După raport, oprește-te; nu începe activitatea următoare fără autorizare explicită atunci când workflow-ul cere separarea activităților.

## Format pentru progres

- Începe cu rezultatul urmărit și criteriul „făcut înseamnă”.
- Oferă actualizări scurte când apare progres sau o problemă relevantă.
- Încheie cu starea exactă: `COMPLETAT`, `COMPLETAT PARȚIAL`, `NON VERIFICABIL` sau `BLOCAT`, plus probele și limitările.

## Invocare

Folosește skill-ul când cererea este compatibilă cu scopul lui sau când utilizatorul spune explicit: „Folosește UNLAZY”.
