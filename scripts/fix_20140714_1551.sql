/*
This is a SQL fix used to prevent data collision after a bug
with the moderation interface.
*/
-- Delete Taggroup (and its Tag) with old name
UPDATE data.a_tag_groups 
 SET fk_a_tag = NULL 
 WHERE id = 2897;
DELETE FROM data.a_tags
 WHERE id = 3202;
DELETE FROM data.a_tag_groups
 WHERE id = 2897;
-- Set Maintag of Taggroup with new name
UPDATE data.a_tag_groups
 SET fk_a_tag = 3221
 WHERE id = 2916;
