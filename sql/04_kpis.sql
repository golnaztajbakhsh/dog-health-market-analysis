DROP TABLE IF EXISTS market.market_kpis;

CREATE TABLE market.market_kpis AS
SELECT
    state,
    state_code,
    region,
    population,
    households,
    dog_households,
    dog_population,
    per_capita_income,
    personal_income_m,

    ROUND(
        dog_households::numeric
        / households
        * 100,
        2
    ) AS dog_penetration_rate,

    ROUND(
        (
            data_science +
            artificial_intelligence +
            machine_learning +
            data_analysis +
            business_intelligence
        ) / 5.0,
        2
    ) AS technology_orientation

FROM market.market_data;