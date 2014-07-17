-- Add a new Subcategory for Involvements from Stakeholder side (used only in
-- details form.
INSERT INTO data.categories (id, name, type, fk_language, description, fk_category) VALUES
  (52, 'Involvements', 'stakeholders', 1, NULL, NULL),
  (53, 'Engagement', NULL, 2, NULL, 52)
;
