-- DB update 2026_06_17_00 -> 2026_07_11_00
-- Moved out of data/sql/updates/db_world/2026_07_11_00.sql: the *_dbc tables now live in the hotfixes database.
-- ---------------------------------------------------------------------------
-- Warden of the Chamber (30058)
-- ---------------------------------------------------------------------------
-- populate warden transform spells
-- Effect_1 = 6 (SPELL_EFFECT_APPLY_AURA), EffectAura_1 = 56
--   55831 Red    - 30072 (display 26747)
--   55830 Bronze - 30059 (display 26741)
--   55828 Blue   - 30076 (display 26749)
--   55829 Green  - 30073 (display 26748)
--   55827 Black  - 30077 (display 14308)
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 30072 WHERE `ID` = 55831;
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 30059 WHERE `ID` = 55830;
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 30076 WHERE `ID` = 55828;
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 30073 WHERE `ID` = 55829;
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 30077 WHERE `ID` = 55827;

-- ---------------------------------------------------------------------------
-- Wyrmrest Protector (27953)
-- ---------------------------------------------------------------------------
-- populate protector transform spells
--   50158 Red    - 27952 (display 14357)
--   51118 Blue   - 28251 (display 14356)
--   50160 Bronze - 27955 (display 14358)
--   50159 Green  - 27954 (display 14359)
--   51117 Black  - 28250 (display 14355)
--   51119 Nether - 28252 (display 25257)
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 27952 WHERE `ID` = 50158;
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 28251 WHERE `ID` = 51118;
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 27955 WHERE `ID` = 50160;
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 27954 WHERE `ID` = 50159;
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 28250 WHERE `ID` = 51117;
UPDATE `spell_dbc` SET `Effect_1` = 6, `EffectAura_1` = 56, `ImplicitTargetA_1` = 1, `EffectMiscValue_1` = 28252 WHERE `ID` = 51119;
