-- DB update 2026_04_05_01 -> 2026_06_16_07
-- Moved out of data/sql/updates/db_world/2026_06_16_07.sql: the *_dbc tables now live in the hotfixes database.
--
UPDATE `spell_dbc` SET `RangeIndex`= 12, `ProcChance` = 101, `Effect_1` = 140, `ImplicitTargetA_1` = 25, `EffectTriggerSpell_1` = 47681 WHERE `Id` = 47680;
