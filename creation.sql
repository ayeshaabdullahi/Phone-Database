-- cellular is done
CREATE TABLE model (
   model_id INT,
   manufacturer varchar (50),
   model_name varchar (50),
   model_year INT,
   units_sold INT,
   primary key(model_id)
   );
 
   
   -- cellular is done
   CREATE TABLE cell_plan (
   cellular_id INT,
   model_id INT,
   primary key(model_id,cellular_id),
   FOREIGN KEY (cellular_id) REFERENCES cellular(cellular_id),
   FOREIGN KEY (model_id) REFERENCES model(model_id)
   );
   
   CREATE TABLE cellular (
    cellular_id INT,
    wireless_speed VARCHAR(50),
    primary key(cellular_id)
);

-- processor is done
   CREATE TABLE has_chip (
   processor_id INT,
   model_id INT,
   primary key(processor_id,model_id),
   FOREIGN KEY (processor_id) REFERENCES processor(processor_id),
   FOREIGN KEY (model_id) REFERENCES model(model_id)
   );

CREATE TABLE processor (
    processor_id INT,
    chip_type VARCHAR(100),
    primary key(processor_id)
);


-- battery is done
  CREATE TABLE has_battery (
   battery_id INT,
   model_id INT,
   primary key(battery_id,model_id),
   FOREIGN KEY (battery_id) REFERENCES battery(battery_id),
   FOREIGN KEY (model_id) REFERENCES model(model_id)
   );

CREATE TABLE battery (
    battery_id INT,
    battery_life INT,
    battery_size INT,
    primary key(battery_id)
);


-- screen is done
  CREATE TABLE has_screen (
   screen_id INT,
   model_id INT,
   primary key(screen_id,model_id),
   FOREIGN KEY (screen_id) REFERENCES screen(screen_id),
   FOREIGN KEY (model_id) REFERENCES model(model_id)
   );

CREATE TABLE screen (
    screen_id INT,
    display_size DECIMAL(6,3),
    primary key(screen_id)
);

-- camera is done
  CREATE TABLE has_cam (
   cam_id INT,
   model_id INT,
   primary key(cam_id,model_id),
   FOREIGN KEY (cam_id) REFERENCES camera(cam_id),
   FOREIGN KEY (model_id) REFERENCES model(model_id)
   );

CREATE TABLE camera (
    cam_id INT,
    cam_type VARCHAR(50),
    zoom_range VARCHAR(50),
    primary key(cam_id)
);


-- storage is done
  CREATE TABLE has_space (
   storage_id INT,
   model_id INT,
   primary key(storage_id,model_id),
   FOREIGN KEY (storage_id) REFERENCES storage(storage_id),
   FOREIGN KEY (model_id) REFERENCES model(model_id)
   );

CREATE TABLE storage (
    storage_id INT,
    max_capacity INT,
    default_space INT,
    primary key(storage_id)
);


-- User
  CREATE TABLE has_user (
   user_id INT,
   model_id INT,
   primary key(user_id,model_id),
   FOREIGN KEY (user_id) REFERENCES user(user_id),
   FOREIGN KEY (model_id) REFERENCES model(model_id)
   );

CREATE TABLE user (
	user_id INT,
    username BOOLEAN,
    email BOOLEAN,
    primary key(user_id)
);









