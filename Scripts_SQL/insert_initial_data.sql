-- -----------------------------------------------------
-- Insertion des données dans Dim_AttackType
-- -----------------------------------------------------
INSERT INTO Dim_AttackType (attack_type_name) VALUES 
('Malware'),
('Phishing'),
('Ransomware'),
('Data Breach'),
('Spyware'),
('Denial of Service');

-- -----------------------------------------------------
-- Insertion des données dans Dim_Industry
-- -----------------------------------------------------
INSERT INTO Dim_Industry (industry_name) VALUES 
('Finance'),
('Healthcare'),
('Education'),
('Retail'),
('Government'),
('Technology');

-- -----------------------------------------------------
-- Insertion des données dans Dim_Country
-- -----------------------------------------------------
INSERT INTO Dim_Country (country_name, continent) VALUES 
('United States', 'North America'),
('United Kingdom', 'Europe'),
('Germany', 'Europe'),
('India', 'Asia'),
('Australia', 'Oceania'),
('Canada', 'North America');

-- -----------------------------------------------------
-- Insertion des données dans Dim_Date
-- -----------------------------------------------------
-- Comme le dataset fournit l'année seulement, on peut pré-créer les années
INSERT INTO Dim_Date (date_id, year, month, day) VALUES
(20150101, 2015, 1, 1),
(20160101, 2016, 1, 1),
(20170101, 2017, 1, 1),
(20180101, 2018, 1, 1),
(20190101, 2019, 1, 1),
(20200101, 2020, 1, 1),
(20210101, 2021, 1, 1),
(20220101, 2022, 1, 1),
(20230101, 2023, 1, 1),
(20240101, 2024, 1, 1);
