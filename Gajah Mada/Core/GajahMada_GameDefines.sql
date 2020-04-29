-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind			)
VALUES	('LEADER_CVS_GAJAH_MADA',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,			LeaderType,					CapitalName					)
VALUES	('CIVILIZATION_INDONESIA',	'LEADER_CVS_GAJAH_MADA',	'LOC_CITY_NAME_MAJAPAHIT'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_GAJAH_MADA',	'LOC_LEADER_CVS_GAJAH_MADA_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- Quotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,				Quote											)
VALUES	('LEADER_CVS_GAJAH_MADA',	'LOC_PEDIA_LEADERS_PAGE_CVS_GAJAH_MADA_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,					BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_GAJAH_MADA',	'LEADER_CVS_GAJAH_MADA_NEUTRAL',	'LEADER_CVS_GAJAH_MADA_BACKGROUND',	0					);
