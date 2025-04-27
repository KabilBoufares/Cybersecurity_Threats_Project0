USE CybersecurityDW;
GO
-- Vérifier Attack Type
SELECT attack_type_id FROM Fact_Incident
WHERE attack_type_id NOT IN (SELECT attack_type_id FROM Dim_AttackType);

-- Vérifier Industry
SELECT industry_id FROM Fact_Incident
WHERE industry_id NOT IN (SELECT industry_id FROM Dim_Industry);

-- Vérifier Country
SELECT country_id FROM Fact_Incident
WHERE country_id NOT IN (SELECT country_id FROM Dim_Country);

-- Vérifier Date
SELECT date_id FROM Fact_Incident
WHERE date_id NOT IN (SELECT date_id FROM Dim_Date);



--vérifier s'il y a des NULL dans les IDs de Fact_Incident 
SELECT * FROM Fact_Incident
WHERE attack_type_id IS NULL
   OR industry_id IS NULL
   OR country_id IS NULL
   OR date_id IS NULL;


-- Vérifier rapidement nb ligne 
SELECT COUNT(*) FROM Fact_Incident;  -- doit donner 3000
SELECT COUNT(*) FROM Dim_AttackType; -- environ 5
SELECT COUNT(*) FROM Dim_Country;    -- environ 10 pays
SELECT COUNT(*) FROM Dim_Date;       -- environ 10 dates
SELECT COUNT(*) FROM Dim_Industry;   -- environ 5 industries

