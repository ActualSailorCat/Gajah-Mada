--=============================================
-- Gaja Mada / Traits
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types 
		(Type,								Kind)
VALUES	('TRAIT_LEADER_CVS_GAJAH_MADA_UA', 'KIND_TRAIT'),
		('TRAIT_LEADER_CVS_GAJAH_MADA_UU', 'KIND_TRAIT');

-----------------------------------------------
-- Traits
-----------------------------------------------
INSERT INTO Traits
		(TraitType,								Name,											Description)
VALUES	('TRAIT_LEADER_CVS_GAJAH_MADA_UA',		'LOC_TRAIT_LEADER_CVS_GAJAH_MADA_UA_NAME',		'LOC_TRAIT_LEADER_CVS_GAJAH_MADA_UA_DESCRIPTION'),
        ('TRAIT_LEADER_CVS_GAJAH_MADA_UU',		'LOC_TRAIT_LEADER_CVS_GAJAH_MADA_UU_NAME',		'LOC_TRAIT_LEADER_CVS_GAJAH_MADA_UU_DESCRIPTION');

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,							TraitType)
VALUES	('LEADER_CVS_GAJAH_MADA',				'TRAIT_LEADER_CVS_GAJAH_MADA_UA'),
		('LEADER_CVS_GAJAH_MADA',				'TRAIT_LEADER_CVS_GAJAH_MADA_UU');

-----------------------------------------------			
-- TraitModifiers		
-----------------------------------------------	
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_LEADER_CVS_GAJAH_MADA_UA',		'CVS_GAJA_MADA_UA_HOME_CONTINENT_STR');

-----------------------------------------------			
-- DistrictModifiers	
-----------------------------------------------	
INSERT INTO DistrictModifiers
		(DistrictType,							ModifierId)
VALUES	('DISTRICT_CITY_CENTER',				'CVS_GAJA_MADA_UA_PALACE_FOOD'),
		('DISTRICT_CITY_CENTER',				'CVS_GAJA_MADA_UA_PALACE_PROD');

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,							ModifierType,											OwnerRequirementSetId,					SubjectRequirementSetId)
VALUES	('CVS_GAJA_MADA_UA_HOME_CONTINENT_STR',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					NULL,									NULL),
		('CVS_GAJA_MADA_UA_PALACE_FOOD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	'CVS_REQUIRES_IS_GAJA_MADA_FOUNDED',	'CVS_REQUIRES_IS_GAJA_MADA'),
		('CVS_GAJA_MADA_UA_PALACE_PROD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	'CVS_REQUIRES_IS_GAJA_MADA_CONQUER',	'CVS_REQUIRES_IS_GAJA_MADA');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,				Value)
VALUES	('CVS_GAJA_MADA_UA_HOME_CONTINENT_STR',	'AbilityType',		'ABILITY_CVS_GAJA_MADAH_UA'),
		('CVS_GAJA_MADA_UA_PALACE_FOOD',		'BuildingType',		'BUILDING_PALACE'),
		('CVS_GAJA_MADA_UA_PALACE_FOOD',		'YieldType',		'YIELD_FOOD'),
		('CVS_GAJA_MADA_UA_PALACE_FOOD',		'Amount',			1),
		('CVS_GAJA_MADA_UA_PALACE_PROD',		'BuildingType',		'BUILDING_PALACE'),
		('CVS_GAJA_MADA_UA_PALACE_PROD',		'YieldType',		'YIELD_PRODUCTION'),
		('CVS_GAJA_MADA_UA_PALACE_PROD',		'Amount',			1);

-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('CVS_REQUIRES_IS_GAJA_MADA',					'REQUIREMENTSET_TEST_ALL'),
		('CVS_REQUIRES_IS_GAJA_MADA_FOUNDED',			'REQUIREMENTSET_TEST_ALL'),
		('CVS_REQUIRES_IS_GAJA_MADA_CONQUER',			'REQUIREMENTSET_TEST_ALL');

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES  ('CVS_REQUIRES_IS_GAJA_MADA',					'CVS_CHECK_IS_GAJA_MADA'),
		('CVS_REQUIRES_IS_GAJA_MADA_FOUNDED',			'CITY_IS_ORIGINAL_OWNER_REQUIREMENTS'),
		('CVS_REQUIRES_IS_GAJA_MADA_FOUNDED',			'CVS_GAJA_MADA_CHECK_IS_HOME_CONTINENT'),
		('CVS_REQUIRES_IS_GAJA_MADA_FOUNDED',			'CVS_CHECK_IS_GAJA_MADA'),
		('CVS_REQUIRES_IS_GAJA_MADA_CONQUER',			'CITY_IS_NOT_ORIGINAL_OWNER_REQUIREMENTS'),
		('CVS_REQUIRES_IS_GAJA_MADA_CONQUER',			'CVS_GAJA_MADA_CHECK_IS_HOME_CONTINENT'),
		('CVS_REQUIRES_IS_GAJA_MADA_CONQUER',			'CVS_CHECK_IS_GAJA_MADA');

-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType,									Inverse)
VALUES	('CVS_CHECK_IS_GAJA_MADA',						'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',			0),
		('CVS_GAJA_MADA_CHECK_IS_HOME_CONTINENT',		'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT',		0);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,				Value)
VALUES	('CVS_CHECK_IS_GAJA_MADA',						'LeaderType',		'LEADER_CVS_GAJAH_MADA');

--=============================================
-- Gaja Mada / UnitAbility
--=============================================
-----------------------------------------------	
-- TypeTags
-----------------------------------------------	
INSERT INTO TypeTags
		(Type,									Tag)
SELECT 	'ABILITY_CVS_GAJA_MADAH_UA',			Tag
FROM TypeTags WHERE Type = 'ABILITY_ROOSEVELT_COMBAT_BONUS_HOME_CONTINENT';

-----------------------------------------------
-- Types
-----------------------------------------------
INSERT INTO Types
		(Type,									Kind)
VALUES	('ABILITY_CVS_GAJA_MADAH_UA',			'KIND_ABILITY');
-----------------------------------------------
-- UnitAbilities
-----------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,										Description,									Inactive)
VALUES	('ABILITY_CVS_GAJA_MADAH_UA',			'LOC_ABILITY_CVS_GAJA_MADAH_UA_NAME',		'LOC_ABILITY_CVS_GAJA_MADAH_UA_DESCRIPTION',	1);

-----------------------------------------------
--  UnitAbilityModifiers
-----------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)						
VALUES	('ABILITY_CVS_GAJA_MADAH_UA',			'ABILITY_CVS_GAJA_MADAH_UA_MOD');

-----------------------------------------------
--  Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType,								SubjectRequirementSetId)
VALUES	('ABILITY_CVS_GAJA_MADAH_UA_MOD',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'CVS_GAJAH_MADA_ABILITY_REQUIREMENTS');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,				Value)
VALUES	('ABILITY_CVS_GAJA_MADAH_UA_MOD',		'Amount',			5);

-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('CVS_GAJAH_MADA_ABILITY_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL');

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES  ('CVS_GAJAH_MADA_ABILITY_REQUIREMENTS',		'REQUIRES_UNIT_ON_HOME_CONTINENT'),
		('CVS_GAJAH_MADA_ABILITY_REQUIREMENTS',		'OPPONENT_IS_DISTRICT');

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,						Context,	Text)
VALUES	('ABILITY_CVS_GAJA_MADAH_UA_MOD',	'Preview',	'LOC_ABILITY_CVS_GAJA_MADAH_UA_PREVIEW_TEXT');