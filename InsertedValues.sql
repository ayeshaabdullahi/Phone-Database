-- DATA INSERTIONS
-- Model table FINISHED
INSERT INTO model (model_id, manufacturer, model_name, model_year, units_sold) VALUES
(1, 'Samsung','Galaxy S24', 2024, 26), -- units sold is in millions
(2,'Samsung', 'Galaxy S24+', 2024, 13),
(3,'Samsung', 'Galaxy S24 Ultra', 2024, 30),
(4, 'Apple','iPhone 15', 2023, 20),
(5,'Apple','IPhone 15+', 2023, 10),
(6,'Apple', 'IPhone 15 Pro', 2023, 13),
(7,'Apple','IPhone 15 Pro Max', 2023, 27);

-- Processor table FINISHED
INSERT INTO processor (processor_id, chip_type) VALUES
(1, 'Qualcomm Snapdragon 8 Gen 3 for Galaxy'),
(2, 'Qualcomm Snapdragon 8 Gen 3 for Galaxy'),
(3, 'Qualcomm Snapdragon 8 Gen 3 for Galaxy'),
(4, 'A16 Bionic chip'),
(5, 'A16 Bionic chip'),
(6, 'A17 Pro chip'),
(7, 'A17 Pro chip');

INSERT INTO has_chip (processor_id, model_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);


-- Battery table FINISHED
INSERT INTO battery (battery_id, battery_life, battery_size) VALUES
(1, 13, 4000), -- the second attribute stands for hours, the third att. stands for battery mAh in thousands.
(2,16, 4900),
(3, 16, 5000),
(4,11, 3349),
(5, 14, 4383),
(6,10, 3274),
(7, 14, 4422);

INSERT INTO has_battery (battery_id, model_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);


-- Screen table FINISHED
INSERT INTO screen (screen_id, display_size) VALUES
(1, 6.2),
(2, 6.7),
(3, 6.8),
(4, 6.1),
(5, 6.7),
(6, 6.1),
(7, 6.7);

INSERT INTO has_screen (screen_id, model_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);


-- Cellular & Wireless Table FINISHED
INSERT INTO cellular (cellular_id, wireless_speed) VALUES
(1, 5), #the 5 stands for 5G
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5);

INSERT INTO cell_plan (cellular_id, model_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

-- storage table FINISHED
INSERT INTO storage (storage_id, max_capacity, default_space) VALUES
(1, 256, 128), #I only listed the highest amount of storage a device could hold in GB
(2, 512, 256),
(3, 1000, 256), # 1000 means 1 TB
(4, 512, 128),
(5, 512, 128),
(6, 1000, 128), # 1 TB
(7, 1000, 256); #1 TB

INSERT INTO has_space (storage_id, model_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

-- Camera table FINISHED
INSERT INTO camera (cam_id, cam_type, zoom_range) VALUES
(1, 'Ultra Wide Camera', 3), #3 means 3x optical Zoom
(2, 'Ultra Wide Camera', 3),
(3, 'Ultra Wide Camera', 5),
(4, 'Advanced dual-camera system', 4),
(5, 'Advanced dual-camera system', 4),
(6, 'Pro camera system', 10),
(7, 'Pro camera system', 10);



INSERT INTO has_cam (cam_id, model_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

-- User table FINISHED
INSERT INTO user (user_id, username, email) VALUES
(1, TRUE, TRUE), #I need help with this
(2, TRUE, TRUE),
(3, TRUE, TRUE),
(4, TRUE, TRUE),
(5, TRUE, TRUE),
(6, TRUE, TRUE),
(7, TRUE, TRUE);

INSERT INTO has_user (user_id, model_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);







