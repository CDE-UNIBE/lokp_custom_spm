-- Update the french translation of A_Value 165 to "Niveau régional et communal". Do an INSERT since the translation does not yet exist.
INSERT INTO data.a_values(fk_a_value, fk_language, value, fk_a_key, "order")
    VALUES (165, 2, 'Niveau régional et communal', NULL, NULL);
