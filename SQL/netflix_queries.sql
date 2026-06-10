create database netflix_db;

use netflix_db;

select * from netflix;

-- 1. Total Content
select count(*) as Total_Content
from netflix;

-- 2. Movies vs TV Shows
select  type, 
count(*) as Total_Content
from netflix
group by type;

-- 3. Top Genres
select listed_in,
count(*) Total_Content
from netflix
group by listed_in
order by Total_Content desc
limit 10;

-- 4. Top Countries
select country, 
count(*) Total_Content
from netflix
group by country
order by total_content desc
limit 10;

-- 5. Content Added Per Year
select 
year_added,
count(*) Total_Content
from netflix
group by year_added
order by year_added desc;

-- 6. Most Common Rating
select rating,
count(*) Total_Content
from netflix
group by rating
order by total_content desc;

-- 7. Average Movie Duration
SELECT
CONCAT(ROUND(AVG(Duration_Value),2), ' Min') AS Avg_Movie_Duration
FROM netflix
WHERE Type = 'Movie';

-- 8. Top Directors
SELECT
director,
COUNT(*) Total_Content
FROM netflix
WHERE director<>'Unknown'
GROUP BY director
ORDER BY Total_Content DESC
limit 10;

-- 9. Content Released Over Time
SELECT
release_year,
COUNT(*) Content_Count
FROM netflix
GROUP BY release_year
ORDER BY release_year;



