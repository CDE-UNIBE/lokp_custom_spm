-- Main focus of activity (key 83)
-- Update value of 184 (Socio-Economic to Economic)
UPDATE data.a_values SET "value" = 'Economic' WHERE id = 184;

-- Update order of 186 (Research)
UPDATE data.a_values SET "order" = 9 WHERE id = 186;

-- Replace 39 (deleted) with Communication, change key, add order
UPDATE data.a_values SET "value" = 'Communication', fk_a_key = 83, "order" = 8 WHERE id = 39;

-- Replace 42 (deleted) with Infrastructure, change key, add order
UPDATE data.a_values SET "value" = 'Infrastructure', fk_a_key = 83, "order" = 10 WHERE id = 42;


-- Detailed focus of activity (key 2)
-- Update value of 5 (Livestock to Livestock (long cycle) 
UPDATE data.a_values SET "value" = 'Livestock (long cycle)' WHERE id = 5;

-- Replace 57 (deleted) with Livestock (short cycle), change key, add order
UPDATE data.a_values SET "value" = 'Livestock (short cycle)', fk_a_key = 2, "order" = 6 WHERE id = 57;

-- Update order of 6 (Marine fisheries)
UPDATE data.a_values SET "order" = 7 WHERE id = 6;

-- Update order of 7 (Freshwater fisheries)
UPDATE data.a_values SET "order" = 8 WHERE id = 7;

-- Update order of 8 (Tourism)
UPDATE data.a_values SET "order" = 9 WHERE id = 8;

-- Replace 11 (deleted) with Ecotourism, change order
UPDATE data.a_values SET "value" = 'Ecotourism', "order" = 10 WHERE id = 11;

-- Change value of 9 (Mining to Industrial mining), change order
UPDATE data.a_values SET "value" = 'Industrial mining', "order" = 11 WHERE id = 9;

-- Add new 187 (Artisanal Mining)
--INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
--  (187, NULL, 1, 'Artisanal Mining', 2, 12)
--;

-- Update order of 10 (Education)
UPDATE data.a_values SET "order" = 13 WHERE id = 10;

-- Update order of 12 (Governance)
UPDATE data.a_values SET "order" = 14 WHERE id = 12;

-- Update order of 13 (Land tenure)
UPDATE data.a_values SET "order" = 15 WHERE id = 13;

-- Update order of 14 (Resesarch)
UPDATE data.a_values SET "order" = 16 WHERE id = 14;

-- Update order of 15 (Cultural)
UPDATE data.a_values SET "order" = 17 WHERE id = 15;

-- Update order of 16 (Communication)
UPDATE data.a_values SET "order" = 18 WHERE id = 16;

-- Update order of 17 (Financing)
UPDATE data.a_values SET "order" = 19 WHERE id = 17;

-- Add new 188 (Irrigation infrastructure construction)
--INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
--  (188, NULL, 1, 'Irrigation infrastructure construction', 2, 20)
--;

-- Add new 189 (Road infrastructure construction)
--INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
--  (189, NULL, 1, 'Road infrastructure construction', 2, 21)
--;

-- Update order of 18 (Other)
UPDATE data.a_values SET "order" = 22 WHERE id = 18;

-- Update sequence
SELECT setval('data.a_values_id_seq', 189, true);

-- Add new Categories
--INSERT INTO data.categories(id, name, type, fk_language, description, fk_category) VALUES
  --(25, 'Why Madagascar?', 'stakeholders', 1, NULL, NULL),
  --(26, 'External factors', 'stakeholders', 1, NULL, NULL)
--;
SELECT setval('data.categories_id_seq', 26, true);