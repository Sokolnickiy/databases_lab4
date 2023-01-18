SELECT count_country_websites('United States');

SELECT * from country;
CALL country_name_upper(1);
SELECT * from country;

INSERT INTO country("country_name") VALUES ('ukraine');
SELECT * from country WHERE "country_name" = 'UKRAINE';