/*

    Update an existing and populated (with keys and values) database of version
    0.2 to match the configuration of version 0.3.

*/

UPDATE data.a_keys SET validator = '[1,5]' WHERE id = 27;
UPDATE data.a_keys SET validator = '[0]' WHERE id IN (11, 12, 24, 25, 26);