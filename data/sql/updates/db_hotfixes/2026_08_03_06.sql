-- DB update 2026_08_03_00 -> 2026_08_03_06
-- Moved out of data/sql/updates/db_world/2026_08_03_06.sql: the *_dbc tables now live in the hotfixes database.
--
UPDATE `spell_dbc` SET `ProcChance` = 101, `Effect_1` = 6, `EffectDieSides_1` = 1, `ImplicitTargetA_1` = 1,  `EffectAura_1` = 23, `EffectAuraPeriod_1` = 1000, `EffectTriggerSpell_1`  = 64208, `EffectBonusCoefficient_1` = 1 WHERE `ID` = 64209;
