USE CybersecurityDW;
GO

-- Vue pour les attaques
CREATE OR ALTER VIEW vw_AttackType AS
SELECT 
    attack_type_id,
    attack_type_name
FROM dbo.Dim_AttackType;
GO

-- Vue pour les pays
CREATE OR ALTER VIEW vw_Country AS
SELECT 
    country_id,
    country_name,
    continent
FROM dbo.Dim_Country;
GO

-- Vue pour les dates
CREATE OR ALTER VIEW vw_Date AS
SELECT 
    date_id,
    year,
    month,
    day
FROM dbo.Dim_Date;
GO

-- Vue pour les industries
CREATE OR ALTER VIEW vw_Industry AS
SELECT 
    industry_id,
    industry_name
FROM dbo.Dim_Industry;
GO

-- Vue pour les incidents (fait principal)
CREATE OR ALTER VIEW vw_Incident AS
SELECT 
    id_incident,
    attack_type_id,
    industry_id,
    country_id,
    date_id,
    number_records_lost,
    cost_estimate
FROM dbo.Fact_Incident;
GO
