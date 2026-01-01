# Webanwendung mit Jakarta EE

Das Projekt wurde nach agilen Prinzipien konfiguriert und basiert auf dem Technologiestack
JavaServer Faces (JSF), PrimeFaces Komponenten und Contexts and Dependency Injection
(CDI) für die Benutzeroberfläche und Logik, JPA und Hibernate für die Persistenzschicht, sowie
MySQL für die Datenhaltung.

## Installation und Start (Lokal)

Voraussetzungen:

- Docker
- Java JDK 17+
- Maven

### 1. Datenbank starten

```bash
docker-compose up -d
```

Dies startet eine MySQL-Datenbank und importiert automatisch die Daten aus `fallstudie-db.sql`.

### 2. Anwendung starten

```bash
mvn jetty:run
```

Die Anwendung ist anschließend unter [http://localhost:8080/fallstudie](http://localhost:8080/fallstudie) erreichbar.
