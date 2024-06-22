USE Recursos_Humanos
GO

-- Selecionando os IDs �nicos dos funcion�rios da tabela EMPLOYEES
SELECT DISTINCT EMPLOYEE_ID FROM EMPLOYEES

-- Criando/alterando a view RESULTADOS_RH
CREATE OR ALTER VIEW RESULTADOS_RH AS
SELECT A.EMPLOYEE_ID, A.ATTRITION, A.AGE, A.GENDER, A.EDUCATION, A.EDUCATION_FIELD, A.OVERTIME, A.MARITAL_STATUS,
       B.DEPARTAMENT, B.BUSINESS_TRAVEL,
	   C.JOB_ROLE, C.JOB_LEVEL,
	   D.HOURLY_RATE, D.PERCENT_SAL_HIKE,
	   E.ENVIRONMENT, E.JOB_SATISFACTION, E.JOB_INVOLVEMENT, E.WORKLIFE_BALANCE,
	   F.NUM_COMPANIES_WORKED, F.YEARS_AT_COMPANY, F.YEARSINCURRENTROLE, F.YEARS_SINCE_LAST_PROMOTION, F.DISTANCE_FROM_HOME


FROM EMPLOYEES A INNER JOIN DEPARTAMENTS B ON A.EMPLOYEE_ID = B.EMPLOYEE_ID 
                 INNER JOIN JOBS C ON A.EMPLOYEE_ID = C.EMPLOYEE_ID 
				 INNER JOIN SALARIES D ON A.EMPLOYEE_ID = D.EMPLOYEE_ID 
				 INNER JOIN SATISFACTION E ON A.EMPLOYEE_ID = E.EMPLOYEE_ID
				 INNER JOIN WORK_HISTORY F ON A.EMPLOYEE_ID = F.EMPLOYEE_ID



SELECT * FROM RESULTADOS_RH