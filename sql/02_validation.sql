SELECT COUNT(*) FROM market.dogs;
SELECT COUNT(*) FROM market.us_state;
SELECT COUNT(*) FROM market.income;

SELECT state
FROM market.dogs
EXCEPT
SELECT state
FROM market.us_state;