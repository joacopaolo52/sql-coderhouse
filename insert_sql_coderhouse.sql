

USE sql_coderhouse;


INSERT INTO CONTINENTS (continent_id , continent_name)
VALUES 	(1 ,'America'),
		(2 , 'Europe'),
        (3 , 'Asia'),
        (4 , 'Africa'),
        (5 , 'Oceania'),
        (6 , 'Antarctica');
	
    
    
    INSERT INTO CONFEDERATIONS (confederation_id , confederation_name, continent_id )
VALUES 	(1 ,' AFC ' , 3 ) , -- ASIA
		(2 ,' CAF ' , 4 ) ,  -- AFRICA
        (3 ,' CONCACAF ' , 1 ) ,  
        (4 ,' CONMEBOL ' , 1 ) , 
        (5 ,' OFC ' , 5 ) , -- OCEANIA
        (6 ,' UEFA ' , 2 ) ;
        

INSERT INTO `COUNTRY` (`country_name`, `confederation_id`)
VALUES
('España', 6), ('México', 3), ('Argentina', 4), ('Colombia', 4), ('Perú', 4),
('Chile', 4), ('Ecuador', 4), ('Venezuela', 4), ('Bolivia', 4), ('Paraguay', 4),
('Uruguay', 4), ('Guatemala', 3), ('Cuba', 3), ('Honduras', 3), ('Nicaragua', 3),
('Costa Rica', 3), ('Panamá', 3), ('El Salvador', 3), ('Estados Unidos', 3), ('Canadá', 3),
('China', 1), ('India', 1), ('Japón', 1), ('Indonesia', 1), ('Pakistán', 1),
('Bangladés', 1), ('Filipinas', 1), ('Vietnam', 1), ('Turquía', 6), ('Rusia', 6),
('Alemania', 6), ('Inglaterra', 6), ('Francia', 6), ('Italia', 6), ('Australia', 5),
('Nueva Zelanda', 5), ('Fiyi', 5), ('Samoa', 5), ('Tonga', 5), ('Papúa Nueva Guinea', 5),
('Nauru', 5), ('Islas Salomón', 5), ('Vanuatu', 5), ('Túnez', 2), ('Nigeria', 2),
('Egipto', 2), ('Kenia', 2), ('Sudáfrica', 2), ('Argentina', 4), ('Colombia', 4),
('Perú', 4), ('Chile', 4), ('Ecuador', 4), ('Venezuela', 4), ('Bolivia', 4);



-- Insertar datos en la tabla COUNTRY_TOURNAMENTS.
INSERT INTO COUNTRY_TOURNAMENTS (`country_tournament_name`, `country_id`)
VALUES
('La Liga', 1),                 -- La Liga de España
('Premier League', 2),          -- Premier League de Inglaterra
('Serie A', 3),                 -- Serie A de Italia
('Bundesliga', 4),              -- Bundesliga de Alemania
('Ligue 1', 5),                 -- Ligue 1 de Francia
('MLS', 6),                     -- Major League Soccer (EE. UU. y Canadá)
('Liga MX', 7),                 -- Liga MX de México
('Brasileirão Série A', 8),     -- Brasileirão de Brasil
('Superliga Argentina', 9),     -- Superliga Argentina de Argentina
('A-League', 10),               -- A-League de Australia
('J1 League', 11),              -- J1 League de Japón
('Chinese Super League', 12);   -- Chinese Super League de China


INSERT INTO `COUNTRY_TOURNAMENTS` (`country_tournament_name`, `country_id`)
SELECT
    CONCAT('Liga de ', `country_id`) AS `country_tournament_name`,
    `country_id`
FROM `COUNTRY`
WHERE `country_id` NOT IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);




-- Insertar datos en la tabla CONTINENTAL_TOURNAMENTS con nombres de torneos continentales
INSERT INTO `CONTINENTAL_TOURNAMENTS` (`continental_tournament_name`, `confederation_id`)
VALUES
('UEFA Champions League', 6),         -- UEFA Champions League para la confederación europea (UEFA)
('UEFA Europa League', 6),            -- UEFA Europa League para la confederación europea (UEFA)
('UEFA Conference League', 6),        -- UEFA Conference League para la confederación europea (UEFA)
('Copa Libertadores', 4),             -- Copa Libertadores para la confederación sudamericana (CONMEBOL)
('Copa Sudamericana', 4),             -- Copa Sudamericana para la confederación sudamericana (CONMEBOL)
('AFC Champions League', 1),          -- AFC Champions League para la confederación asiática (AFC)
('CONCACAF Champions League', 3),     -- CONCACAF Champions League para la confederación de América del Norte (CONCACAF)
('CAF Champions League', 2),           -- CAF Champions League para la confederación africana (CAF)
('OFC Champions League', 5);          -- OFC Champions League para la confederación de Oceanía (OFC)




-- Insertar datos para la tabla TEAMS con algunos equipos y torneos conocidos
INSERT INTO `TEAMS` (`team_name`, `country_tournament_id`, `continental_tournament_id`)
VALUES
('Real Madrid', 1, 1),              -- La Liga y UEFA Champions League
('FC Barcelona', 1, 1),             -- La Liga y UEFA Champions League
('Liverpool', 2, 1),                -- Premier League y UEFA Champions League
('Manchester City', 2, 1),          -- Premier League y UEFA Champions League
('Bayern Munich', 3, 1),            -- Bundesliga y UEFA Champions League
('Paris Saint-Germain', 6, 1),      -- Ligue 1 y UEFA Champions League
('Juventus', 7, 1),                 -- Serie A y UEFA Champions League
('Chelsea', 8, 1),                  -- Premier League y UEFA Champions League
('AC Milan', 9, 1),                 -- Serie A y UEFA Champions League
('Manchester United', 10, 1),       -- Premier League y UEFA Champions League
('Inter Milan', 11, 1),             -- Serie A y UEFA Champions League
('Arsenal', 12, 1),                 -- Premier League y UEFA Champions League
('Atlético Madrid', 13, 1),         -- La Liga y UEFA Champions League
('Borussia Dortmund', 14, 1),       -- Bundesliga y UEFA Champions League
('Ajax', 15, 1),                    -- Eredivisie y UEFA Champions League
('Tottenham Hotspur', 16, 1),       -- Premier League y UEFA Champions League
('Boca Juniors', 17, 4),            -- Primera División y Copa Libertadores
('River Plate', 18, 4),             -- Primera División y Copa Libertadores
('Flamengo', 19, 4),                -- Brasileirão y Copa Libertadores
('Palmeiras', 20, 4),               -- Brasileirão y Copa Libertadores
('Olympique Lyonnais', 21, 1),      -- Ligue 1 y UEFA Champions League
('Independiente', 22, 4),           -- Primera División y Copa Libertadores
('San Lorenzo', 23, 4),             -- Primera División y Copa Libertadores
('Olympique de Marsella', 24, 1),  -- Ligue 1 y UEFA Champions League
('AS Roma', 25, 1),                 -- Serie A y UEFA Champions League
('Fiorentina', 26, 1),              -- Serie A y UEFA Champions League
('Aston Villa', 27, 1),             -- Premier League y UEFA Champions League
('Atalanta', 28, 1),                -- Serie A y UEFA Champions League
('Sevilla FC', 29, 1),              -- La Liga y UEFA Champions League
('RB Leipzig', 30, 1),              -- Bundesliga y UEFA Champions League
('Lazio', 31, 1),                   -- Serie A y UEFA Europa League
('Shakhtar Donetsk', 32, 1),        -- Premier League de Ucrania y UEFA Europa League
('Leicester City', 33, 1),          -- Premier League y UEFA Europa League
('Napoli', 34, 1),                  -- Serie A y UEFA Europa League
('Zenit Saint Petersburg', 35, 1),  -- Premier League de Rusia y UEFA Europa League
('Villarreal', 36, 1),              -- La Liga y UEFA Europa Conference League
('Everton', 37, 1),                 -- Premier League y UEFA Europa Conference League
('West Ham United', 38, 1),         -- Premier League y UEFA Europa Conference League
('Benfica', 39, 1),                 -- Primeira Liga y UEFA Europa Conference League
('Celtic', 40, 1),                  -- Scottish Premiership y UEFA Europa Conference League
('Galatasaray', 41, 1),             -- Süper Lig y UEFA Europa Conference League
('Rangers', 42, 1);                 -- Scottish Premiership y UEFA Europa Conference League





INSERT INTO `PLAYER_VALUES` (`value_id`, `market_value`, `clause`, `clause_value`, `salary`, `player_id`)
VALUES
(1, 350000, false, null, 2500.12, 1),
(2, 720000, true, 600000, 1200.26, 2),
(3, 450000, false, null, 3000.50, 3),
(4, 620000, true, 500000, 1500.75, 4),
(5, 300000, false, null, 2800.30, 5),
(6, 550000, true, 400000, 2000.90, 6),
(7, 680000, false, null, 1800.40, 7),
(8, 420000, true, 300000, 1300.60, 8),
(9, 800000, false, null, 3200.80, 9),
(10, 350000, true, 200000, 1700.25, 10),
(11, 420000, false, null, 2800.50, 11),
(12, 580000, true, 350000, 1600.75, 12),
(13, 750000, false, null, 2200.30, 13),
(14, 490000, true, 400000, 1800.90, 14),
(15, 620000, false, null, 3100.40, 15),
(16, 800000, true, 600000, 2500.60, 16),
(17, 550000, false, null, 1900.80, 17),
(18, 680000, true, 500000, 1200.25, 18),
(19, 350000, false, null, 2400.90, 19),
(20, 720000, true, 300000, 1400.45, 20),
(21, 450000, false, null, 2600.60, 21),
(22, 580000, true, 700000, 2000.75, 22),
(23, 680000, false, null, 3000.30, 23),
(24, 490000, true, 200000, 1700.90, 24),
(25, 620000, false, null, 2800.40, 25),
(26, 750000, true, 400000, 2200.60, 26),
(27, 550000, false, null, 1500.80, 27),
(28, 680000, true, 300000, 1300.25, 28),
(29, 420000, false, null, 2600.90, 29),
(30, 800000, true, 500000, 1900.45, 30),
(31, 420000, false, null, 2800.50, 31),
(32, 580000, true, 350000, 1600.75, 32),
(33, 750000, false, null, 2200.30, 33),
(34, 490000, true, 400000, 1800.90, 34),
(35, 620000, false, null, 3100.40, 35),
(36, 800000, true, 600000, 2500.60, 36),
(37, 550000, false, null, 1900.80, 37),
(38, 680000, true, 500000, 1200.25, 38),
(39, 350000, false, null, 2400.90, 39),
(40, 720000, true, 300000, 1400.45, 40),
(41, 450000, false, null, 2600.60, 41),
(42, 580000, true, 700000, 2000.75, 42),
(43, 680000, false, null, 3000.30, 43),
(44, 490000, true, 200000, 1700.90, 44),
(45, 620000, false, null, 2800.40, 45),
(46, 750000, true, 400000, 2200.60, 46),
(47, 550000, false, null, 1500.80, 47),
(48, 680000, true, 300000, 1300.25, 48),
(49, 420000, false, null, 2600.90, 49),
(50, 800000, true, 500000, 1900.45, 50),
(51, 480000, false, null, 2300.55, 51),
(52, 630000, true, 450000, 1700.70, 52),
(53, 710000, false, null, 2000.35, 53),
(54, 520000, true, 350000, 1800.80, 54),
(55, 660000, false, null, 3000.40, 55),
(56, 780000, true, 600000, 2500.65, 56),
(57, 580000, false, null, 1900.75, 57),
(58, 700000, true, 500000, 1200.30, 58),
(59, 380000, false, null, 2400.95, 59),
(60, 740000, true, 300000, 1400.50, 60);



INSERT INTO `STATISTICS` (`statistics_id`, `games`, `goals`, `assists`, `red_cards`, `yellow_cards`, `player_id`)
VALUES
(1, 20, 10, 5, 1, 2, 1),
(2, 18, 8, 7, 0, 3, 2),
(3, 22, 15, 3, 0, 1, 3),
(4, 19, 5, 10, 2, 4, 4),
(5, 21, 12, 8, 1, 2, 5),
(6, 17, 6, 9, 0, 1, 6),
(7, 20, 18, 5, 0, 0, 7),
(8, 19, 7, 6, 1, 3, 8),
(9, 23, 14, 4, 0, 2, 9),
(10, 18, 9, 7, 2, 1, 10),
(11, 21, 11, 8, 1, 2, 11),
(12, 19, 13, 6, 0, 1, 12),
(13, 22, 7, 11, 0, 3, 13),
(14, 20, 16, 5, 1, 2, 14),
(15, 18, 10, 6, 0, 2, 15),
(16, 21, 9, 8, 1, 1, 16),
(17, 19, 14, 3, 0, 3, 17),
(18, 23, 6, 10, 2, 1, 18),
(19, 18, 11, 7, 0, 2, 19),
(20, 20, 17, 5, 1, 1, 20),
(21, 22, 8, 9, 0, 3, 21),
(22, 19, 12, 7, 1, 2, 22),
(23, 21, 15, 5, 0, 2, 23),
(24, 17, 6, 8, 0, 1, 24),
(25, 19, 13, 6, 1, 3, 25),
(26, 20, 9, 10, 0, 2, 26),
(27, 22, 17, 4, 1, 2, 27),
(28, 18, 10, 7, 0, 1, 28),
(29, 21, 8, 9, 1, 2, 29),
(30, 19, 14, 6, 0, 1, 30),
(31, 23, 7, 11, 2, 3, 31),
(32, 20, 16, 5, 1, 1, 32),
(33, 18, 11, 8, 0, 2, 33),
(34, 21, 9, 7, 1, 1, 34),
(35, 19, 12, 6, 0, 3, 35),
(36, 22, 14, 4, 1, 2, 36),
(37, 20, 17, 5, 0, 1, 37),
(38, 19, 8, 9, 1, 2, 38),
(39, 23, 11, 7, 0, 2, 39),
(40, 18, 10, 6, 2, 3, 40),
(41, 21, 9, 8, 0, 1, 41),
(42, 19, 13, 6, 1, 2, 42),
(43, 22, 7, 10, 0, 3, 43),
(44, 20, 15, 5, 1, 2, 44),
(45, 18, 10, 7, 0, 1, 45),
(46, 21, 12, 6, 1, 3, 46),
(47, 19, 14, 4, 0, 2, 47),
(48, 23, 6, 11, 2, 1, 48),
(49, 20, 16, 5, 0, 1, 49),
(50, 19, 9, 8, 1, 2, 50),
(51, 22, 14, 6, 0, 1, 51),
(52, 18, 10, 7, 1, 2, 52),
(53, 21, 8, 9, 0, 3, 53),
(54, 19, 12, 7, 1, 2, 54),
(55, 23, 11, 6, 0, 1, 55),
(56, 20, 16, 5, 1, 2, 56),
(57, 18, 9, 8, 1, 3, 57),
(58, 21, 13, 5, 0, 2, 58),
(59, 19, 14, 4, 1, 2, 59),
(60, 22, 7, 10, 0, 3, 60);
