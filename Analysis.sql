-- Which phone has the biggest and smallest screen size?
SELECT model_name, MAX(scr.display_size) AS screen_size_order
FROM model ml
JOIN has_screen has ON ml.model_id = has.model_id
JOIN screen scr ON has.screen_id = scr.screen_id
GROUP BY ml.model_name
ORDER BY screen_size_order DESC;

-- Which phone has the most amount of battery life? 
SELECT model_name, MAX(bat.battery_life) AS battery_life_order
FROM model ml
JOIN has_battery hasb ON ml.model_id = hasb.model_id
JOIN battery bat ON hasb.battery_id = bat.battery_id
GROUP BY ml.model_name
ORDER BY battery_life_order DESC;

-- Which phone offers the closest zoom range? 
SELECT model_name, MAX(c.zoom_range) AS zoom_range_order
FROM model ml
JOIN has_cam hasc ON ml.model_id = hasc.model_id
JOIN camera c ON hasc.cam_id = c.cam_id
GROUP BY ml.model_name
ORDER BY zoom_range_order ASC;

-- Which phone offers the least amount of default storage?
SELECT model_name, MAX(stor.default_space) AS default_storage_order
FROM model ml
JOIN has_space haspace ON ml.model_id = haspace.model_id
JOIN storage stor ON haspace.storage_id = stor.storage_id
GROUP BY ml.model_name
ORDER BY default_storage_order ASC;


-- Which phone offers the fastest cellular and wireless speed?
SELECT model_name, MAX(c.wireless_speed) AS fastest_cell_order
FROM model ml
JOIN cell_plan cellp ON ml.model_id = cellp.model_id
JOIN cellular c ON cellp.cellular_id = c.cellular_id
GROUP BY ml.model_name
ORDER BY fastest_cell_order DESC;


-- How many units of the IPhone 15 were sold?
SELECT model_name, units_sold
FROM model
WHERE model_name = 'iPhone 15';


-- How many units of the IPhone 15+ were sold?
SELECT model_name, units_sold
FROM model
WHERE model_name = 'IPhone 15+';

-- How many units of the IPhone 15 Pro were sold?
SELECT model_name, units_sold
FROM model
WHERE model_name = 'IPhone 15 Pro';

-- How many units of the IPhone 15 Pro Max were sold?
SELECT model_name, units_sold
FROM model
WHERE model_name = 'IPhone 15 Pro Max';

-- How many units of the Galaxy S24 were sold?
SELECT model_name, units_sold
FROM model
WHERE model_name = 'Galaxy S24';

-- How many units of the Galaxy S24+ were sold?
SELECT model_name, units_sold
FROM model
WHERE model_name = 'Galaxy S24+';

-- How many units of the Galaxy S24 ultra were sold?
SELECT model_name, units_sold
FROM model
WHERE model_name = 'Galaxy S24 Ultra';

-- How many phones are in our database?
SELECT COUNT(DISTINCT Model_name) AS all_phones
FROM Model;


-- How many manufacturers are there?
SELECT COUNT(DISTINCT Manufacturer) AS all_manufacturers
FROM Model;

-- Which Apple phone sold the most?
SELECT Model_name, SUM(Units_sold) AS most_A_units_sold
FROM Model
WHERE Manufacturer = 'Apple'  
GROUP BY Model_name
ORDER BY most_A_units_sold DESC;


-- Which Samsung phone sold the most?
SELECT Model_name, SUM(Units_sold) AS most_S_units_sold
FROM Model
WHERE Manufacturer = 'Samsung'   
GROUP BY Model_name
ORDER BY most_S_units_sold DESC;

-- Which of the seven phone models sold the most out of all?
SELECT Model_name, MAX(Units_sold) AS sold_the_most
FROM Model
GROUP BY Model_name
ORDER BY sold_the_most DESC;


-- Which camera type does the Samsung phones have?
SELECT distinct c.cam_type
from camera c
JOIN has_cam hcm ON c.cam_id = hcm.model_id
JOIN model mdl ON hcm.model_id = mdl.model_id
where mdl.manufacturer = 'Samsung';


-- Which camera type does the Apple phones have?
SELECT distinct c.cam_type
from camera c
JOIN has_cam hcm ON c.cam_id = hcm.model_id
JOIN model mdl ON hcm.model_id = mdl.model_id
where mdl.manufacturer = 'Apple';



