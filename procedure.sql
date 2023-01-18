-- Will set given country name to UPPERCASE
CREATE OR REPLACE PROCEDURE
country_name_upper(country_id int)
language plpgsql
AS $$
BEGIN
	update country
	set country_name = UPPER(country_name)
	where country.id = country_id;
END;
$$;