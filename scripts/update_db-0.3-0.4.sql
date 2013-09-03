/*

    Update an existing and populated (with keys and values) database of version
    0.3 to match the configuration of version 0.4.

*/

UPDATE data.sh_keys SET validator = '[1,5]' WHERE id = 16;
UPDATE data.sh_keys SET validator = '[0]' WHERE id in (8, 9, 10);
UPDATE data.sh_keys SET validator = '[1900]' WHERE ID = 7;