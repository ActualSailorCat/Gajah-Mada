--==========================================================================================================================
-- Shapur I / AI by CIVITAS
--==========================================================================================================================
-----------------------------------------------	
-- FavoredReligions
-----------------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,				ReligionType)
VALUES	('LEADER_CVS_GAJAHMADA',	'RELIGION_ISLAM');

-----------------------------------------------	
-- AiListTypes
-----------------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('CVS_GAJAHMADA_Civics'),
		('CVS_GAJAHMADA_Techs'),
		('CVS_GAJAHMADA_Buildings'),
		('CVS_GAJAHMADA_Districts'),
		('CVS_GAJAHMADA_PseudoYields'),
		('CVS_GAJAHMADA_Yields'),
		('CVS_GAJAHMADA_Units'),
		('CVS_GAJAHMADA_FavorDominationVictory'),
		('CVS_GAJAHMADA_Diplomacy'),
		('CVS_GAJAHMADA_PlotEvaluation');

-----------------------------------------------	
-- AiLists
-----------------------------------------------	
INSERT INTO AiLists	
		(ListType,								 AgendaType,						System)
VALUES	('CVS_GAJAHMADA_Civics',				 'TRAIT_AGENDA_CVS_GAJAHMADA',		'Civics'),
		('CVS_GAJAHMADA_Techs',					 'TRAIT_AGENDA_CVS_GAJAHMADA',		'Technologies'),
		('CVS_GAJAHMADA_Buildings',				 'TRAIT_AGENDA_CVS_GAJAHMADA',		'Buildings'),
		('CVS_GAJAHMADA_Districts',				 'TRAIT_AGENDA_CVS_GAJAHMADA',		'Districts'),
		('CVS_GAJAHMADA_Districts',				 'TRAIT_AGENDA_CVS_GAJAHMADA',		'Improvements'),
		('CVS_GAJAHMADA_PseudoYields',			 'TRAIT_AGENDA_CVS_GAJAHMADA',		'PseudoYields'),
		('CVS_GAJAHMADA_Yields',				 'TRAIT_AGENDA_CVS_GAJAHMADA',		'Yields'),
		('CVS_GAJAHMADA_Units',					 'TRAIT_AGENDA_CVS_GAJAHMADA',		'Units'),
		('CVS_GAJAHMADA_FavorDominationVictory', 'TRAIT_AGENDA_CVS_GAJAHMADA',		'Strategies'),
		('CVS_GAJAHMADA_Diplomacy',				 'TRAIT_AGENDA_CVS_GAJAHMADA',		'DiplomaticActions'),
		('CVS_GAJAHMADA_PlotEvaluation',		 'TRAIT_AGENDA_CVS_GAJAHMADA',		'PlotEvaluation');

-----------------------------------------------	
-- AiFavoredItems
-----------------------------------------------
-- YIELDS
INSERT INTO AiFavoredItems	
		(ListType,							Favored,	Item)
VALUES	('CVS_GAJAHMADA_Yields',			1,			'YIELD_GOLD'),	
		('CVS_GAJAHMADA_Yields',			1,			'YIELD_PRODUCTION'),		
		('CVS_GAJAHMADA_PseudoYields',		1,			'PSEUDOYIELD_GPP_GENERAL'),
		('CVS_GAJAHMADA_PseudoYields',		1,			'PSEUDOYIELD_GPP_ADMIRAL'),
		('CVS_GAJAHMADA_PseudoYields',		1,			'PSEUDOYIELD_UNIT_COMBAT'),
		('CVS_GAJAHMADA_PseudoYields',		1,			'PSEUDOYIELD_TECHNOLOGY'),
		('CVS_GAJAHMADA_PseudoYields',		1,			'PSEUDOYIELD_STANDING_ARMY_NUMBER'),
		('CVS_GAJAHMADA_PseudoYields',		1,			'PSEUDOYIELD_STANDING_ARMY_VALUE'),
		('CVS_GAJAHMADA_PseudoYields',		1,			'PSEUDOYIELD_DISTRICT');

-- UNITS
INSERT INTO AiFavoredItems	
		(ListType,							Favored,	Item)
VALUES	('CVS_GAJAHMADA_Units',				1,			'UNIT_GREAT_GENERAL'),		
		('CVS_GAJAHMADA_Units',				1,			'UNIT_GREAT_ADMIRAL'),		
		('CVS_GAJAHMADA_Units',				1,			'UNIT_INDONESIAN_JONG');	

-- BUILDINGS & DISTRICTS
INSERT INTO AiFavoredItems	
		(ListType,							Favored,	Item)
VALUES	('CVS_GAJAHMADA_Buildings',			1,			'BUILDING_STABLE'),				
		('CVS_GAJAHMADA_Buildings',			1,			'BUILDING_BARRACKS'),			
		('CVS_GAJAHMADA_Buildings',			1,			'BUILDING_LIGHTHOUSE'),			
		('CVS_GAJAHMADA_Districts',			1,			'DISTRICT_HARBOR'),				
		('CVS_GAJAHMADA_Districts',			1,			'DISTRICT_ENCAMPMENT');			

-- IMPROVEMENTS
INSERT INTO AiFavoredItems
		(ListType,							Favored,	Item)
VALUES	('CVS_GAJAHMADA_Improvements',		1,			'IMPROVEMENT_KAMPUNG');

-- WONDERS
INSERT INTO AiFavoredItems	
		(ListType,							Favored,	Item)
VALUES	('CVS_GAJAHMADA_Buildings',			1,			'BUILDING_VENETIAN_ARSENAL');

-- CIVICS & TECHS
INSERT INTO AiFavoredItems	
		(ListType,						Item,							Favored)
VALUES	('CVS_GAJAHMADA_Civics',		'CIVIC_MILITARY_TRAINING',		1), 
		('CVS_GAJAHMADA_Civics',		'CIVIC_MILITARY_TRADITION',		1), 
		('CVS_GAJAHMADA_Civics',		'CIVIC_FEUDALISM',				1), 
		('CVS_GAJAHMADA_Civics',		'CIVIC_MERCENARIES',			1), 
		('CVS_GAJAHMADA_Techs',			'TECH_SHIPBUILDING',			1), 
		('CVS_GAJAHMADA_Techs',			'TECH_CELESTIAL_NAVIGATION',	1), 
		('CVS_GAJAHMADA_Techs',			'TECH_BRONZE_WORKING',			1), 
		('CVS_GAJAHMADA_Techs',			'TECH_ENGINEERING',				1), 
		('CVS_GAJAHMADA_Techs',			'TECH_IRRIGATION',				1);

-- VICTORIES
INSERT INTO AiFavoredItems	
		(ListType,									Item,									Value)
VALUES	('CVS_GAJAHMADA_FavorDominationVictory',	'VICTORY_STRATEGY_MILITARY_VICTORY',	-2);

-- WARS
INSERT INTO AiFavoredItems	
		(ListType,									Item,									Favored)
VALUES	('CVS_GAJAHMADA_Diplomacy',					'DIPLOACTION_DECLARE_SURPRISE_WAR',		1),
		('CVS_GAJAHMADA_Diplomacy',					'DIPLOACTION_DECLARE_WAR_MINOR_CIV',	1),
		('CVS_GAJAHMADA_Diplomacy',					'DIPLOACTION_DECLARE_FORMAL_WAR',		1),
		('CVS_GAJAHMADA_Diplomacy',					'DIPLOACTION_DECLARE_HOLY_WAR',			1),
		('CVS_GAJAHMADA_Diplomacy',					'DIPLOACTION_DECLARE_RECONQUEST_WAR',	1),
		('CVS_GAJAHMADA_Diplomacy',					'DIPLOACTION_DECLARE_TERRITORIAL_WAR',	1),
		('CVS_GAJAHMADA_Diplomacy',					'DIPLOACTION_JOINT_WAR',				1),
		('CVS_GAJAHMADA_Diplomacy',					'DIPLOACTION_DECLARE_PROTECTORATE_WAR',	1),
		('CVS_GAJAHMADA_Diplomacy',					'DIPLOACTION_DECLARE_LIBERATION_WAR',	1),
		('CVS_GAJAHMADA_Diplomacy',					'DIPLOACTION_DECLARE_COLONIAL_WAR',		1);

-- PLOT EVALUATION
INSERT INTO AiFavoredItems
		(ListType,							Item,				Favored,		StringVal)
VALUES  ('CVS_GAJAHMADA_PlotEvaluation',	'Resource Class',	1,				'RESOURCECLASS_STRATEGIC');

--=============================================
-- Settlement Expansion AI courtesy ChimpanG
--=============================================
-----------------------------------------------
-- AiListTypes
-----------------------------------------------
INSERT INTO AiListTypes
        (ListType)
VALUES  ('LEADER_CVS_GAJAHMADA_SETTLEMENT');
-----------------------------------------------
-- AiLists
-----------------------------------------------
INSERT INTO AiLists
        (ListType,                             LeaderType,							 System)
VALUES  ('LEADER_CVS_GAJAHMADA_SETTLEMENT',    'TRAIT_LEADER_CVS_GAJAH_MADA_UA',    'SettlementPreferences');
-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------
INSERT INTO AiFavoredItems
        (ListType,                            Item,						                     Value)
VALUES  -- Settlement
        ('LEADER_CVS_GAJAHMADA_SETTLEMENT',    'SETTLEMENT_MIN_VALUE_NEEDED',				 -25),
        ('LEADER_CVS_GAJAHMADA_SETTLEMENT',    'SETTLEMENT_ADDITIONAL_VALUE_PER_CITY',	     -1),
        ('LEADER_CVS_GAJAHMADA_SETTLEMENT',    'SETTLEMENT_DECAY_TURNS',                     -3),
        ('LEADER_CVS_GAJAHMADA_SETTLEMENT',    'SETTLEMENT_DECAY_AMOUNT',				     3),
        ('LEADER_CVS_GAJAHMADA_SETTLEMENT',    'SETTLEMENT_CITY_MINIMUM_VALUE',			 	 10),
        ('LEADER_CVS_GAJAHMADA_SETTLEMENT',    'SETTLEMENT_CITY_VALUE_MULTIPLIER',		 	 1);