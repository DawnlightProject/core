-- DB update 2026_10_03_00 -> 2026_10_03_07
-- Moved out of data/sql/updates/db_world/2026_10_03_07.sql: the *_dbc tables now live in the hotfixes database.
-- Let Them Not Rise!: Skeletal Transform, transform into Skeleton (6412)
UPDATE `spell_dbc` SET `Effect_1` = 6, `ImplicitTargetA_1` = 1, `EffectAura_1` = 56, `EffectMiscValue_1` = 6412 WHERE `ID` = 48255;
