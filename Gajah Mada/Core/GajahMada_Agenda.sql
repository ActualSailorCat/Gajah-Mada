--=============================================
-- Gajah Mada / Agenda
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,							Kind)
VALUES	('TRAIT_AGENDA_CVS_GAJAH_MADA',	'KIND_TRAIT');

-----------------------------------------------	
-- Agendas
-----------------------------------------------	
INSERT INTO Agendas
		(AgendaType,				Name,								Description)
VALUES	('AGENDA_CVS_GAJAH_MADA',	'LOC_AGENDA_CVS_GAJAH_MADA_NAME',	'LOC_AGENDA_CVS_GAJAH_MADA_DESCRIPTION');

-----------------------------------------------	
-- Traits
-----------------------------------------------	
INSERT INTO Traits
		(TraitType,							Name,					Description)
VALUES	('TRAIT_AGENDA_CVS_GAJAH_MADA',		'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');

-----------------------------------------------	
-- AgendaTraits
-----------------------------------------------	
INSERT INTO AgendaTraits
		(AgendaType,						TraitType)
VALUES	('AGENDA_CVS_GAJAH_MADA',			'TRAIT_AGENDA_CVS_GAJAH_MADA');

-----------------------------------------------	
-- TraitModifiers
-----------------------------------------------	
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_CVS_GAJAH_MADA',			'AGENDA_CVS_GAJAH_MADA_TRADE'),
		('TRAIT_AGENDA_CVS_GAJAH_MADA',			'AGENDA_CVS_GAJAH_MADA_HOME'),

		-- Not Diplomacy; Behavior
		('TRAIT_AGENDA_CVS_GAJAH_MADA',			'AGENDA_CVS_GAJAH_MADA_ATK_HOME');

-----------------------------------------------	
-- Modifiers
-----------------------------------------------	
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,									OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('AGENDA_CVS_GAJAH_MADA_TRADE',			'MODIFIER_PLAYER_DIPLOMACY_TRADE_RELATIONS',	'ON_TURN_STARTED',			'PLAYER_IS_MAJOR_CIV_KNOWN_30_TURNS'),
		('AGENDA_CVS_GAJAH_MADA_HOME',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	NULL,						'PLAYER_SAME_HOME_CONTINENT'),

		-- Not Diplomacy; Behavior
		('AGENDA_CVS_GAJAH_MADA_ATK_HOME',		'MODIFIER_ADJUST_DIPLOMATIC_ACTION_PREFERENCE',	NULL,						'PLAYER_SAME_HOME_CONTINENT');

-----------------------------------------------	
-- ModifierArguments
-----------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,						Name,							Value)
VALUES	('AGENDA_CVS_GAJAH_MADA_TRADE',		'TradeBonus',					3),
		('AGENDA_CVS_GAJAH_MADA_TRADE',		'NoTradePenalty',				10),
		('AGENDA_CVS_GAJAH_MADA_TRADE',		'BonusPerRoute',				1),
		('AGENDA_CVS_GAJAH_MADA_TRADE',		'OnlyInboundTrade',				1),
		('AGENDA_CVS_GAJAH_MADA_TRADE',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_GAJAH_MADA_REASON_TRADE'),
		('AGENDA_CVS_GAJAH_MADA_TRADE',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_GAJAH_MADA_TRADE'),

		('AGENDA_CVS_GAJAH_MADA_HOME',		'InitialValue',					-15),
		('AGENDA_CVS_GAJAH_MADA_HOME',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_GAJAH_MADA_REASON_HOME'),
		('AGENDA_CVS_GAJAH_MADA_HOME',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_GAJAH_MADA_HOME'),

		-- Not Diplomacy; Behavior
		('AGENDA_CVS_GAJAH_MADA_ATK_HOME',	'Action',						'DIPLOACTION_DECLARE_SURPRISE_WAR, DIPLOACTION_DECLARE_FORMAL_WAR, DIPLOACTION_DECLARE_HOLY_WAR, DIPLOACTION_DECLARE_LIBERATION_WAR, DIPLOACTION_DECLARE_RECONQUEST_WAR, DIPLOACTION_DECLARE_PROTECTORATE_WAR, DIPLOACTION_DECLARE_COLONIAL_WAR, DIPLOACTION_DECLARE_TERRITORIAL_WAR'),
		('AGENDA_CVS_GAJAH_MADA_ATK_HOME',	'Favored',						1);

-----------------------------------------------	
-- HistoricalAgendas
-----------------------------------------------	
INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType)
VALUES	('LEADER_CVS_GAJAH_MADA',	'AGENDA_CVS_GAJAH_MADA');

-----------------------------------------------	
-- ExclusiveAgendas
-----------------------------------------------	
INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo)
VALUES	('AGENDA_CVS_GAJAH_MADA',	'AGENDA_PARANOID');

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,								Context,		Text)
VALUES	('AGENDA_CVS_GAJAH_MADA_TRADE',				'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_CVS_GAJAH_MADA_HOME',				'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');

--=============================================
-- Mod Support
--=============================================
INSERT INTO AgendaPreferredLeaders
		(AgendaType,					LeaderType,					PercentageChance)
SELECT	'AGENDA_SAILOR_CURMUDGEON',		'LEADER_CVS_GAJAH_MADA',		15
WHERE EXISTS (SELECT 1 FROM Agendas WHERE AgendaType = 'AGENDA_SAILOR_FLIRTATIOUS');
