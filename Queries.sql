/*1.à*/

--SELECT *
--FROM Employee




/*1.b*/
--SELECT *
--FROM Job
--WHERE MinimalSalary <= 500




/*1.c*/
--SELECT AVG(AccruedCash)
--FROM Salary
--WHERE SalaryMonth = 1
--	AND SalaryYear = 2015




/*2.a*/
--SELECT emp.FirstName
--	,minDate.*
--FROM (
--	SELECT MIN(DateOfBirth) AS DateOfBirth
--	FROM Employee
--	) AS minDate
--	,Employee AS emp
--WHERE emp.DateOfBirth = minDate.DateOfBirth




/*2.b*/
--SELECT listEmp.LastName
--FROM (
--	SELECT EmployeeID
--	FROM Salary
--	WHERE SalaryMonth = 1
--		AND SalaryYear = 2015
--	) AS emp
--	,Employee listEmp
--WHERE listEmp.EmployeeID = emp.EmployeeID




/*2.c*/
--SELECT sl.EmployeeID
--FROM (
--	SELECT MAX(AccruedCash) AS Cash
--		,EmployeeID
--	FROM Salary
--	WHERE SalaryMonth IN (
--			1
--			,4
--			)
--		AND SalaryYear = 2015
--	GROUP BY EmployeeID
--	) AS maxAccruedCash
--	,Salary AS sl
--WHERE sl.SalaryMonth = 5
--	AND SalaryYear = 2015
--	AND sl.AccruedCash < maxAccruedCash.Cash
--	AND sl.EmployeeID = maxAccruedCash.EmployeeID




/*2.d*/
--SELECT countEmp.DepartmentID
--	,depInfo.DepartmentName
--	,countEmp.CountEmployee
--FROM (
--	SELECT dp.DepartmentID
--		,Count(cr.EmployeeID) AS CountEmployee
--	FROM Career AS cr
--		,Department AS dp
--	WHERE dp.DepartmentID = cr.DepartmentID
--	GROUP BY dp.DepartmentID
--	) AS countEmp
--	,Department depInfo
--WHERE countEmp.DepartmentID = depInfo.DepartmentID




/*3.a*/
--SELECT AVG(AccruedCash) AS AvgCash
--FROM Salary
--WHERE SalaryYear = 2015
--GROUP BY EmployeeID




/*3.b*/
--SELECT AVG(AccruedCash) AS AvgCash
--FROM Salary
--WHERE SalaryYear = 2015
--GROUP BY EmployeeID
--HAVING Count(SalaryMonth) >= 2




/*4.a*/
--SELECT emp.FirstName
--FROM Salary AS sl
--INNER JOIN Employee AS emp ON sl.SalaryMonth = 1
--	AND sl.SalaryYear = 2015
--	AND sl.AccruedCash > 1000
--	AND sl.EmployeeId = emp.EmployeeID




/*4.b*/
--SELECT emp.FirstName
--	,experienceDays.DaysOfExperience
--FROM (
--	SELECT EmployeeID
--		,CAST(CASE 
--				WHEN DismissalDate IS NULL
--					THEN DATEDIFF(day, EmploymentDate, CONVERT(DATE, GETDATE()))
--				ELSE DATEDIFF(day, EmploymentDate, DismissalDate)
--				END AS INT) AS DaysOfExperience
--	FROM Career
--	) AS experienceDays
--INNER JOIN Employee AS emp ON emp.EmployeeID = experienceDays.EmployeeID




/*5.a*/
--UPDATE Job
--SET MinimalSalary = MinimalSalary * 1.5




/*5.b*/
--DELETE
--FROM Salary
--WHERE SalaryMonth > 2015