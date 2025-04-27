-- -----------------------------------------------------
-- Création des tables de dimensions
-- -----------------------------------------------------

USE CybersecurityDW;
GO

-- Table Dim_AttackType
CREATE TABLE Dim_AttackType (
    attack_type_id INT IDENTITY(1,1) PRIMARY KEY,
    attack_type_name NVARCHAR(100) NOT NULL
);

-- Table Dim_Industry
CREATE TABLE Dim_Industry (
    industry_id INT IDENTITY(1,1) PRIMARY KEY,
    industry_name NVARCHAR(100) NOT NULL
);

-- Table Dim_Country
CREATE TABLE Dim_Country (
    country_id INT IDENTITY(1,1) PRIMARY KEY,
    country_name NVARCHAR(100) NOT NULL,
    continent NVARCHAR(50) NULL -- Optionnel si tu veux enrichir
);

-- Table Dim_Date
CREATE TABLE Dim_Date (
    date_id INT PRIMARY KEY,  -- Format AAAAMMJJ ou juste AAAA pour cette dataset
    year INT NOT NULL,
    month INT NULL,
    day INT NULL
);

-- -----------------------------------------------------
-- Création de la table de faits
-- -----------------------------------------------------

-- Table Fact_Incident
CREATE TABLE Fact_Incident (
    id_incident INT IDENTITY(1,1) PRIMARY KEY,
    attack_type_id INT NOT NULL,
    industry_id INT NOT NULL,
    country_id INT NOT NULL,
    date_id INT NOT NULL,
    number_records_lost BIGINT NULL,
    cost_estimate FLOAT NULL,

    -- Définition des clés étrangères
    FOREIGN KEY (attack_type_id) REFERENCES Dim_AttackType(attack_type_id),
    FOREIGN KEY (industry_id) REFERENCES Dim_Industry(industry_id),
    FOREIGN KEY (country_id) REFERENCES Dim_Country(country_id),
    FOREIGN KEY (date_id) REFERENCES Dim_Date(date_id)
);
