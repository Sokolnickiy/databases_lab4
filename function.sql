-- Will count website amount per given country
CREATE OR REPLACE FUNCTION
count_country_websites(country_name_to_search VARCHAR(100))
RETURNS int
language plpgsql
AS $$
DECLARE website_count int;
BEGIN
	SELECT count(*) INTO website_count from website
    LEFT JOIN country on country.country_name = country_name_to_search
    WHERE country.id = principal_country;
	RETURN website_count;
END;
$$;