--Load the dataset
SELECT * from df;

--Find the latest and earliest review of Airbnb listings
SELECT last_review
from df 
WHERE number_of_reviews > 0
ORDER BY last_review DESC;

SELECT last_review
from df 
WHERE number_of_reviews > 0
ORDER BY last_review;

--Categorize the listings as dormant and non-dormant listings
SELECT *
,
CASE
	WHEN last_review >= 2022-03-06 THEN 'Non-Dormant'
	ELSE 'Dormant'
END status
from df

--Count the dormant and non-dormant listings
SELECT
CASE
	WHEN last_review >= 2022-03-06 THEN 'Non-Dormant'
	ELSE 'Dormant'
END status
, count(
CASE
	WHEN last_review >= 2022-03-06 THEN 'Non-Dormant'
	ELSE 'Dormant'
END) count
from df
GROUP BY
CASE
	WHEN last_review >= 2022-03-06 THEN 'Non-Dormant'
	ELSE 'Dormant'
END;