# Disable MYSQL safe update mode
SET SQL_SAFE_UPDATES = 0;

# Rename values in brand_name 
UPDATE 	smartphone.smartphones_df
SET smartphone.smartphones_df.brand_name = 'OnePlus'
WHERE smartphone.smartphones_df.brand_name = 'oneplus';

# Capitalise the first letter of all values in brand name 
UPDATE smartphone.smartphones_df
SET smartphone.smartphones_df.brand_name = CONCAT(UPPER(LEFT(smartphone.smartphones_df.brand_name, 1)), LOWER(SUBSTRING(smartphone.smartphones_df.brand_name, 2)));

# Replace fast_charging_available with TRUE and FALSE

## See data type of each column 
DESCRIBE smartphone.smartphones_df;

## Modify datatype of fast_charging_available
ALTER TABLE smartphone.smartphones_df
MODIFY COLUMN fast_charging_available VARCHAR(5);

UPDATE smartphone.smartphones_df
SET smartphone.smartphones_df.fast_charging_available = 'TRUE'
WHERE smartphone.smartphones_df.fast_charging_available = 1;

UPDATE smartphone.smartphones_df
SET smartphone.smartphones_df.fast_charging_available = 'FALSE'
WHERE smartphone.smartphones_df.fast_charging_available = '0';


# Replace TRUE/ FALSE values to Yes/No

UPDATE smartphone.smartphones_df 
SET smartphone.smartphones_df.has_5g = 'Yes'
WHERE smartphone.smartphones_df.has_5g = 'True';

UPDATE smartphone.smartphones_df 
SET smartphone.smartphones_df.has_5g = 'No'
WHERE smartphone.smartphones_df.has_5g = 'False';

UPDATE smartphone.smartphones_df 
SET smartphone.smartphones_df.has_nfc = 'Yes'
WHERE smartphone.smartphones_df.has_nfc = 'True';

UPDATE smartphone.smartphones_df 
SET smartphone.smartphones_df.has_nfc = 'No'
WHERE smartphone.smartphones_df.has_nfc = 'False';

UPDATE smartphone.smartphones_df 
SET smartphone.smartphones_df.has_ir_blaster = 'Yes'
WHERE smartphone.smartphones_df.has_ir_blaster = 'True';

UPDATE smartphone.smartphones_df 
SET smartphone.smartphones_df.has_ir_blaster = 'No'
WHERE smartphone.smartphones_df.has_ir_blaster = 'False';

UPDATE smartphone.smartphones_df 
SET smartphone.smartphones_df.fast_charging_available = 'Yes'
WHERE smartphone.smartphones_df.fast_charging_available = 'TRUE';

UPDATE smartphone.smartphones_df 
SET smartphone.smartphones_df.fast_charging_available = 'No'
WHERE smartphone.smartphones_df.fast_charging_available = 'FALSE';


