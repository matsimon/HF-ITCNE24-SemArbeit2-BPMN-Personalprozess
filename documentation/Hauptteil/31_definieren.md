---
layout: default
title: 3.1 Definieren
parent: 3. Hauptteil
nav_order: 4
---
# Definieren (Define) Phase

Die Define-Phase ist der erste Schritt in einem Six Sigma Projekt. In dieser Phase wird das Projekt klar definiert, um sicherzustellen, dass alle Beteiligten ein gemeinsames Verständnis der Ziele und des Umfangs haben. Ein wesentlicher Bestandteil dieser Phase ist die Identifizierung und Beschreibung des zu lösenden Problems oder der zu verbessernden Prozesse.

![Define](../../ressources/images/define.png)

[Quelle](../Quellverzeichnis/index.md)

## Zielvorstellung
Am Schluss der Semesterarbeit soll der Prozess so verfolgbar sein, dass die Zuständigen jederzeit den aktuellen Status des Auftrags abgefragt werden kann. So kann die Geschäftsleitung (GL) im Ernstfall nachhacken oder nochmals eine Erinnerung an die zuständige Person zusenden. 

Im Falle einer Neuanstellung eines Mitarbeiter oder einer Mitarbeiterin, sollte durch die GL eine Meldung an einen Mitarbeiter/in zugesendet werden. Dies geschieht mit einer Nachricht über das Camunda-BPMN, welches auch gleich eine Prozessinstanz startet.  
Beim erfassen werden über ein Camunda-Formular alle Daten erfasst und anschliessend über ein Script der neue Benutzer erstellt. Nach der Erstellung finden weitere Tasks statt, welche durch die zuständigen Personen erledigt werden. sobald alle die Fertigstellung melden, geht es auch erst weiter. 
Sobald alle Vorbereitungen abgeschlossen wurden, wird gewartet bis zum ersten Arbeitstag, wo dann auch das Onboarding stattfindet. 
Sobald das Onboarding fertig ist, wird dies durch den Mitarbeitenden bestätig und abgeschlossen.
Beim Abschluss wird zusätzlich eine Meldung an die GL gemacht, welche dann den Prozess und dessen Prozessinstanz schliesst.

## Ressourceneinsatz 
Was brauchen wir für die umsetzng von dem Ganzen?
Für einen optimalen Prozessablauf, braucht es einige Ressourcen. Diese werden hier aufgeführt:
- Mitarbeitende der ISE AG 
- Zeit (Erfassung und Scripttasks)
- Office 365 (Nachrichtenfluss)
- Camunda (BPMN / Flows / Forms)
- Serverinstanz (für Camunda Container)


## Warum wird die Zielvorstellung aktuell nicht erreicht?
Die ISE AG verwendet bis jetzt vor allem eine Checkliste, welche die Abläufe festhält.
Bei der Benutzerverwaltung konnte bis jetzt auch nur die GL Benutzer erstellen, da sie nur die Berechtigungen dafür hatten. Dadurch, dass die Termine bei der GL nicht weniger werden und auch Sie vermehrt an Projekten etc. mitarbeiten, würde ein solcher Prozess ihnen Arbeit abnehmen. 









