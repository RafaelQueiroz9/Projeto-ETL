/*

Esse conjunto de comandos SQL realiza o tratamento inicial dos dados após sua carga no SQL Server.
Ele altera os tipos de dados das colunas para VARCHAR para poder armazenar categorias textuais após a transformação e atualiza os valores dessas colunas com base nas categorias especificadas
(como educação, satisfação no trabalho, etc.). Essa transformação é essencial para preparar os dados para análises e visualizações posteriormente no Power BI.

*/

USE Recursos_Humanos
GO

ALTER TABLE Camada_bruta
ALTER COLUMN Education VARCHAR (20);

ALTER TABLE Camada_bruta
ALTER COLUMN EnvironmentSatisfaction VARCHAR (10);

ALTER TABLE Camada_bruta
ALTER COLUMN RelationshipSatisfaction VARCHAR (10);

ALTER TABLE Camada_bruta
ALTER COLUMN JobSatisfaction VARCHAR (10);

ALTER TABLE Camada_bruta
ALTER COLUMN WorkLifeBalance VARCHAR (10);

ALTER TABLE Camada_bruta
ALTER COLUMN JobInvolvement VARCHAR (10);

ALTER TABLE Camada_bruta
ALTER COLUMN PerformanceRating VARCHAR (15);


UPDATE Camada_bruta

SET Education = CASE 

WHEN Education = 1 THEN 'Below College'
WHEN Education = 2 THEN 'College'
WHEN Education = 3 THEN 'Bachelor'
WHEN Education = 4 THEN 'Master'
WHEN Education = 5 THEN 'Doctor'

ELSE 'Unknown'

END;

UPDATE Camada_bruta
SET EnvironmentSatisfaction = CASE 
        WHEN EnvironmentSatisfaction = 1 THEN 'Low'
        WHEN EnvironmentSatisfaction = 2 THEN 'Medium'
        WHEN EnvironmentSatisfaction = 3 THEN 'High'
        WHEN EnvironmentSatisfaction = 4 THEN 'Very High'
        ELSE 'Unknown'
    END;

-- Satisfação com relacionamento

UPDATE Camada_bruta
SET RelationshipSatisfaction = CASE 
        WHEN RelationshipSatisfaction = 1 THEN 'Low'
        WHEN RelationshipSatisfaction = 2 THEN 'Medium'
        WHEN RelationshipSatisfaction = 3 THEN 'High'
        WHEN RelationshipSatisfaction = 4 THEN 'Very High'
        ELSE 'Unknown'
    END;

-- Satisfação no trabalho

UPDATE Camada_bruta
SET JobSatisfaction = CASE 
        WHEN JobSatisfaction = 1 THEN 'Low'
        WHEN JobSatisfaction = 2 THEN 'Medium'
        WHEN JobSatisfaction = 3 THEN 'High'
        WHEN JobSatisfaction = 4 THEN 'Very High'
        ELSE 'Unknown'
    END;

-- Equilíbrio entre trabalho e vida pessoal

UPDATE Camada_bruta
SET WorkLifeBalance = CASE 
        WHEN WorkLifeBalance = 1 THEN 'Bad'
        WHEN WorkLifeBalance = 2 THEN 'Good'
        WHEN WorkLifeBalance = 3 THEN 'Better'
        WHEN WorkLifeBalance = 4 THEN 'Best'
        ELSE 'Unknown'
    END;


UPDATE Camada_bruta
SET JobInvolvement = CASE 
        WHEN JobInvolvement = '1' THEN 'Low'
        WHEN JobInvolvement = '2' THEN 'Medium'
        WHEN JobInvolvement = '3' THEN 'High'
        WHEN JobInvolvement = '4' THEN 'Very High'
        ELSE 'Unknown'
    END;


UPDATE Camada_bruta
SET PerformanceRating = CASE 
        WHEN PerformanceRating = '1' THEN 'Low'
        WHEN PerformanceRating = '2' THEN 'Good'
        WHEN PerformanceRating = '3' THEN 'Excellent'
        WHEN PerformanceRating = '4' THEN 'Outstanding'
        ELSE 'Unknown'
    END;