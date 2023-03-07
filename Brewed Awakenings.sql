CREATE TABLE `Employees` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `email` varchar(255),
  `hourlyRate` int
);

CREATE TABLE `Products` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `price` int
);

CREATE TABLE `Orders` (
  `id` int PRIMARY KEY,
  `productID` int,
  `employeeID` int,
  `timestamp` int
);

ALTER TABLE `Orders` ADD FOREIGN KEY (`productID`) REFERENCES `Products` (`id`);

ALTER TABLE `Orders` ADD FOREIGN KEY (`employeeID`) REFERENCES `Employees` (`id`);
