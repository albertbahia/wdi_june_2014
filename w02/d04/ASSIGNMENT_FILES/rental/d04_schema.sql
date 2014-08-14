DROP TABLE IF EXISTS building;
DROP TABLE IF EXISTS apartment;
DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS doormen;

CREATE TABLE building (
  id SERIAL PRIMARY KEY,
  name VARCHAR(512),
  nationality VARCHAR(512),
  birth_year INTEGER
);
