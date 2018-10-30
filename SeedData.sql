use companyDB
INSERT INTO Address
VALUES
	('United States of America', 'Cupertino, CA', 'Apple Park', 95014),
	('United States of America', 'Mountain View, CA', 'Amphitheatre Parkway ', 94043),
	('United States of America', 'Palo Alto, CA', '3500 Deer Creek Road', 94304),
	('United States of America', 'Menlo Park, CA', '1 Hacker Way', 94025),
	('Russia', 'Saint Petersburg', 'Nevsky street, 28', 191186);
	
INSERT INTO Department
VALUES 
	('Apple', 1),
	('Google', 2),
	('Tesla', 3),
	('Facebook', 4),
	('VK', 5);


INSERT INTO Job
VALUES
	('Junior .Net Developer', 450.00, 'USD'),
	('Middle .Net Developer', 1000.00, 'USD'),
	('Senior .Net Developer', 1800.00, 'USD'),
	('Cleaner', 25000.50, 'RUB'),
	('Team Lead Software Engineer', 3000.00, 'USD');

INSERT INTO Employee
VALUES
	('Vladislav', 'Malkhasyan', '1997-10-10'),
	('Alexey', 'Hatkevich', '1997-11-14'),
	('Marina', 'Timofeeva', '1997-04-19'),
	('John', 'Cena', '1993-02-21'),
	('Andrew', 'Garfield', '1986-06-12'),
	('Robert', 'Downey Jr', '1983-04-15'),
	('Jessica', 'Alba', '1995-01-28'),
	('Barry', 'Allen', '1990-12-12');

INSERT INTO Career
VALUES
	(1, 1, 1, '2014-10-21', null),
	(2, 2, 2, '2013-05-13', null),
	(4, 3, 5, '2012-10-26', '2015-10-29'),
	(3, 4, 1, '2011-03-15', '2015-04-30'),
	(5, 5, 3, '2015-01-01', null),
	(2, 6, 4, '2014-07-20', null),
	(1, 7, 3, '2012-09-16', '2015-12-01'),
	(3, 8, 2, '2014-02-10', null);

INSERT INTO Salary
VALUES
	(1, 1, 2015, 3000.00, 'USD'),
	(1, 5, 2015, 2700.00, 'USD'),
	(1, 10, 2015, 3300.00, 'USD'),
	(2, 1, 2015, 5100.00, 'USD'),
	(2, 5, 2015, 5400.00, 'USD'),
	(2, 10, 2015, 5350.00, 'USD'),
	(3, 1, 2015, 25000.00, 'RUB'),
	(3, 5, 2015, 25000.00, 'RUB'),
	(3, 10, 2015, 25000.00, 'RUB'),
	(4, 1, 2015, 8300.00, 'USD'),
	(4, 2, 2015, 9300.00, 'USD'),
	(4, 3, 2015, 9500.00, 'USD'),
	(5, 1, 2015, 10300.00, 'USD'),
	(5, 5, 2015, 11300.00, 'USD'),
	(5, 10, 2015, 12150.00, 'USD'),
	(6, 1, 2015, 5200.00, 'USD'),
	(6, 5, 2015, 5150.00, 'USD'),
	(6, 10, 2015, 5400.00, 'USD'),
	(7, 1, 2015, 3225.00, 'USD'),
	(7, 5, 2015, 3300.00, 'USD'),
	(7, 10, 2015, 3500.00, 'USD'),
	(8, 1, 2015, 8650.00, 'USD'),
	(8, 5, 2015, 8150.00, 'USD'),
	(8, 10, 2016, 9000.00, 'USD');