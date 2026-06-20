CREATE SCHEMA IF NOT EXISTS market;



CREATE TABLE market.dogs (
    state VARCHAR(50),
    households BIGINT,
    pct_dog_owners NUMERIC(5,2),
    dog_households BIGINT,
    mean_dogs_per_household NUMERIC(5,2),
    dog_population BIGINT
);



CREATE TABLE market.us_state (
    state VARCHAR(50),
    state_code VARCHAR(2),
    population BIGINT,
    pop_density NUMERIC(10,2),
    region VARCHAR(50),
    openness NUMERIC(5,2),
    data_science NUMERIC(5,2),
    artificial_intelligence NUMERIC(5,2),
    machine_learning NUMERIC(5,2),
    data_analysis NUMERIC(5,2),
    business_intelligence NUMERIC(5,2)
);




CREATE TABLE market.income (
    state VARCHAR(50),
	per_capita_income NUMERIC(15,2),
    personal_income_m NUMERIC(15,2)  
);
