USE Recursos_Humanos

-- Inserir dados na tabela Employees
INSERT INTO Employees (EMPLOYEE_ID, AGE, GENDER, MARITAL_STATUS, OVERTIME, EDUCATION, EDUCATION_FIELD, ATTRITION)
SELECT EmployeeNumber, Age, Gender, MaritalStatus, OverTime, Education, EducationField, Attrition
FROM Camada_bruta;

-- Inserir dados na tabela Jobs
INSERT INTO JOBS (EMPLOYEE_ID, JOB_ROLE, JOB_LEVEL)
SELECT DISTINCT EmployeeNumber, JobRole, JobLevel
FROM Camada_bruta;

-- Inserir dados na tabela Departments
INSERT INTO DEPARTAMENTS (EMPLOYEE_ID, DEPARTAMENT, BUSINESS_TRAVEL)
SELECT DISTINCT EmployeeNumber, Department, BusinessTravel
FROM Camada_bruta;

-- Inserir dados na tabela Salaries
INSERT INTO SALARIES (EMPLOYEE_ID, MONTHLY_INCOME, MONTHLY_RATE, DAILY_RATE, HOURLY_RATE, PERCENT_SAL_HIKE)
SELECT EmployeeNumber, MonthlyIncome, MonthlyRate, DailyRate, HourlyRate, PercentSalaryHike
FROM Camada_bruta;

-- Inserir dados na tabela Satisfaction
INSERT INTO SATISFACTION (EMPLOYEE_ID, ENVIRONMENT, REALATIONSHIP, JOB_SATISFACTION, JOB_INVOLVEMENT, WORKLIFE_BALANCE, PERFORMANCE_RATING )
SELECT EmployeeNumber, EnvironmentSatisfaction, RelationshipSatisfaction, JobSatisfaction, JobInvolvement, WorkLifeBalance, PerformanceRating
FROM Camada_bruta;

-- Inserir dados na tabela WorkHistory
INSERT INTO WORK_HISTORY (EMPLOYEE_ID, NUM_COMPANIES_WORKED, YEARS_AT_COMPANY, YEARSINCURRENTROLE, YEARS_SINCE_LAST_PROMOTION, YEARS_WITH_CURRMANAGER, TRAINING_TIMES_LASTYEAR, DISTANCE_FROM_HOME, TOTAL_WORKING_YEARS )
SELECT EmployeeNumber, NumCompaniesWorked, YearsAtCompany, YearsInCurrentRole, YearsSinceLastPromotion, YearsWithCurrManager, TrainingTimesLastYear, DistanceFromHome, TotalWorkingYears
FROM Camada_bruta;