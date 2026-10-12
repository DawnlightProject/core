-- DB update 2026_07_24_03 -> 2026_07_24_04
-- --------------------------------------------------------------------------------------------
-- Dragonblight (Northrend, map 571)
-- Dead Mage Hunter (26477): permanent, randomized corpse appearance
-- -------------------------------------------
-- Dead Mage Hunter (26477) - apply sniffed displayIDs
DELETE FROM `creature_template_model` WHERE `CreatureID` = 26477;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(26477, 0, 16888, 1, 0, 51831),
(26477, 1, 11686, 1, 1, 51831);
-- Dead Mage Hunter (26477) - apply blanket transform spell as aura
UPDATE `creature_template_addon` SET `auras` = '47090' WHERE (`entry` = 26477);
