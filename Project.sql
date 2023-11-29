CREATE TABLE Airport (
  AirportID VARCHAR PRIMARY KEY,
  AirportName VARCHAR(255),
  Airportlocation VARCHAR(255));

CREATE TABLE Flight(
  FlightID VARCHAR PRIMARY KEY,
  FlightName VARCHAR(255), 
  RouteID VARCHAR,
  EconomySeats INT,
  BusinessSeats INT,
  FOREIGN KEY (RouteID) REFERENCES Route
  ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE Route(
  RouteID VARCHAR PRIMARY KEY,
  DepartureCity VARCHAR(255),
  LandingCity VARCHAR(255));
CREATE TABLE login( username varchar(255) primary Key,
				  password varchar(255));	
		
	INSERT into Airport values(1, 'cial','kochi'),
	(2,'tvmairport','trivandrum'),
	(3,'mumbaiairport','mumbai'),
	(4,'kannurairport','kannur');
	
	INSERT into Flight values('Fe220','indigo',23,100,10),
	('Pa560','airindia',27,110,20),
	('Oi780','Spicejet',45,95,30),
	('Ba580','indigo',24,100,9);
	
	INSERT into Route values(23,'kochi','banglore'),
	(27,'trivandrum','delhi'),
	(45,'mumbai','amritsar'),
	(24,'kannur','mumbai');
	
	INSERT into login values('vinayak','430tg'),
	('alex','Eg4t'),
	('akash','Srge9');
	Insert into Time values('')
	
	select * from airport
	select * from flight
	select * from route
	select * from login
	
select Flightname, count(FlightID) from Flight group by Flightname having count(FlightID)>1;
select * from Flight order by Economyseats;
SELECT * FROM Route RIGHT JOIN Flight ON Route.RouteID = Flight.RouteID;
select FlightID from Flight where Economyseats>99;
select FlightID, Economyseats-50 as Updatedseats from Flight where Economyseats>50;
select * from Flight where Flightname like 'ind%'

create table Time(DepatureTime Time, LandingTime Time);
insert into Time values('12:00:00','3:00:00'),
('11:00:00','4:00:00');
SELECT DepatureTime, TO_CHAR(DepatureTime, 'HH') as Time FROM Time;
select * from Time where extract(Hour from DepatureTime)=12;
SELECT FlightID, Flightname FROM Flight WHERE Businessseats between 10 AND 20;
SELECT FlightID, Flightname FROM Flight WHERE Businessseats Not between 10 AND 20;

select * from Flight where FlightID not between 20 and 30;
Select password from login where username in ('alex','akash');

select Airportname from Airport union select Flightname from Flight;

SELECT Flightname FROM Flight f WHERE EXISTS (
  SELECT 1 
  FROM Route r
  WHERE r.RouteID = f.RouteID);

