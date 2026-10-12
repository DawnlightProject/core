-- DB update 2026_08_03_05 -> 2026_08_03_06
DELETE FROM `spell_script_names` WHERE `spell_id` = 64208 AND `ScriptName` = 'spell_gen_consumption';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64208, 'spell_gen_consumption');
