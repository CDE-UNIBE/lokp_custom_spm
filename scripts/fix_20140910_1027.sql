/*
This is a SQL fix used to prevent data collision after a bug
with the moderation interface.
*/
-- "Review" Activity d59ca09a-02a6-4eb4-9e2d-83a63f894ac4
-- Set version 2 to "inactive"
UPDATE data.activities SET fk_status = 3 WHERE id = 70;
-- Set version 5 to "active"
UPDATE data.activities SET fk_status = 2 WHERE id = 133;

-- "Review" Stakeholder d9c9f2af-8d6f-4890-9f21-66bd730fa191
-- Set version 2 to "inactive"
UPDATE data.stakeholders SET fk_status = 3 WHERE id = 149;
-- Set version 6 to "active"
UPDATE data.stakeholders SET fk_status = 2 WHERE id = 160;

-- "Review" Stakeholder 5bd9f1cf-9b3b-4382-8865-961364b3f751
-- Set version 6 to "inactive"
UPDATE data.stakeholders SET fk_status = 3 WHERE id = 148;
-- Set version 8 to "active"
UPDATE data.stakeholders SET fk_status = 2 WHERE id = 247;
