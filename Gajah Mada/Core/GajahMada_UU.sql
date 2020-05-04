--=============================================
-- Gaja Mada / UU
--=============================================
-----------------------------------------------	
-- Tags
-----------------------------------------------	
INSERT INTO Tags
		(Tag,							Vocabulary)
VALUES	('CLASS_CVS_GAJAH_MADA_UU',		'ABILITY_CLASS');

-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types 
		(Type,									Kind)
VALUES	('UNIT_CVS_GAJAH_MADA_UU',				'KIND_UNIT'),
		('ABILITY_CVS_GAJAH_MADA_UU_ATK',		'KIND_ABILITY');

-----------------------------------------------	
-- TypeTags
-----------------------------------------------	
INSERT INTO TypeTags
		(Type,									Tag)
VALUES	('UNIT_CVS_GAJAH_MADA_UU',				'CLASS_CVS_GAJAH_MADA_UU'),
		('UNIT_CVS_GAJAH_MADA_UU',				'CLASS_RANGED'),
		('ABILITY_CVS_GAJAH_MADA_UU_ATK',		'CLASS_CVS_GAJAH_MADA_UU');

-----------------------------------------------
-- Units
-----------------------------------------------
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		StrategicResource,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		PrereqTech,
		MustPurchase
		)
SELECT	'UNIT_CVS_GAJAH_MADA_UU',	-- UnitType
		'LOC_UNIT_CVS_GAJAH_MADA_UU_NAME',	-- Name
		'LOC_UNIT_CVS_GAJAH_MADA_UU_DESCRIPTION', -- Description
		'TRAIT_LEADER_CVS_GAJAH_MADA_UU', -- TraitType
		BaseMoves,
		Cost,
		StrategicResource,
		PurchaseYield,
		AdvisorType,
		Combat - 7,
		RangedCombat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		'TECH_MILITARY_ENGINEERING',
		MustPurchase
FROM	Units
WHERE	UnitType = 'UNIT_CROSSBOWMAN';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
INSERT INTO UnitUpgrades
		(Unit,					UpgradeUnit)
SELECT 	'UNIT_CVS_GAJAH_MADA_UU',	UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_CROSSBOWMAN';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType)
VALUES	('UNIT_CVS_GAJAH_MADA_UU',	'UNIT_CROSSBOWMAN');

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
INSERT INTO UnitAiInfos
		(UnitType,					AiType)
SELECT	'UNIT_CVS_GAJAH_MADA_UU',	AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_CROSSBOWMAN';

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,					Name,										Description)
VALUES	('ABILITY_CVS_GAJAH_MADA_UU_ATK',	'LOC_ABILITY_CVS_GAJAH_MADA_UU_ATK_NAME',	'LOC_ABILITY_CVS_GAJAH_MADA_UU_ATK_DESCRIPTION');

-----------------------------------------------
--  UnitAbilityModifiers
-----------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,					ModifierId)
VALUES	('ABILITY_CVS_GAJAH_MADA_UU_ATK',	'ABILITY_CVS_GAJAH_MADA_UU_ATKMOD');

-----------------------------------------------
--  Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType,								SubjectRequirementSetId)
VALUES	('ABILITY_CVS_GAJAH_MADA_UU_ATKMOD',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'CVS_GAJAH_MADA_UU_REQSET');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value)
VALUES	('ABILITY_CVS_GAJAH_MADA_UU_ATKMOD',	'Amount',		5);

-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('CVS_GAJAH_MADA_UU_REQSET',			'REQUIREMENTSET_TEST_ALL'),
		('CVS_GAJAH_MADA_UU_TARGET',			'REQUIREMENTSET_TEST_ANY');

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES  ('CVS_GAJAH_MADA_UU_REQSET',			'UNIT_STRONG_WHEN_ATTACKING_REQUIREMENT'),
		('CVS_GAJAH_MADA_UU_REQSET',			'CVS_GAJAH_MADA_VALID_TARGET_REQSET_MET'),
		('CVS_GAJAH_MADA_UU_TARGET',			'OPPONENT_IS_SEA_UNIT'),
		('CVS_GAJAH_MADA_UU_TARGET',			'OPPONENT_IS_PROMOTION_CLASS_MELEE'),
		('CVS_GAJAH_MADA_UU_TARGET',			'OPPONENT_ANTI_CAVALRY_REQUIREMENT');

-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('CVS_GAJAH_MADA_VALID_TARGET_REQSET_MET',		'REQUIREMENT_REQUIREMENTSET_IS_MET');

----------------------------------------------
-- RequirementArguments
-----------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,					Value)
VALUES	('CVS_GAJAH_MADA_VALID_TARGET_REQSET_MET',		'RequirementSetId',		'CVS_GAJAH_MADA_UU_TARGET');

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,							Context,	Text)
VALUES	('ABILITY_CVS_GAJAH_MADA_UU_ATKMOD',	'Preview',	'LOC_ABILITY_CVS_GAJA_MADAH_UU_ATKMOD_PREVIEW_TEXT');