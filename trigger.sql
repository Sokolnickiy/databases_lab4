-- This trigger will set new inserted country name to upper if it is written in lowercase by calling procedure
CREATE OR REPLACE FUNCTION
set_upper()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS $$
BEGIN
    IF NEW.country_name = LOWER(NEW.country_name) THEN
        CALL country_name_upper(NEW.id);
    END IF;
	RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER
set_upper_trigger
	AFTER INSERT
	ON public.country
	FOR EACH ROW
	EXECUTE PROCEDURE set_upper();