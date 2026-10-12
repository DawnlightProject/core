-- DB update 2026_08_03_06 -> 2026_08_08_10
-- Moved out of data/sql/updates/db_world/2026_08_08_10.sql: the *_dbc tables now live in the hotfixes database.
-- Give the serverside Death Ray Summon stubs their summon effect (one ray each)
UPDATE `spell_dbc` SET `Effect_1` = 28, `ImplicitTargetA_1` = 18, `EffectMiscValue_1` = 33881, `EffectMiscValueB_1` = 64 WHERE `ID` IN (63887, 63888, 63889, 63890);
