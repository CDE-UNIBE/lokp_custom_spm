/*

  *** IMPORTANT *** Use this script only to populate an *EMPTY* (after running
    lmkp_populate) database!

  This script will populate the following tables:
  - Categories
  - A_Keys
  - A_Values
  - SH_Keys
  - SH_Values
  - Profiles (Madagascar)
  - Stakeholder Roles

  Last update: 2013-09-03 08:20
*/

-- CATEGORIES
INSERT INTO data.categories(id, name, type, fk_language, description, fk_category) VALUES
  (1, 'Activity Info', 'activities', 1, NULL, NULL),
  (2, 'Spatial Data', 'activities', 1, NULL, NULL),
  (3, 'Funding', 'activities', 1, NULL, NULL),
  (4, 'Focus', 'activities', 1, NULL, NULL),
  (5, 'Ecosystem Services', 'activities', 1, NULL, NULL),
  (6, 'Produce', 'activities', 1, NULL, NULL),
  (7, 'Land rights', 'activities', 1, NULL, NULL),
  (8, 'Population', 'activities', 1, NULL, NULL),
  (9, 'Stakeholder Info', 'stakeholders', 1, NULL, NULL),
  (10, 'Involvements', 'activities', 1, NULL, NULL)
;
SELECT setval('data.categories_id_seq', 10, true);

-- A_KEYS
INSERT INTO data.a_keys(id, fk_a_key, fk_language, key, type, helptext, description, validator) VALUES
  (1, NULL, NULL, 'Name of activity', 'String', NULL, NULL, NULL),
  (2, NULL, NULL, 'State of advancement', 'Dropdown', NULL, NULL, NULL),
  (3, NULL, NULL, 'Start date', 'Date', NULL, NULL, NULL),
  (4, NULL, NULL, 'End date', 'Date', NULL, NULL, NULL),
  (5, NULL, NULL, 'Data source', 'Dropdown', NULL, NULL, NULL),
  (6, NULL, NULL, 'Spatial accuracy', 'Dropdown', NULL, NULL, NULL),
  (7, NULL, NULL, 'District', 'Checkbox', NULL, NULL, NULL),
  (8, NULL, NULL, 'Commune', 'Checkbox', NULL, NULL, NULL),
  (9, NULL, NULL, 'Fokotany', 'String', NULL, NULL, NULL),
  (10, NULL, NULL, 'Donor', 'String', NULL, NULL, NULL),
  (11, NULL, NULL, 'Total project budget', 'Number', NULL, NULL, '[0]'),
  (12, NULL, NULL, 'Average annual budget', 'Number', NULL, NULL, '[0]'),
  (13, NULL, NULL, 'Goals', 'String', NULL, NULL, NULL),
  (14, NULL, NULL, 'Land use', 'Checkbox', NULL, NULL, NULL),
  (15, NULL, NULL, 'Level of intervention', 'Dropdown', NULL, NULL, NULL),
  (16, NULL, NULL, 'Why Madagascar', 'Dropdown', NULL, NULL, NULL),
  (17, NULL, NULL, 'Why this exact location to implement this activity', 'Dropdown', NULL, NULL, NULL),
  (18, NULL, NULL, 'Provisioning ecosystem services', 'Dropdown', NULL, NULL, NULL),
  (19, NULL, NULL, 'Regulating ecosystem services', 'Dropdown', NULL, NULL, NULL),
  (20, NULL, NULL, 'Cultural ecosystem services', 'Dropdown', NULL, NULL, NULL),
  (21, NULL, NULL, 'Agricultural product', 'Dropdown', NULL, NULL, NULL),
  (22, NULL, NULL, 'Land owner before', 'Dropdown', NULL, NULL, NULL),
  (23, NULL, NULL, 'Land owner now', 'Dropdown', NULL, NULL, NULL),
  (24, NULL, NULL, 'Number of local population involved', 'Integer', NULL, NULL, '[0]'),
  (25, NULL, NULL, 'Number of permanent employment generated', 'Integer', NULL, NULL, '[0]'),
  (26, NULL, NULL, 'Number of temporary employment generated', 'Integer', NULL, NULL, '[0]'),
  (27, NULL, NULL, 'Ranking', 'Integer', NULL, NULL, '[1,5]'),
  (28, NULL, NULL, 'Destination', 'Dropdown', NULL, NULL, NULL),
  (29, 1, 1, 'Name of activity', NULL, NULL, NULL, NULL),
  (30, 2, 1, 'State of advancement', NULL, NULL, NULL, NULL),
  (31, 3, 1, 'Start date', NULL, NULL, NULL, NULL),
  (32, 4, 1, 'End date', NULL, NULL, NULL, NULL),
  (33, 5, 1, 'Data source', NULL, NULL, NULL, NULL),
  (34, 6, 1, 'Spatial accuracy', NULL, NULL, NULL, NULL),
  (35, 7, 1, 'District', NULL, NULL, NULL, NULL),
  (36, 8, 1, 'Commune', NULL, NULL, NULL, NULL),
  (37, 9, 1, 'Fokotany', NULL, NULL, NULL, NULL),
  (38, 10, 1, 'Donor', NULL, NULL, NULL, NULL),
  (39, 11, 1, 'Total project budget in USD', NULL, 'In USD', NULL, NULL),
  (40, 12, 1, 'Average annual budget in USD', NULL, 'In USD', NULL, NULL),
  (41, 13, 1, 'Goals', NULL, NULL, NULL, NULL),
  (42, 14, 1, 'Land use', NULL, NULL, NULL, NULL),
  (43, 15, 1, 'Level of intervention', NULL, NULL, NULL, NULL),
  (44, 16, 1, 'Why Madagascar', NULL, NULL, NULL, NULL),
  (45, 17, 1, 'Why this exact location to implement this activity', NULL, NULL, NULL, NULL),
  (46, 18, 1, 'Provisioning ecosystem services', NULL, NULL, NULL, NULL),
  (47, 19, 1, 'Regulating ecosystem services', NULL, NULL, NULL, NULL),
  (48, 20, 1, 'Cultural ecosystem services', NULL, NULL, NULL, NULL),
  (49, 21, 1, 'Agricultural product', NULL, NULL, NULL, NULL),
  (50, 22, 1, 'Land owner before', NULL, NULL, NULL, NULL),
  (51, 23, 1, 'Land owner now', NULL, NULL, NULL, NULL),
  (52, 24, 1, 'Number of local population involved', NULL, NULL, NULL, NULL),
  (53, 25, 1, 'Number of permanent employment generated', NULL, NULL, NULL, NULL),
  (54, 26, 1, 'Number of temporary employment generated', NULL, NULL, NULL, NULL),
  (55, 27, 1, 'Ranking', NULL, '(1-5)', NULL, NULL),
  (56, 28, 1, 'Destination', NULL, NULL, NULL, NULL)
;
SELECT setval('data.a_keys_id_seq', 56, true);

-- A_VALUES
INSERT INTO data.a_values (id, fk_a_value, fk_language, value, fk_a_key, "order") VALUES
  (1, NULL, 1, 'Finalised', 2, NULL),
  (2, NULL, 1, 'Running', 2, NULL),
  (3, NULL, 1, 'Foreseen', 2, NULL),
  (4, NULL, 1, 'Interview', 5, NULL),
  (5, NULL, 1, 'Research paper', 5, NULL),
  (6, NULL, 1, 'Media article', 5, NULL),
  (7, NULL, 1, 'Internet', 5, NULL),
  (8, NULL, 1, 'Personal information', 5, NULL),
  (9, NULL, 1, 'Other', 5, NULL),
  (10, NULL, 1, 'District', 6, NULL),
  (11, NULL, 1, 'Commune', 6, NULL),
  (12, NULL, 1, 'Fokotany', 6, NULL),
  (13, NULL, 1, 'Andapa', 7, NULL),
  (14, NULL, 1, 'Antalaha', 7, NULL),
  (15, NULL, 1, 'Fenoarivo-Est', 7, NULL),
  (16, NULL, 1, 'Mananara Avaratra', 7, NULL),
  (17, NULL, 1, 'Maroantsetra', 7, NULL),
  (18, NULL, 1, 'Sainte-Marie', 7, NULL),
  (19, NULL, 1, 'Soanierana Ivongo', 7, NULL),
  (20, NULL, 1, 'Vavatenina', 7, NULL),
  (21, NULL, 1, 'Ambahoabe', 8, NULL),
  (22, NULL, 1, 'Ambalabe', 8, NULL),
  (23, NULL, 1, 'Ambanizana', 8, NULL),
  (24, NULL, 1, 'Ambanizana', 8, NULL),
  (25, NULL, 1, 'Ambatoaranana Tsaratampona', 8, NULL),
  (26, NULL, 1, 'Ambatoharanana', 8, NULL),
  (27, NULL, 1, 'Ambatoharanana', 8, NULL),
  (28, NULL, 1, 'Ambinanitelo', 8, NULL),
  (29, NULL, 1, 'Ambodiampana', 8, NULL),
  (30, NULL, 1, 'Ambodiampana', 8, NULL),
  (31, NULL, 1, 'Ambodimanga', 8, NULL),
  (32, NULL, 1, 'Ambodimanga II', 8, NULL),
  (33, NULL, 1, 'Ambodimanga Rantabe', 8, NULL),
  (34, NULL, 1, 'Ambodimangavalo', 8, NULL),
  (35, NULL, 1, 'Ambodivoanio', 8, NULL),
  (36, NULL, 1, 'Ambohibe', 8, NULL),
  (37, NULL, 1, 'Ambohibe', 8, NULL),
  (38, NULL, 1, 'Ambohitralalana', 8, NULL),
  (39, NULL, 1, 'Ampanavoana', 8, NULL),
  (40, NULL, 1, 'Ampasimazava', 8, NULL),
  (41, NULL, 1, 'Ampasimbe Manantsatrana', 8, NULL),
  (42, NULL, 1, 'Ampasina_Maningory', 8, NULL),
  (43, NULL, 1, 'Anandrivola', 8, NULL),
  (44, NULL, 1, 'Andapafito', 8, NULL),
  (45, NULL, 1, 'Andasibe', 8, NULL),
  (46, NULL, 1, 'Andasibe', 8, NULL),
  (47, NULL, 1, 'Andranofotsy', 8, NULL),
  (48, NULL, 1, 'Androndrona_Anava', 8, NULL),
  (49, NULL, 1, 'Anjahambe', 8, NULL),
  (50, NULL, 1, 'Anjahana', 8, NULL),
  (51, NULL, 1, 'Anjanazana Ankadimbazaha', 8, NULL),
  (52, NULL, 1, 'Anjanazana Ankadimbazaha', 8, NULL),
  (53, NULL, 1, 'Ankofa', 8, NULL),
  (54, NULL, 1, 'Ankofabe', 8, NULL),
  (55, NULL, 1, 'Antakotako', 8, NULL),
  (56, NULL, 1, 'Antalaha', 8, NULL),
  (57, NULL, 1, 'Antanambaobe', 8, NULL),
  (58, NULL, 1, 'Antanambe', 8, NULL),
  (59, NULL, 1, 'Antananivo', 8, NULL),
  (60, NULL, 1, 'Antanifotsy', 8, NULL),
  (61, NULL, 1, 'Antenina', 8, NULL),
  (62, NULL, 1, 'Antombana', 8, NULL),
  (63, NULL, 1, 'Antsiatsiaka', 8, NULL),
  (64, NULL, 1, 'Antsirabe-Sahatany', 8, NULL),
  (65, NULL, 1, 'Fenoarivo Atsinanana', 8, NULL),
  (66, NULL, 1, 'Fotsialanana', 8, NULL),
  (67, NULL, 1, 'Imorona', 8, NULL),
  (68, NULL, 1, 'Ivoloina', 8, NULL),
  (69, NULL, 1, 'Lonkintsy', 8, NULL),
  (70, NULL, 1, 'Mahalevona', 8, NULL),
  (71, NULL, 1, 'Mahambo', 8, NULL),
  (72, NULL, 1, 'Mahanoro', 8, NULL),
  (73, NULL, 1, 'Manambolo', 8, NULL),
  (74, NULL, 1, 'Manambolosy', 8, NULL),
  (75, NULL, 1, 'Mananara_Avaratra', 8, NULL),
  (76, NULL, 1, 'Manompana', 8, NULL),
  (77, NULL, 1, 'Maroantsetra', 8, NULL),
  (78, NULL, 1, 'Marofinaritra', 8, NULL),
  (79, NULL, 1, 'Maromitety', 8, NULL),
  (80, NULL, 1, 'Miarinarivo', 8, NULL),
  (81, NULL, 1, 'Miaromivalana I', 8, NULL),
  (82, NULL, 1, 'Morafeno', 8, NULL),
  (83, NULL, 1, 'Rantabe', 8, NULL),
  (84, NULL, 1, 'Sahatavy', 8, NULL),
  (85, NULL, 1, 'Sandrakatsy', 8, NULL),
  (86, NULL, 1, 'Saranambana', 8, NULL),
  (87, NULL, 1, 'Saromaona', 8, NULL),
  (88, NULL, 1, 'Soanierana-Ivongo', 8, NULL),
  (89, NULL, 1, 'Tanibe', 8, NULL),
  (90, NULL, 1, 'Vanono', 8, NULL),
  (91, NULL, 1, 'Vavatenina', 8, NULL),
  (92, NULL, 1, 'Vinanivao', 8, NULL),
  (93, NULL, 1, 'Vohilengo', 8, NULL),
  (94, NULL, 1, 'Vohipeno', 8, NULL),
  (95, NULL, 1, 'Shifting cultivation (tavy)', 14, NULL),
  (96, NULL, 1, 'Irrigated rice production for commercial use', 14, NULL),
  (97, NULL, 1, 'Irrigated rice production for subsistence use', 14, NULL),
  (98, NULL, 1, 'Agroforestry (or tree crops) for commercial use ', 14, NULL),
  (99, NULL, 1, 'Agroforestry (or tree crops) for subsistence use', 14, NULL),
  (100, NULL, 1, 'Pasture', 14, NULL),
  (101, NULL, 1, 'Homegardens (vegetable production) for commercial use', 14, NULL),
  (102, NULL, 1, 'Homegardens (vegetable production) for subsistence use', 14, NULL),
  (103, NULL, 1, 'Forestry for commercial use', 14, NULL),
  (104, NULL, 1, 'Forestry for subsistence use', 14, NULL),
  (105, NULL, 1, 'Fisheries', 14, NULL),
  (106, NULL, 1, 'Household', 15, NULL),
  (107, NULL, 1, 'Group', 15, NULL),
  (108, NULL, 1, 'Village', 15, NULL),
  (109, NULL, 1, 'Commune', 15, NULL),
  (110, NULL, 1, 'District', 15, NULL),
  (111, NULL, 1, 'Region', 15, NULL),
  (112, NULL, 1, 'National', 15, NULL),
  (113, NULL, 1, 'Because somebody in the organization had personal ties to Madagascar', 16, NULL),
  (114, NULL, 1, 'Because Madagascar is a biodiversity hotspot', 16, NULL),
  (115, NULL, 1, 'Because the population in Madagascar is very poor', 16, NULL),
  (116, NULL, 1, 'Because it is a francophone country', 16, NULL),
  (117, NULL, 1, 'Because public attention on Madagascar is higher than on other countries', 16, NULL),
  (118, NULL, 1, 'Because the organization home countries politics ', 16, NULL),
  (119, NULL, 1, 'Because the organization had ties to Madagascar from previous activities', 16, NULL),
  (120, NULL, 1, 'Because it is a (potential) prime tourism destination', 16, NULL),
  (121, NULL, 1, 'Because nobody else was undertaking this activity', 16, NULL),
  (122, NULL, 1, 'Because the organization had favourable contacts in the country', 16, NULL),
  (123, NULL, 1, 'Because nobody else was working in this area in our field of interest', 17, NULL),
  (124, NULL, 1, 'Because the location is easily accessible', 17, NULL),
  (125, NULL, 1, 'Because the need for this activity is bigger than elsewhere in the country', 17, NULL),
  (126, NULL, 1, 'Because there was a local demand for our activity', 17, NULL),
  (127, NULL, 1, 'Because there was a national demand for our activity', 17, NULL),
  (128, NULL, 1, 'Because somebody in the organization had personal ties to this location', 17, NULL),
  (129, NULL, 1, 'Cultivated crops', 18, NULL),
  (130, NULL, 1, 'Reared animals and their outputs', 18, NULL),
  (131, NULL, 1, 'Wild plants and their outputs', 18, NULL),
  (132, NULL, 1, 'Wild animals and their outputs', 18, NULL),
  (133, NULL, 1, 'Plants from in-situ aquaculture', 18, NULL),
  (134, NULL, 1, 'Animals from in-situ aquaculture', 18, NULL),
  (135, NULL, 1, 'Surface water for drinking', 18, NULL),
  (136, NULL, 1, 'Ground water for drinking', 18, NULL),
  (137, NULL, 1, 'Fibres and other materials from plants, or animals for direct use or processing', 18, NULL),
  (138, NULL, 1, 'Materials from plants, algae and animals for agricultural use', 18, NULL),
  (139, NULL, 1, 'Genetic materials from all biota', 18, NULL),
  (140, NULL, 1, 'Surface water for non-drinking purposes', 18, NULL),
  (141, NULL, 1, 'Ground water for non-drinking purposes', 18, NULL),
  (142, NULL, 1, 'Plant-based resources', 18, NULL),
  (143, NULL, 1, 'Animal-based resources', 18, NULL),
  (144, NULL, 1, 'Bio-remediation by plants and animals', 19, NULL),
  (145, NULL, 1, 'Filtration/sequestration/storage/accumulation ', 19, NULL),
  (146, NULL, 1, 'Filtration/sequestration/storage/accumulation by ecosystems ', 19, NULL),
  (147, NULL, 1, 'Mass stabilisation and control of erosion rates', 19, NULL),
  (148, NULL, 1, 'Buffering and attenuation of mass flows', 19, NULL),
  (149, NULL, 1, 'Hydrological cycle and water flow maintenance', 19, NULL),
  (150, NULL, 1, 'Flood protection', 19, NULL),
  (151, NULL, 1, 'Storm protection', 19, NULL),
  (152, NULL, 1, 'Pollination and seed dispersal', 19, NULL),
  (153, NULL, 1, 'Maintaining nursery populations and habitats', 19, NULL),
  (154, NULL, 1, 'Pest control', 19, NULL),
  (155, NULL, 1, 'Disease control', 19, NULL),
  (156, NULL, 1, 'Weathering processes', 19, NULL),
  (157, NULL, 1, 'Decomposition and fixing processes', 19, NULL),
  (158, NULL, 1, 'Chemical condition of freshwaters', 19, NULL),
  (159, NULL, 1, 'Chemical condition of salt waters', 19, NULL),
  (160, NULL, 1, 'Global climate regulation by reduction of greenhouse gas concentrations', 19, NULL),
  (161, NULL, 1, 'Micro and regional climate regulation', 19, NULL),
  (162, NULL, 1, 'Touristic activities ', 20, NULL),
  (163, NULL, 1, 'Scientific', 20, NULL),
  (164, NULL, 1, 'Educational', 20, NULL),
  (165, NULL, 1, 'Heritage, cultural', 20, NULL),
  (166, NULL, 1, 'Entertainment', 20, NULL),
  (167, NULL, 1, 'Aesthetic', 20, NULL),
  (168, NULL, 1, 'Symbolic', 20, NULL),
  (169, NULL, 1, 'Sacred and/or religious', 20, NULL),
  (170, NULL, 1, 'Existence', 20, NULL),
  (171, NULL, 1, 'Bequest value for future generations', 20, NULL),
  (172, NULL, 1, 'Rice', 21, NULL),
  (173, NULL, 1, 'Clove', 21, NULL),
  (174, NULL, 1, 'Vanilla', 21, NULL),
  (175, NULL, 1, 'Litchi', 21, NULL),
  (176, NULL, 1, 'Ginger', 21, NULL),
  (177, NULL, 1, 'Spices', 21, NULL),
  (178, NULL, 1, 'Silk', 21, NULL),
  (179, NULL, 1, 'Banana', 21, NULL),
  (180, NULL, 1, 'Plantain', 21, NULL),
  (181, NULL, 1, 'Pineapple', 21, NULL),
  (182, NULL, 1, 'Other fruits', 21, NULL),
  (183, NULL, 1, 'Other vegetables', 21, NULL),
  (184, NULL, 1, 'Export (International)', 28, NULL),
  (185, NULL, 1, 'Commercialisation (National level)', 28, NULL),
  (186, NULL, 1, 'Commercialisation (Sub-national level)', 28, NULL),
  (187, NULL, 1, 'Domestic use', 28, NULL),
  (188, NULL, 1, 'State', 22, NULL),
  (189, NULL, 1, 'Company', 22, NULL),
  (190, NULL, 1, 'Individual titled', 22, NULL),
  (191, NULL, 1, 'Individual non-titled', 22, NULL),
  (192, NULL, 1, 'Communal / Village', 22, NULL),
  (193, NULL, 1, 'Group', 22, NULL),
  (194, NULL, 1, 'State', 23, NULL),
  (195, NULL, 1, 'Company', 23, NULL),
  (196, NULL, 1, 'Individual titled', 23, NULL),
  (197, NULL, 1, 'Individual non-titled', 23, NULL),
  (198, NULL, 1, 'Communal / Village', 23, NULL),
  (199, NULL, 1, 'Group', 23, NULL)
;
SELECT setval('data.a_values_id_seq', 199, true);

-- SH_KEYS
INSERT INTO data.sh_keys (id, fk_sh_key, fk_language, key, type, helptext, description, validator) VALUES
  (1, NULL, NULL, 'Stakeholder Name', 'String', NULL, NULL, NULL),
  (2, NULL, NULL, 'Website', 'String', NULL, NULL, NULL),
  (3, NULL, NULL, 'Address', 'Text', NULL, NULL, NULL),
  (4, NULL, NULL, 'Phone', 'String', NULL, NULL, NULL),
  (5, NULL, NULL, 'Country of origin', 'Dropdown', NULL, NULL, NULL),
  (6, NULL, NULL, 'Type of organisation', 'Dropdown', NULL, NULL, NULL),
  (7, NULL, NULL, 'Year since involvement in Madagascar', 'Integer', NULL, NULL, '[1900]'),
  (8, NULL, NULL, 'Number of local staff employed', 'Integer', NULL, NULL, '[0]'),
  (9, NULL, NULL, 'Number of expatriate staff employed', 'Integer', NULL, NULL, '[0]'),
  (10, NULL, NULL, 'Approximate annual turnover', 'Dropdown', NULL, NULL, '[0]'),
  (11, NULL, NULL, 'General mission of stakeholder', 'Text', NULL, NULL, NULL),
  (12, NULL, NULL, 'Domain of Natural Resource Management', 'Checkbox', NULL, NULL, NULL),
  (13, NULL, NULL, 'Sector of Natural Resource Management', 'Checkbox', NULL, NULL, NULL),
  (14, NULL, NULL, 'External factors influencing organisations activities in Madagascar', 'Dropdown', NULL, NULL, NULL),
  (15, NULL, NULL, 'Institutions respected', 'Dropdown', NULL, NULL, NULL),
  (16, NULL, NULL, 'Ranking', 'Integer', NULL, NULL, '[1,5]'),
  (17, 1, 1, 'Stakeholder Name', NULL, NULL, NULL, NULL),
  (18, 2, 1, 'Website', NULL, NULL, NULL, NULL),
  (19, 3, 1, 'Address', NULL, NULL, NULL, NULL),
  (20, 4, 1, 'Phone', NULL, NULL, NULL, NULL),
  (21, 5, 1, 'Country of origin', NULL, NULL, NULL, NULL),
  (22, 6, 1, 'Type of organisation', NULL, NULL, NULL, NULL),
  (23, 7, 1, 'Year since involvement in Madagascar', NULL, NULL, NULL, NULL),
  (24, 8, 1, 'Number of local staff employed', NULL, NULL, NULL, NULL),
  (25, 9, 1, 'Number of expatriate staff employed', NULL, NULL, NULL, NULL),
  (26, 10, 1, 'Approximate annual turnover in USD', NULL, 'In USD', NULL, NULL),
  (27, 11, 1, 'General mission of stakeholder', NULL, NULL, NULL, NULL),
  (28, 12, 1, 'Domain of Natural Resource Management', NULL, NULL, NULL, NULL),
  (29, 13, 1, 'Sector of Natural Resource Management', NULL, NULL, NULL, NULL),
  (30, 14, 1, 'External factors influencing organisations activities in Madagascar', NULL, NULL, NULL, NULL),
  (31, 15, 1, 'Institutions respected', NULL, NULL, NULL, NULL),
  (32, 16, 1, 'Ranking', NULL, '(1-5)', NULL, NULL)
;
SELECT setval('data.sh_keys_id_seq', 32, true);

-- SH_VALUES
INSERT INTO data.sh_values (id, fk_sh_value, fk_language, value, fk_sh_key, "order") VALUES
  (1, NULL, 1, 'Afghanistan', 5, NULL),
  (2, NULL, 1, 'Åland Islands', 5, NULL),
  (3, NULL, 1, 'Albania', 5, NULL),
  (4, NULL, 1, 'Algeria', 5, NULL),
  (5, NULL, 1, 'American Samoa', 5, NULL),
  (6, NULL, 1, 'Andorra', 5, NULL),
  (7, NULL, 1, 'Angola', 5, NULL),
  (8, NULL, 1, 'Anguilla', 5, NULL),
  (9, NULL, 1, 'Antarctica', 5, NULL),
  (10, NULL, 1, 'Antigua and Barbuda', 5, NULL),
  (11, NULL, 1, 'Argentina', 5, NULL),
  (12, NULL, 1, 'Armenia', 5, NULL),
  (13, NULL, 1, 'Aruba', 5, NULL),
  (14, NULL, 1, 'Australia', 5, NULL),
  (15, NULL, 1, 'Austria', 5, NULL),
  (16, NULL, 1, 'Azerbaijan', 5, NULL),
  (17, NULL, 1, 'Bahamas', 5, NULL),
  (18, NULL, 1, 'Bahrain', 5, NULL),
  (19, NULL, 1, 'Bangladesh', 5, NULL),
  (20, NULL, 1, 'Barbados', 5, NULL),
  (21, NULL, 1, 'Belarus', 5, NULL),
  (22, NULL, 1, 'Belgium', 5, NULL),
  (23, NULL, 1, 'Belize', 5, NULL),
  (24, NULL, 1, 'Benin', 5, NULL),
  (25, NULL, 1, 'Bermuda', 5, NULL),
  (26, NULL, 1, 'Bhutan', 5, NULL),
  (27, NULL, 1, 'Bolivia, Plurinational State of', 5, NULL),
  (28, NULL, 1, 'Bonaire, Sint Eustatius and Saba', 5, NULL),
  (29, NULL, 1, 'Bosnia and Herzegovina', 5, NULL),
  (30, NULL, 1, 'Botswana', 5, NULL),
  (31, NULL, 1, 'Bouvet Island', 5, NULL),
  (32, NULL, 1, 'Brazil', 5, NULL),
  (33, NULL, 1, 'British Indian Ocean Territory', 5, NULL),
  (34, NULL, 1, 'Virgin Islands, British', 5, NULL),
  (35, NULL, 1, 'Brunei Darussalam', 5, NULL),
  (36, NULL, 1, 'Bulgaria', 5, NULL),
  (37, NULL, 1, 'Burkina Faso', 5, NULL),
  (38, NULL, 1, 'Burundi', 5, NULL),
  (39, NULL, 1, 'Cambodia', 5, NULL),
  (40, NULL, 1, 'Cameroon', 5, NULL),
  (41, NULL, 1, 'Canada', 5, NULL),
  (42, NULL, 1, 'Cape Verde', 5, NULL),
  (43, NULL, 1, 'Cayman Islands', 5, NULL),
  (44, NULL, 1, 'Central African Republic', 5, NULL),
  (45, NULL, 1, 'Chad', 5, NULL),
  (46, NULL, 1, 'Chile', 5, NULL),
  (47, NULL, 1, 'China', 5, NULL),
  (48, NULL, 1, 'Christmas Island', 5, NULL),
  (49, NULL, 1, 'Cocos (Keeling) Islands', 5, NULL),
  (50, NULL, 1, 'Colombia', 5, NULL),
  (51, NULL, 1, 'Comoros', 5, NULL),
  (52, NULL, 1, 'Cook Islands', 5, NULL),
  (53, NULL, 1, 'Costa Rica', 5, NULL),
  (54, NULL, 1, 'Côte d''Ivoire', 5, NULL),
  (55, NULL, 1, 'Croatia', 5, NULL),
  (56, NULL, 1, 'Cuba', 5, NULL),
  (57, NULL, 1, 'Curaçao', 5, NULL),
  (58, NULL, 1, 'Cyprus', 5, NULL),
  (59, NULL, 1, 'Czech Republic', 5, NULL),
  (60, NULL, 1, 'Congo, the Democratic Republic of the', 5, NULL),
  (61, NULL, 1, 'Denmark', 5, NULL),
  (62, NULL, 1, 'Djibouti', 5, NULL),
  (63, NULL, 1, 'Dominica', 5, NULL),
  (64, NULL, 1, 'Dominican Republic', 5, NULL),
  (65, NULL, 1, 'Timor-Leste', 5, NULL),
  (66, NULL, 1, 'Ecuador', 5, NULL),
  (67, NULL, 1, 'Egypt', 5, NULL),
  (68, NULL, 1, 'El Salvador', 5, NULL),
  (69, NULL, 1, 'Equatorial Guinea', 5, NULL),
  (70, NULL, 1, 'Eritrea', 5, NULL),
  (71, NULL, 1, 'Estonia', 5, NULL),
  (72, NULL, 1, 'Ethiopia', 5, NULL),
  (73, NULL, 1, 'Falkland Islands (Malvinas)', 5, NULL),
  (74, NULL, 1, 'Faroe Islands', 5, NULL),
  (75, NULL, 1, 'Fiji', 5, NULL),
  (76, NULL, 1, 'Finland', 5, NULL),
  (77, NULL, 1, 'France', 5, NULL),
  (78, NULL, 1, 'French Guiana', 5, NULL),
  (79, NULL, 1, 'French Polynesia', 5, NULL),
  (80, NULL, 1, 'French Southern Territories', 5, NULL),
  (81, NULL, 1, 'Gabon', 5, NULL),
  (82, NULL, 1, 'Gambia', 5, NULL),
  (83, NULL, 1, 'Georgia', 5, NULL),
  (84, NULL, 1, 'Germany', 5, NULL),
  (85, NULL, 1, 'Ghana', 5, NULL),
  (86, NULL, 1, 'Gibraltar', 5, NULL),
  (87, NULL, 1, 'Greece', 5, NULL),
  (88, NULL, 1, 'Greenland', 5, NULL),
  (89, NULL, 1, 'Grenada', 5, NULL),
  (90, NULL, 1, 'Guadeloupe', 5, NULL),
  (91, NULL, 1, 'Guam', 5, NULL),
  (92, NULL, 1, 'Guatemala', 5, NULL),
  (93, NULL, 1, 'Guernsey', 5, NULL),
  (94, NULL, 1, 'Guinea', 5, NULL),
  (95, NULL, 1, 'Guinea-Bissau', 5, NULL),
  (96, NULL, 1, 'Guyana', 5, NULL),
  (97, NULL, 1, 'Haiti', 5, NULL),
  (98, NULL, 1, 'Heard Island and McDonald Islands', 5, NULL),
  (99, NULL, 1, 'Honduras', 5, NULL),
  (100, NULL, 1, 'Hong Kong', 5, NULL),
  (101, NULL, 1, 'Hungary', 5, NULL),
  (102, NULL, 1, 'Iceland', 5, NULL),
  (103, NULL, 1, 'India', 5, NULL),
  (104, NULL, 1, 'Indonesia', 5, NULL),
  (105, NULL, 1, 'Iran, Islamic Republic of', 5, NULL),
  (106, NULL, 1, 'Iraq', 5, NULL),
  (107, NULL, 1, 'Ireland', 5, NULL),
  (108, NULL, 1, 'Isle of Man', 5, NULL),
  (109, NULL, 1, 'Israel', 5, NULL),
  (110, NULL, 1, 'Italy', 5, NULL),
  (111, NULL, 1, 'Jamaica', 5, NULL),
  (112, NULL, 1, 'Japan', 5, NULL),
  (113, NULL, 1, 'Jersey', 5, NULL),
  (114, NULL, 1, 'Jordan', 5, NULL),
  (115, NULL, 1, 'Kazakhstan', 5, NULL),
  (116, NULL, 1, 'Kenya', 5, NULL),
  (117, NULL, 1, 'Kiribati', 5, NULL),
  (118, NULL, 1, 'Kuwait', 5, NULL),
  (119, NULL, 1, 'Kyrgyzstan', 5, NULL),
  (120, NULL, 1, 'Lao People''s Democratic Republic', 5, NULL),
  (121, NULL, 1, 'Latvia', 5, NULL),
  (122, NULL, 1, 'Lebanon', 5, NULL),
  (123, NULL, 1, 'Lesotho', 5, NULL),
  (124, NULL, 1, 'Liberia', 5, NULL),
  (125, NULL, 1, 'Libya', 5, NULL),
  (126, NULL, 1, 'Liechtenstein', 5, NULL),
  (127, NULL, 1, 'Lithuania', 5, NULL),
  (128, NULL, 1, 'Luxembourg', 5, NULL),
  (129, NULL, 1, 'Macao', 5, NULL),
  (130, NULL, 1, 'Macedonia, The Former Yugoslav Republic of', 5, NULL),
  (131, NULL, 1, 'Madagascar', 5, NULL),
  (132, NULL, 1, 'Malawi', 5, NULL),
  (133, NULL, 1, 'Malaysia', 5, NULL),
  (134, NULL, 1, 'Maldives', 5, NULL),
  (135, NULL, 1, 'Mali', 5, NULL),
  (136, NULL, 1, 'Malta', 5, NULL),
  (137, NULL, 1, 'Marshall Islands', 5, NULL),
  (138, NULL, 1, 'Martinique', 5, NULL),
  (139, NULL, 1, 'Mauritania', 5, NULL),
  (140, NULL, 1, 'Mauritius', 5, NULL),
  (141, NULL, 1, 'Mayotte', 5, NULL),
  (142, NULL, 1, 'Mexico', 5, NULL),
  (143, NULL, 1, 'Micronesia, Federated States of', 5, NULL),
  (144, NULL, 1, 'Moldova, Republic of', 5, NULL),
  (145, NULL, 1, 'Monaco', 5, NULL),
  (146, NULL, 1, 'Mongolia', 5, NULL),
  (147, NULL, 1, 'Montenegro', 5, NULL),
  (148, NULL, 1, 'Montserrat', 5, NULL),
  (149, NULL, 1, 'Morocco', 5, NULL),
  (150, NULL, 1, 'Mozambique', 5, NULL),
  (151, NULL, 1, 'Myanmar', 5, NULL),
  (152, NULL, 1, 'Namibia', 5, NULL),
  (153, NULL, 1, 'Nauru', 5, NULL),
  (154, NULL, 1, 'Nepal', 5, NULL),
  (155, NULL, 1, 'Netherlands', 5, NULL),
  (156, NULL, 1, 'New Caledonia', 5, NULL),
  (157, NULL, 1, 'New Zealand', 5, NULL),
  (158, NULL, 1, 'Nicaragua', 5, NULL),
  (159, NULL, 1, 'Niger', 5, NULL),
  (160, NULL, 1, 'Nigeria', 5, NULL),
  (161, NULL, 1, 'Niue', 5, NULL),
  (162, NULL, 1, 'Norfolk Island', 5, NULL),
  (163, NULL, 1, 'Korea, Democratic People''s Republic of', 5, NULL),
  (164, NULL, 1, 'Northern Mariana Islands', 5, NULL),
  (165, NULL, 1, 'Norway', 5, NULL),
  (166, NULL, 1, 'Oman', 5, NULL),
  (167, NULL, 1, 'Pakistan', 5, NULL),
  (168, NULL, 1, 'Palau', 5, NULL),
  (169, NULL, 1, 'Palestine, State of', 5, NULL),
  (170, NULL, 1, 'Panama', 5, NULL),
  (171, NULL, 1, 'Papua New Guinea', 5, NULL),
  (172, NULL, 1, 'Paraguay', 5, NULL),
  (173, NULL, 1, 'Peru', 5, NULL),
  (174, NULL, 1, 'Philippines', 5, NULL),
  (175, NULL, 1, 'Pitcairn', 5, NULL),
  (176, NULL, 1, 'Poland', 5, NULL),
  (177, NULL, 1, 'Portugal', 5, NULL),
  (178, NULL, 1, 'Puerto Rico', 5, NULL),
  (179, NULL, 1, 'Qatar', 5, NULL),
  (180, NULL, 1, 'Congo', 5, NULL),
  (181, NULL, 1, 'Réunion', 5, NULL),
  (182, NULL, 1, 'Romania', 5, NULL),
  (183, NULL, 1, 'Russian Federation', 5, NULL),
  (184, NULL, 1, 'Rwanda', 5, NULL),
  (185, NULL, 1, 'Saint Helena, Ascension and Tristan da Cunha', 5, NULL),
  (186, NULL, 1, 'Saint Kitts and Nevis', 5, NULL),
  (187, NULL, 1, 'Saint Lucia', 5, NULL),
  (188, NULL, 1, 'Saint Pierre and Miquelon', 5, NULL),
  (189, NULL, 1, 'Saint Vincent and the Grenadines', 5, NULL),
  (190, NULL, 1, 'Saint Barthélemy', 5, NULL),
  (191, NULL, 1, 'Saint Martin (French part)', 5, NULL),
  (192, NULL, 1, 'Samoa', 5, NULL),
  (193, NULL, 1, 'San Marino', 5, NULL),
  (194, NULL, 1, 'Sao Tome and Principe', 5, NULL),
  (195, NULL, 1, 'Saudi Arabia', 5, NULL),
  (196, NULL, 1, 'Senegal', 5, NULL),
  (197, NULL, 1, 'Serbia', 5, NULL),
  (198, NULL, 1, 'Seychelles', 5, NULL),
  (199, NULL, 1, 'Sierra Leone', 5, NULL),
  (200, NULL, 1, 'Singapore', 5, NULL),
  (201, NULL, 1, 'Sint Maarten (Dutch part)', 5, NULL),
  (202, NULL, 1, 'Slovakia', 5, NULL),
  (203, NULL, 1, 'Slovenia', 5, NULL),
  (204, NULL, 1, 'Solomon Islands', 5, NULL),
  (205, NULL, 1, 'Somalia', 5, NULL),
  (206, NULL, 1, 'South Africa', 5, NULL),
  (207, NULL, 1, 'South Georgia and the South Sandwich Islands', 5, NULL),
  (208, NULL, 1, 'Korea, Republic of', 5, NULL),
  (209, NULL, 1, 'South Sudan', 5, NULL),
  (210, NULL, 1, 'Spain', 5, NULL),
  (211, NULL, 1, 'Sri Lanka', 5, NULL),
  (212, NULL, 1, 'Sudan', 5, NULL),
  (213, NULL, 1, 'Suriname', 5, NULL),
  (214, NULL, 1, 'Svalbard and Jan Mayen', 5, NULL),
  (215, NULL, 1, 'Swaziland', 5, NULL),
  (216, NULL, 1, 'Sweden', 5, NULL),
  (217, NULL, 1, 'Switzerland', 5, NULL),
  (218, NULL, 1, 'Syrian Arab Republic', 5, NULL),
  (219, NULL, 1, 'Taiwan, Province of China', 5, NULL),
  (220, NULL, 1, 'Tajikistan', 5, NULL),
  (221, NULL, 1, 'Tanzania, United Republic of', 5, NULL),
  (222, NULL, 1, 'Thailand', 5, NULL),
  (223, NULL, 1, 'Togo', 5, NULL),
  (224, NULL, 1, 'Tokelau', 5, NULL),
  (225, NULL, 1, 'Tonga', 5, NULL),
  (226, NULL, 1, 'Trinidad and Tobago', 5, NULL),
  (227, NULL, 1, 'Tunisia', 5, NULL),
  (228, NULL, 1, 'Turkey', 5, NULL),
  (229, NULL, 1, 'Turkmenistan', 5, NULL),
  (230, NULL, 1, 'Turks and Caicos Islands', 5, NULL),
  (231, NULL, 1, 'Tuvalu', 5, NULL),
  (232, NULL, 1, 'Uganda', 5, NULL),
  (233, NULL, 1, 'Ukraine', 5, NULL),
  (234, NULL, 1, 'United Arab Emirates', 5, NULL),
  (235, NULL, 1, 'United Kingdom', 5, NULL),
  (236, NULL, 1, 'United States', 5, NULL),
  (237, NULL, 1, 'United States Minor Outlying Islands', 5, NULL),
  (238, NULL, 1, 'Uruguay', 5, NULL),
  (239, NULL, 1, 'Uzbekistan', 5, NULL),
  (240, NULL, 1, 'Vanuatu', 5, NULL),
  (241, NULL, 1, 'Holy See (Vatican City State)', 5, NULL),
  (242, NULL, 1, 'Venezuela, Bolivarian Republic of', 5, NULL),
  (243, NULL, 1, 'Viet Nam', 5, NULL),
  (244, NULL, 1, 'Virgin Islands, U.S.', 5, NULL),
  (245, NULL, 1, 'Wallis and Futuna', 5, NULL),
  (246, NULL, 1, 'Western Sahara', 5, NULL),
  (247, NULL, 1, 'Yemen', 5, NULL),
  (248, NULL, 1, 'Zambia', 5, NULL),
  (249, NULL, 1, 'Zimbabwe', 5, NULL),
  (250, NULL, 1, 'Government', 6, NULL),
  (251, NULL, 1, 'NGO', 6, NULL),
  (252, NULL, 1, 'Company', 6, NULL),
  (253, NULL, 1, 'International Organisation', 6, NULL),
  (254, NULL, 1, 'Trust', 6, NULL),
  (255, NULL, 1, 'Individual', 6, NULL),
  (256, NULL, 1, 'Conservation', 12, NULL),
  (257, NULL, 1, 'Development', 12, NULL),
  (258, NULL, 1, 'Education', 12, NULL),
  (259, NULL, 1, 'Policy', 12, NULL),
  (260, NULL, 1, 'Governance', 12, NULL),
  (261, NULL, 1, 'Land tenure', 12, NULL),
  (262, NULL, 1, 'Science', 12, NULL),
  (263, NULL, 1, 'Tourism', 12, NULL),
  (264, NULL, 1, 'Cultural', 12, NULL),
  (265, NULL, 1, 'Communication', 12, NULL),
  (266, NULL, 1, 'Financing', 12, NULL),
  (267, NULL, 1, 'Forestry', 13, NULL),
  (268, NULL, 1, 'Agriculture: subsistence', 13, NULL),
  (269, NULL, 1, 'Agriculture: commercial', 13, NULL),
  (270, NULL, 1, 'Water', 13, NULL),
  (271, NULL, 1, 'Mining', 13, NULL),
  (272, NULL, 1, 'Fisheries: marine', 13, NULL),
  (273, NULL, 1, 'Fisheries: freshwater', 13, NULL),
  (274, NULL, 1, 'Political issues ', 14, NULL),
  (275, NULL, 1, 'Legal issues', 14, NULL),
  (276, NULL, 1, 'Institutional issues', 14, NULL),
  (277, NULL, 1, 'Politics in organisation''s home country', 14, NULL),
  (278, NULL, 1, 'Agreements with other organisations', 14, NULL),
  (279, NULL, 1, 'Knowledge produced by research', 14, NULL),
  (280, NULL, 1, 'Donors strategies', 14, NULL),
  (281, NULL, 1, 'Environmental problems', 14, NULL),
  (282, NULL, 1, 'Environmental potentials', 14, NULL),
  (283, NULL, 1, 'Socioeconomic problems', 14, NULL),
  (284, NULL, 1, 'Socio-economic potentials', 14, NULL),
  (285, NULL, 1, 'Regional dynamics and factors', 14, NULL),
  (286, NULL, 1, 'International dynamics and factors', 14, NULL),
  (287, NULL, 1, 'Environmental Impact Assessment', 15, NULL),
  (288, NULL, 1, 'Environmental Policy', 15, NULL),
  (289, NULL, 1, 'Government Ministries', 15, NULL),
  (290, NULL, 1, 'Decentralized authorities (e.g. DREF)', 15, NULL),
  (291, NULL, 1, 'Madagascar National Parks', 15, NULL)
;
SELECT setval('data.sh_values_id_seq', 291, true);

-- PROFILES
INSERT INTO data.profiles (id, code, polygon) VALUES
  (1, 'madagascar', '0103000020E610000001000000050000001F85EB51B89E45406666666666E627C000000000004049406666666666E627C00000000000404940D7A3703D0A9739C01F85EB51B89E4540D7A3703D0A9739C01F85EB51B89E45406666666666E627C0');
SELECT setval('data.profiles_id_seq', 1, true);

-- STAKEHOLDER_ROLES
INSERT INTO data.stakeholder_roles(id, name, description) VALUES
  (1, 'Implementer', NULL),
  (2, 'Donor', NULL),
  (3, 'Researcher', NULL),
  (4, 'Buyer', NULL),
  (5, 'Other', NULL)
;
SELECT setval('data.stakeholder_roles_id_seq', 5, true);

