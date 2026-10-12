-- DB update 2026_07_21_01 -> 2026_07_24_04
-- Moved out of data/sql/updates/db_world/2026_07_24_04.sql: the *_dbc tables now live in the hotfixes database.
--
-- Dead Mage Hunter (26477): permanent, randomized corpse appearance
-- Populate spell Serverside - Dead Mage Hunter Transform (47090) with transform effect to Dead Mage Hunter Transform (26476)
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 26476 WHERE `ID` = 47090;
