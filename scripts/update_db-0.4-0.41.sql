/*

    Update an existing and populated (with keys and values) database of version
    0.4 to match the configuration of version 0.41.

*/

UPDATE data.a_values SET fk_a_key = 85 WHERE fk_a_key = 2 AND id > 150;

