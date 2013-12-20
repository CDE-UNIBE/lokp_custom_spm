-- Replace 8 (deleted) with Water, change key, update order
/*
  ACTIVITIES
*/

UPDATE data.a_values SET "value" = 'Water', fk_a_key = 83, "order" = 11 WHERE id = 8;


-- Add new 190 (DRR or emergency relief)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (190, NULL, 1, 'DRR or emergency relief', 83, 12)
;

-- Add new 191 (Water supply and management)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (191, NULL, 1, 'Water supply and management', 2, 21)
;

-- Add new 192 (Sanitation)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (192, NULL, 1, 'Sanitation', 2, 22)
;

-- Add new 193 (Disaster risk reduction)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (193, NULL, 1, 'Disaster risk reduction', 2, 23)
;

-- Add new 194 (Emergency relief)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (194, NULL, 1, 'Emergency relief', 2, 24)
;

-- Update order of 11 (Ecotourism)
UPDATE data.a_values SET "order" = 9 WHERE id = 11;

-- Update order of 9 (Industrial mining)
UPDATE data.a_values SET "order" = 10 WHERE id = 9;

-- Update order of 187 (Artisanal mining)
UPDATE data.a_values SET "order" = 11 WHERE id = 187;

-- Update order of 10 (Education)
UPDATE data.a_values SET "order" = 12 WHERE id = 10;

-- Update order of 12 (Governance)
UPDATE data.a_values SET "order" = 13 WHERE id = 12;

-- Update order of 13 (Land tenure)
UPDATE data.a_values SET "order" = 14 WHERE id = 13;

-- Update order of 14 (Research)
UPDATE data.a_values SET "order" = 15 WHERE id = 14;

-- Update order of 15 (Cultural)
UPDATE data.a_values SET "order" = 16 WHERE id = 15;

-- Update order of 16 (Communication)
UPDATE data.a_values SET "order" = 17 WHERE id = 16;

-- Update order of 17 (Financing)
UPDATE data.a_values SET "order" = 18 WHERE id = 17;

-- Update order of 188 (Irrigation infrastructure construction)
UPDATE data.a_values SET "order" = 19 WHERE id = 188;

-- Update order of 189 (Road infrastructure construction)
UPDATE data.a_values SET "order" = 20 WHERE id = 189;

-- Update order of 18 (Other)
UPDATE data.a_values SET "order" = 25 WHERE id = 18;


-- Add new 195 (Settlements)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (195, NULL, 1, 'Settlements', 18, 13)
;

-- Update order of 123 (Other)
UPDATE data.a_values SET "order" = 14 WHERE id = 123;


-- Add new 196 (Sugarcane)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (196, NULL, 1, 'Sugarcane', 71, 6)
;

-- Add new 197 (Honey)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (197, NULL, 1, 'Honey', 71, 12)
;

-- Add new 198 (Poultry)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (198, NULL, 1, 'Poultry', 71, 13)
;

-- Add new 199 (Cattle)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (199, NULL, 1, 'Cattle', 71, 14)
;

-- Add new 200 (Porc)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (200, NULL, 1, 'Porc', 71, 15)
;

-- Replace 146 (deleted) with Coffee, update order
UPDATE data.a_values SET "value" = 'Coffee', "order" = 4 WHERE id = 146;

-- Replace 150 (deleted) with Cocoa, update order
UPDATE data.a_values SET "value" = 'Cocoa', "order" = 5 WHERE id = 150;

-- Update order of 145 (Litchi)
UPDATE data.a_values SET "order" = 7 WHERE id = 145;

-- Update order of 147 (Spices)
UPDATE data.a_values SET "order" = 8 WHERE id = 147;

-- Update order of 148 (Silk)
UPDATE data.a_values SET "order" = 9 WHERE id = 148;

-- Update order of 149 (Banana)
UPDATE data.a_values SET "order" = 10 WHERE id = 149;

-- Update order of 151 (Pineapple)
UPDATE data.a_values SET "order" = 11 WHERE id = 151;

-- Update order of 152 (Other fruits)
UPDATE data.a_values SET "order" = 16 WHERE id = 152;

-- Update order of 153 (Other vegetables)
UPDATE data.a_values SET "order" = 17 WHERE id = 153;


-- Add new 201 (Raffia)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (201, NULL, 1, 'Raffia', 73, 3)
;

-- Add new 202 (Gems)
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (202, NULL, 1, 'Gems', 73, 4)
;

-- Update order of 160 (Metals)
UPDATE data.a_values SET "order" = 5 WHERE id = 160;

-- Update order of 161 (Tourism)
UPDATE data.a_values SET "order" = 6 WHERE id = 161;

-- Update order of 162 (Other)
UPDATE data.a_values SET "order" = 7 WHERE id = 162;


SELECT setval('data.a_values_id_seq', 202, true);

/*
  STAKEHOLDERS
*/

-- Update 254: Livestock (long cycle)
UPDATE data.sh_values SET "value" = 'Livestock (long cycle)' WHERE id = 254;

-- Replace 257 (deleted) with Livestock (short cycle), update order
UPDATE data.sh_values SET "value" = 'Livestock (short cycle)', "order" = 6 WHERE id = 257;

-- Update order of 255 (Marine fisheries)
UPDATE data.sh_values SET "order" = 7 WHERE id = 255;

-- Update order of 256 (Freshwater fisheries)
UPDATE data.sh_values SET "order" = 8 WHERE id = 256;

-- Update 258: Ecotourism
UPDATE data.sh_values SET "value" = 'Ecotourism' WHERE id = 258;

-- Update 259: Industrial mining
UPDATE data.sh_values SET "value" = 'Industrial mining' WHERE id = 259;

-- Add new 308 (Artisanal mining)
INSERT INTO data.sh_values (id, fk_sh_value, fk_language, value, fk_sh_key, "order") VALUES
  (308, NULL, 1, 'Artisanal mining', 3, 11)
;

-- Update order of 260 (Education)
UPDATE data.sh_values SET "order" = 12 WHERE id = 260;

-- Update order of 261 (Governance)
UPDATE data.sh_values SET "order" = 13 WHERE id = 261;

-- Update order of 262 (Land tenure)
UPDATE data.sh_values SET "order" = 14 WHERE id = 262;

-- Replace 263 with Research, update order
UPDATE data.sh_values SET "value" = 'Research', "order" = 15 WHERE id = 263;

-- Update order of 264 (Cultural)
UPDATE data.sh_values SET "order" = 16 WHERE id = 264;

-- Update order of 265 (Communication)
UPDATE data.sh_values SET "order" = 17 WHERE id = 265;

-- Update order of 266 (Financing)
UPDATE data.sh_values SET "order" = 18 WHERE id = 266;

-- Add new 309 (Irrigation infrastructure construction)
INSERT INTO data.sh_values (id, fk_sh_value, fk_language, value, fk_sh_key, "order") VALUES
  (309, NULL, 1, 'Irrigation infrastructure construction', 3, 19)
;

-- Add new 310 (Road infrastructure construction)
INSERT INTO data.sh_values (id, fk_sh_value, fk_language, value, fk_sh_key, "order") VALUES
  (310, NULL, 1, 'Road infrastructure construction', 3, 20)
;

-- Add new 311 (Water supply and management)
INSERT INTO data.sh_values (id, fk_sh_value, fk_language, value, fk_sh_key, "order") VALUES
  (311, NULL, 1, 'Water supply and management', 3, 21)
;

-- Add new 312 (Sanitation)
INSERT INTO data.sh_values (id, fk_sh_value, fk_language, value, fk_sh_key, "order") VALUES
  (312, NULL, 1, 'Sanitation', 3, 22)
;

-- Add new 313 (Disaster risk reduction)
INSERT INTO data.sh_values (id, fk_sh_value, fk_language, value, fk_sh_key, "order") VALUES
  (313, NULL, 1, 'Disaster risk reduction', 3, 23)
;

-- Add new 314 (Emergency relief)
INSERT INTO data.sh_values (id, fk_sh_value, fk_language, value, fk_sh_key, "order") VALUES
  (314, NULL, 1, 'Emergency relief', 3, 24)
;

-- Update order of 267 (Other)
UPDATE data.sh_values SET "order" = 25 WHERE id = 267;


SELECT setval('data.sh_values_id_seq', 314, true);
