-- DB update 2026_07_11_00 -> 2026_07_21_01
-- Moved out of data/sql/updates/db_world/2026_07_21_01.sql: the *_dbc tables now live in the hotfixes database.
-- Spell difficulty entries (core auto-resolves 10/25 man versions)
DELETE FROM `spelldifficulty_dbc` WHERE `ID` IN (63317, 64709, 64758, 63809);
INSERT INTO `spelldifficulty_dbc` (`ID`, `DifficultySpellID_1`, `DifficultySpellID_2`, `DifficultySpellID_3`, `DifficultySpellID_4`) VALUES
(63317, 63317, 64021, 0, 0), -- Flame Breath
(64709, 64709, 64734, 0, 0), -- Devouring Flame (Ground)
(64758, 64758, 64759, 0, 0), -- Chain Lightning
(63809, 63809, 64696, 0, 0); -- Lightning Bolt
