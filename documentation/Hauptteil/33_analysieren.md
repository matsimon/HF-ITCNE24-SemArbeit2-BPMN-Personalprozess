---
layout: default
title: 3.3 Analysieren
parent: 3. Hauptteil
nav_order: 6
---
# Analysieren (Analyze) Phase

Die Analyze-Phase ist der dritte Schritt in einem Six Sigma Projekt. Hier werden die in der [Measure-Phase](./32_messen.md) gesammelten Daten analysiert, um die Ursachen von Problemen zu identifizieren. Ziel ist es, die Hauptursachen für Prozessabweichungen zu bestimmen und Hypothesen für Verbesserungen zu entwickeln. Dies umfasst die Nutzung statistischer Methoden und Werkzeuge, um Muster und Zusammenhänge in den Daten zu erkennen.


![Analyze](../../ressources/images/analyze.png)

[Quelle](../Quellverzeichnis/index.md#analyze-phase)

## Zusammenfassung der Datenerhebung

Die [Measure-Phase](./32_messen.md) hat gezeigt, dass der aktuelle Personaleintrittsprozess bei der ISE AG ineffizient und fehleranfällig ist. Es besteht ein hoher Bedarf an Automatisierung und Standardisierung, um die Effizienz zu steigern und die Abhängigkeiten zu reduzieren.
## Analyse der Daten

Die Analyse der erhobenen Daten ergab folgende Erkenntnisse:

1.  **Hoher Zeitaufwand**: Der manuelle Prozess ist zeitintensiv und führt zu Verzögerungen.
2.  **Fehleranfälligkeit**: Die manuelle Durchführung kann zu Fehlern führen, welche nachträglich korrigiert werden müssten, was wieder einen Zeitaufwand benötigt.
3.  **Abhängigkeiten**: Bestimmte Mitarbeitende sind für die Durchführung des Prozesses unverzichtbar, was zu Engpässen und Verzögerungen führen kann.
4.  **Checkliste als Leitfaden**: Eine Checkliste dient als Anhaltspunkt, um sicherzustellen, dass alle notwendigen Schritte durchgeführt werden. Dennoch bleibt der Prozess stark von der Sorgfalt und Verfügbarkeit der verantwortlichen Personen abhängig.

## Wie könnte dies gelöst werden

1. **Hoher Zeitaufwand**: Damit der Benutzer und auch die Berechtigungen nicht mehr von Hand eingegeben werden müssen, würde dies in Zukunft ein Script vereinfachen. 
2. **Fehleranfälligkeit**: Mit einem zusätzlichen Genehmigungstask, kann ein 4 Augenprinzip eingebaut werden. 
3.  **Abhängigkeiten**: Durch Scripts und einem Prozess mit Camunda, können frühere Usertasks automatisiert werden, was den Personen mehr Zeit gibt, für andere Tasks. 
4. **Checkliste als Leitfaden**: Die Checkliste würde durch einen Prozess mit Camunda abgelöst werden, da die Schritte von der Checkliste mit im Prozess sind. 
   Diese Schritte würden dann durch den Mitarbeitenden bestätigt werden. 
