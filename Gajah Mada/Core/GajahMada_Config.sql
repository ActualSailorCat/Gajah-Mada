-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(
		
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_INDONESIA', -- CivilizationType
		'LOC_CIVILIZATION_INDONESIA_NAME', -- CivilizationName
		'ICON_CIVILIZATION_INDONESIA', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_INDONESIA_NUSANTARA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_INDONESIA_NUSANTARA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_INDONESIA', -- CivilizationAbilityIcon
		
		
		'LEADER_CVS_GAJAH_MADA', -- LeaderType
		'LOC_LEADER_CVS_GAJAH_MADA_NAME', -- LeaderName
		'ICON_LEADER_CVS_GAJAH_MADA', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_GAJAH_MADA_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_GAJAH_MADA_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_GAJAH_MADA' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 			Type, 						Icon, 								Name, 									Description, 								SortIndex	)
VALUES	('Players:Expansion2_Players',	'CIVILIZATION_INDONESIA',	'LEADER_CVS_GAJAH_MADA',	'UNIT_INDONESIAN_JONG',		'ICON_UNIT_INDONESIAN_JONG',		'LOC_UNIT_INDONESIAN_JONG_NAME',		'LOC_UNIT_INDONESIAN_JONG_DESCRIPTION',		10			),
        ('Players:Expansion2_Players',	'CIVILIZATION_INDONESIA',	'LEADER_CVS_GAJAH_MADA',	'UNIT_CVS_GAJAH_MADA_UU',	'ICON_UNIT_CVS_GAJAH_MADA_UU',		'LOC_UNIT_CVS_GAJAH_MADA_UU_NAME',		'LOC_UNIT_CVS_GAJAH_MADA_UU_DESCRIPTION',	20			),
		('Players:Expansion2_Players',	'CIVILIZATION_INDONESIA',	'LEADER_CVS_GAJAH_MADA',	'IMPROVEMENT_KAMPUNG',	    'ICON_IMPROVEMENT_KAMPUNG',	        'LOC_IMPROVEMENT_KAMPUNG_NAME',	        'LOC_IMPROVEMENT_KAMPUNG_DESCRIPTION',	    30			);

