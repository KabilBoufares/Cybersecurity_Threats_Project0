-- -----------------------------------------------------
-- Exemple d'insertion dans Fact_Incident
-- -----------------------------------------------------
-- Remarque : il faut utiliser les IDs générés dans les tables de dimensions

INSERT INTO Fact_Incident (attack_type_id, industry_id, country_id, date_id, number_records_lost, cost_estimate)
VALUES 
(1, 1, 1, 20190101, 500000, 2000000), -- Malware sur Finance aux USA en 2019
(2, 2, 2, 20200101, 150000, 750000), -- Phishing sur Healthcare UK 2020
(3, 3, 3, 20210101, 300000, 1200000), -- Ransomware sur Education Allemagne 2021
(4, 4, 4, 20220101, 1000000, 5000000), -- Data Breach Retail Inde 2022
(5, 5, 5, 20230101, 75000, 300000); -- Spyware Gouvernement Australie 2023
