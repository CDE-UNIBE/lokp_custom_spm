-- f6b08231-885f-4cbc-a825-9fc77333ac99:
-- Set version 2 to rejected
UPDATE data.activities SET fk_status = 5 WHERE id = 85;
-- Set version 1 to pending
UPDATE data.activities SET fk_status = 1 WHERE id = 84;

-- 85952186-0746-4918-a9e4-82087bf542b1
-- Set version 3 to rejected
UPDATE data.activities SET fk_status = 5 where id = 43;

-- 4217bbc7-55bf-4ee0-a1a8-3b7a0883e363
-- Set version 3 to rejected
UPDATE data.activities SET fk_status = 5 WHERE id = 99;
-- Set version 2 to pending
UPDATE data.activities SET fk_status = 1 WHERE id = 98;

-- 3881459f-300c-4e76-93ff-c9d277caa2b4
-- Set version 2 to rejected
UPDATE data.activities SET fk_status = 5 WHERE id = 100;
-- Set version 1 to pending
UPDATE data.activities SET fk_status = 1 WHERE id = 77;

-- a4173c9f-9585-4de6-954b-aeee3df3c082
-- Set version 2 to rejected
UPDATE data.activities SET fk_status = 5 WHERE id = 68;
-- Set version 1 to pending
UPDATE data.activities SET fk_status = 1 WHERE id = 66;

-- bbb04e4f-d864-4636-a91b-17f6cb52739b
-- Set version 2 to rejected
UPDATE data.activities SET fk_status = 5 WHERE id = 96;
-- Set version 1 to pending
UPDATE data.activities SET fk_status = 1 WHERE id = 95;

-- 66fe5d95-5ed6-4391-b3c8-d78cbb220dd4
-- Set version 2 to rejected
UPDATE data.activities SET fk_status = 5 WHERE id = 104;
-- Set version 1 to pending
UPDATE data.activities SET fk_status = 1 WHERE id = 83;

-- 3e379bfd-6d8d-4fd6-9cad-41475b691fd8
-- Set version 3 to rejected
UPDATE data.activities SET fk_status = 5 WHERE id = 102;
-- Set version 2 to rejected
UPDATE data.activities SET fk_status = 5 WHERE id = 90;
-- Set version 1 to pending
UPDATE data.activities SET fk_status = 1 WHERE id = 89;
