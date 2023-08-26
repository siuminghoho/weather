DROP DATABASE "weather";

CREATE DATABASE "weather";

\ c weather 


CREATE TABLE user (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    date_created TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE TABLE city(
    city_id SERIAL PRIMARY KEY,
    city_name VARCHAR(255),
    country VARCHAR(255),
    latitude DECIMAL(9, 6),
    longitude DECIMAL(10, 6)
);
CREATE TABLE usercity(
    user_city_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES user(user_id),
    city_id INT REFERENCES city(city_id)
);

CREATE TABLE weatherdata(
    weather_data_id SERIAL PRIMARY KEY,
    city_id INT REFERENCES city(city_id),
    temperature DECIMAL(5, 2),
    humidity DECIMAL(5, 2),
    description TEXT VARCHAR(255),
    date_created TIMESTAMPTZ DEFAULT NOW()

)
