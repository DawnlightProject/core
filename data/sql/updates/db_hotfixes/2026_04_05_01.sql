-- DB update 2026_03_24_02 -> 2026_04_05_01
-- Moved out of data/sql/updates/db_world/2026_04_05_01.sql: the *_dbc tables now live in the hotfixes database.
UPDATE `spell_dbc` SET `Targets` = 1, `Effect_1` = 24, `EffectBasePoints_1` = 1, `EffectItemType_1` = 44582 WHERE (`ID` = 60989);
UPDATE `spell_dbc` SET `Targets` = 1, `Effect_1` = 24, `EffectBasePoints_1` = 1, `EffectItemType_1` = 44581 WHERE (`ID` = 60992);
