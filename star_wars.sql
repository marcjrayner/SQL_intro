-- -- DROP TABLE table_name;
-- --
-- -- CREATE TABLE table_name(
-- --   column_name1 DATA_TYPE,
-- --   column_name2 DATA_TYPE,
-- --   column_name3 DATA_TYPE
-- -- );
--
DROP TABLE lightsabers;
DROP TABLE characters;




CREATE TABLE characters(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers(
  id SERIAL8 PRIMARY KEY,
  hilt_metal VARCHAR(255) NOT NULL,
  colour VARCHAR(255) NOT NULL, --255 is the maximum number of characters that can fit on a byte
  character_id INT8 REFERENCES characters(id)
);

INSERT INTO characters(name, darkside, age)
VALUES ('Jar Jar Binks', false, 27);



INSERT INTO lightsabers(colour, hilt_metal, character_id)
VALUES ('green', 'palladium', 1);
INSERT INTO lightsabers(colour, hilt_metal, character_id)
VALUES ('red', 'gold', 1);
INSERT INTO lightsabers(colour, hilt_metal)
VALUES ('purble', 'chrome');



-- SELECT * FROM lightsabers;

--
-- -- INSERT INTO
-- -- table_name(column_name1,
-- -- column_name2) VALUES (value1,
-- -- value2);
--
-- values will insert in order of the columns above into table_name

-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Obi-Wan Kenobi', false, 27);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Anakin Skywalker', false, 19);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Darth Maul', True, 32);
-- INSERT INTO characters(name, darkside)
-- VALUES ('Yoda', False);

-- --
-- -- SELECT * from characters;
-- -- SELECT name from characters;
-- -- SELECT name, age from characters;
-- -- SELECT COUNT(*) from characters;
--
-- -- UPDATE table_name SET column_name1
-- -- = new_value1;
-- --
-- -- UPDATE characters SET darkside = true WHERE name = 'Anakin Skywalker';
--
-- -- UPDATE table_name SET(column_name1, column_name2) = (new_value1, new_value2)
-- -- WHERE column_name = target_value -- this updates multiple fields
--
-- UPDATE characters SET (darkside, name) =
-- (true, 'Darth Vader') WHERE name = 'Anakin Skywalker';
--
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Luke Skywalker', False, 17);
--
-- UPDATE characters SET age = 65 WHERE name = 'Obi-Wan Kenobi';
--
-- DELETE from characters where name = 'Darth Maul';
--
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Stormtrooper', True, 25);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Stormtrooper', True, 25);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Stormtrooper', True, 25);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Stormtrooper', True, 25);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Stormtrooper', True, 25);
--
--
-- UPDATE characters SET age = 26 WHERE id = 9;
--
-- SELECT * from characters;
