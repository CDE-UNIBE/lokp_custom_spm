/**
 * Bugfix concerning double involvements.
 */

DELETE FROM data.involvements WHERE id = 847;
DELETE FROM data.involvements WHERE id = 848;
