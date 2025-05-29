

# 🔐 Cybersecurity Threats – Data Warehouse & Power BI

> 📊 Projet de Business Intelligence – Année universitaire 2024–2025  
> Réalisé dans le cadre du module LCS2 – Data Specialist

---

## 📁 Description du projet

Ce projet a pour objectif la mise en place d’un **entrepôt de données (Data Warehouse)** et la création de **dashboards interactifs avec Power BI** pour analyser les menaces de cybersécurité à l’échelle mondiale (2015–2024).

---

## 🎯 Objectifs

- Collecte de données ouvertes sur Kaggle
- Nettoyage, transformation et chargement via **SSIS (ETL)**
- Modélisation en étoile avec **SQL Server**
- Visualisation dynamique avec **Power BI**

---

## 🧱 Architecture

- **Modèle en étoile** :
  - `Fact_Incident`
  - `Dim_Country`
  - `Dim_Date`
  - `Dim_Industry`
  - `Dim_AttackType`

- **Pipeline ETL :**
  - SSIS – Data Flow Tasks pour chaque table
  - Lookup, conversions, nettoyage automatisé

---

## 🛠️ Technologies utilisées

| Outil        | Usage                         |
|--------------|-------------------------------|
| `SSIS`       | ETL – chargement des données  |
| `SSMS`       | Création de tables SQL        |
| `Power BI`   | Visualisation interactive     |
| `Kaggle`     | Source du dataset CSV         |

---

## 📊 Dashboards principaux

- Carte des pays affectés
- Histogramme des types d’attaque
- Coûts estimés par secteur
- Évolution temporelle des incidents

> 🎥 *Voir les captures d’écran dans le dossier `/images`*

---

## 📂 Structure du dépôt

```

📁 /ETL              -> Fichiers SSIS (.dtsx)
📁 /SQL              -> Scripts SQL (CREATE, INSERT, VIEWS)
📁 /PowerBI          -> Fichier `.pbix`
📁 /images           -> Captures d’écran du rapport
📄 README.md

```

---

## 🚀 Lancer le projet localement

1. Importer les scripts SQL dans SQL Server
2. Exécuter les packages SSIS via Visual Studio
3. Ouvrir le fichier `.pbix` dans Power BI Desktop
4. Mettre à jour la source de données si besoin

---

## 👤 Auteur

- **Nom :** Kabil Boufares
- **Université / Formation :** LCS2, 2024–2025

---

## 📜 Licence

Projet pédagogique – *Usage non commercial*
```

