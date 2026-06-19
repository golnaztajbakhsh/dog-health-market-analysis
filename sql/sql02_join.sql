DROP TABLE IF EXISTS market.market_data;

CREATE TABLE market.market_data AS
SELECT
    s.state,
    s.state_code,
    s.population,
    s.pop_density,
    s.region,
    s.openness,
    s.data_science,
    s.artificial_intelligence,
    s.machine_learning,
    s.data_analysis,
    s.business_intelligence,

    d.households,
    d.pct_dog_owners,
    d.dog_households,
    d.mean_dogs_per_household,
    d.dog_population,

    i.personal_income_m,
    i.per_capita_income

FROM market.us_state s
LEFT JOIN market.dogs d
       ON s.state = d.state
LEFT JOIN market.income i
       ON s.state = i.state;