-- Question 1: Write an SQL query to identify the train that makes the most stops.

SELECT 
    Train_No, COUNT(Station_Code) AS code
FROM
    railway_data
GROUP BY Train_No
ORDER BY code DESC
LIMIT 1;

-- Question 2: Write an SQL query to calculate the average travel time between stations for each train.

SELECT 
    Train_No,
    AVG(TIMESTAMPDIFF(MINUTE,
        Arrival_Time,
        Departure_Time)) AS AA
FROM
    railway_data
GROUP BY Train_No;

-- Question 3: Write an SQL query to list all trains that run between 'SAWANTWADI ROAD' and 'MADGOAN JN.'.

SELECT 
    *
FROM
    railway_data;
SELECT DISTINCT
    Train_No
FROM
    railway_data
WHERE
    Source_Station_Name = 'SAWANTWADI ROAD'
        AND Destination_Station_Name = 'MADGOAN JN.';

-- Question 4: Write an SQL query to find all trains that depart from 'SAWANTWADI R' after 10:00 AM.

SELECT 
    Train_No, Departure_Time, Station_Name
FROM
    railway_data
WHERE
    Station_Name = 'SAWANTWADI R'
        AND Departure_Time > '10:00:00';

-- Question 5: Write an SQL query to display the full route details (all stations and their respective arrival and departure times) for a specific train.

SELECT 
    *
FROM
    railway_data;
SELECT 
    Station_Name, Source_Station_Name, Destination_Station_Name
FROM
    railway_data
WHERE
    Train_No = (108);

-- Question 6: Write an SQL query to find the earliest and latest departure times for each station.

SELECT 
    Station_Name,
    MAX(Departure_Time) AS latest,
    MIN(Departure_Time) AS earliest
FROM
    railway_data
GROUP BY Station_Name;