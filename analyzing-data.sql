-- 1.	Were there more male or female voters in Greensboro?
select * from cities where name: 'Greensboro';
select count(*) from votes where gender = 'female' AND "cityId" = 68;
select count(*) from votes where gender = 'male' AND "cityId" = 68;
-- females = 404
-- males = 396
-- females > males

-- 2. What is the average age of voters in Orlando? 
select * from cities where name = 'Orlando';
select AVG(age) from votes where "cityId" = 77;
-- AVG age in Orlando -  51.4562500000000000

-- 3. Which state has the most cities listed?
select "stateId", count(name) from cities group by "stateId" order by count(name) desc;
select * from states where id = 3;
-- California

-- 4. Which state had the most votes placed?
-- California because logic
select count("stateId"), "stateId" from votes join cities on "cityId" = cities.id
group by "stateId" order by count("stateId") desc;
select * from states where id = 3;
-- California

-- What percentage of cities passed the minimum wage issue (> 50% of votes)?
select count(id) from cities;
-- 1,000 cities total
