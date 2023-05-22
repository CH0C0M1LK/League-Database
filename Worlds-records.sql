create table player(
  id serial,
  user_name varchar,
  primary key(id)
  );
  
insert into player (user_name) values
  ('Doran'), ('Peanut'), ('Chovy'), ('Ruler'), ('Lehends'),
  ('Breathe'), ('Wei'), ('Xiaohu'), ('GALA'), ('Ming'),
  ('Zeus'), ('Oner'), ('Faker'), ('Gumayusi'), ('Keria'),
  ('Flandre'), ('JieJie'), ('Scout'), ('Viper'), ('Meiko'),
  ('Wunder'), ('Razork'), ('Humanoid'), ('Upset'), ('Hylissang'),
  ('369'), ('Kanavi'), ('Yagao'), ('Hope'), ('Missing'),
  ('Impact'), ('Inspired'), ('jojopyun'), ('Kaori'), ('Vulcan'),
  ('Rest'), ('Gemini'), ('Mission'), ('Shunn'), ('Koala'),
  ('Ssumday'), ('Closer'), ('Abbedagge'), ('FBI'), ('huhi'),
  ('BrokenBlade'), ('Jankos'), ('caPs'), ('Flakked'), ('Targamas'),
  ('Nuguri'), ('Canyon'), ('ShowMaker'), ('deokdam'), ('Kellin'),
  ('Fudge'), ('Blaber'), ('Jensen'), ('Berserker'), ('Zven'),
  ('Wayward'), ('Tian'), ('knight'), ('JackeyLove'), ('Mark'),
  ('Kiaya'), ('Levi'), ('Kati'), ('Sty1e'), ('Bie'),
  ('Kingen'), ('Pyosik'), ('Zeka'), ('Deft'), ('BeryL'),
  ('Odoamne'), ('Malrang'), ('Larssen'), ('Comp'), ('Trymbi')
  ;
  
create table roles(
  id serial,
  role_name varchar,
  primary key(id)
  );
  
insert into roles (role_name) values
('Top'), ('Jungle'), ('Middle'), ('ADC'), ('Support')
;
  
create table team(
  id serial,
  team_name varchar,
  primary key(id)
  );
  
insert into team (team_name) values
  ('GEN G'), ('RNG'), ('T1'), ('EDG'),
  ('FNC'), ('EG'), ('JDG'), ('CFO'), 
  ('100T'), ('G2'), ('DK'), ('C9'),
  ('TES'), ('GAM'), ('DRX'), ('RGE')
  ;
  
create table dates(
   id serial,
   date_name varchar,
   primary key(id)
   );
   
insert into dates (date_name) values
   ('Friday, October 7'), ('Saturday, October 8'), ('Sunday, October 9'),
   ('Monday, October 10'), ('Thursday, October 13'), ('Friday, October 14'),
   ('Saturday, October 15'), ('Sunday, October 16'), ('Thursday, October 20'),
   ('Friday, October 21'), ('Saturday, October 22'), ('Sunday, October 23'),
   ('Saturday, October 29'), ('Sunday, October 30'), ('Saturday, November 5')

   ;
   
create table game_category(
  id serial,
  category varchar,
  primary key(id)
  );
  
insert into game_category (category) values
	('Groups'), ('Quarterfinals'), ('Semifinals'), ('Finals')
  ;

create table champion(
  id serial,
  champion varchar,
  primary key(id)
  );
  
insert into champion (champion) values
('Aatrox'), ('Ahri'), ('Akali'), ('Akshan'), ('Alistar'), ('Amumu'), ('Anivia'), ('Annie'), ('Aphelios'), ('Ashe'),

('Aurelion Sol'), ('Azir'), ('Bard'), ('Bel Veth'), ('Blitzcrank'), ('Brand'), ('Braum'), ('Caitlyn'), ('Camille'), ('Cassiopeia'),

('Cho Gath'), ('Corki'), ('Darius'), ('Diana'), ('Dr. Mundo'), ('Draven'), ('Ekko'), ('Elise'), ('Evelynn'), ('Ezreal'),

('Fiddlesticks'), ('Fiora'), ('Fizz'), ('Galio'), ('Gangplank'), ('Garen'), ('Gnar'), ('Gragas'), ('Graves'), ('Gwen'),

('Hecarim'), ('Heimerdinger'), ('Illaoi'), ('Irelia'), ('Ivern'), ('Janna'), ('Jarvan IV'), ('Jax'), ('Jayce'), ('Jhin'),

('Jinx'), ('K Sante'), ('Kai Sa'), ('Kalista'), ('Karma'), ('Karthus'), ('Kassadin'), ('Katarina'), ('Kayle'), ('Kayn'),

('Kennen'), ('Kha Zix'), ('Kindred'), ('Kled'), ('Kog Maw'), ('LeBlanc'), ('Lee Sin'), ('Leona'), ('Lillia'), ('Lissandra'),

('Lucian'), ('Lulu'), ('Lux'), ('Malphite'), ('Malzahar'), ('Maokai'), ('Master Yi'), ('Milio'), ('Miss Fortune'), ('Mordekaiser'),

('Morgana'), ('Nami'), ('Nasus'), ('Nautilus'), ('Neeko'), ('Nidalee'), ('Nilah'), ('Nocturne'), ('Nunu & Willump'),('Olaf'),

('Orianna'), ('Ornn'), ('Pantheon'), ('Poppy'), ('Pyke'), ('Qiyana'), ('Quinn'), ('Rakan'), ('Rammus'),('Rek Sai'),

('Rell'), ('Renata Glasc'), ('Renekton'), ('Rengar'), ('Riven'), ('Rumble'), ('Ryze'), ('Samira'), ('Sejuani'), ('Senna'),

('Seraphine'), ('Sett'), ('Shaco'), ('Shen'), ('Shyvana'), ('Singed'), ('Sion'), ('Sivir'), ('Skarner'), ('Sona'),

('Soraka'), ('Swain'), ('Sylas'), ('Syndra'), ('Tahm Kench'), ('Taliyah'), ('Talon'), ('Taric'), ('Teemo'),('Thresh'),

('Tristana'), ('Trundle'), ('Tryndamere'), ('Twisted Fate'), ('Twitch'), ('Udyr'), ('Urgot'), ('Varus'), ('Vayne'), ('Veigar'), 

('Vel Koz'), ('Vex'), ('Vi'), ('Viego'), ('Viktor'), ('Vladimir'), ('Volibear'), ('Warwick'), ('Wukong'),('Xayah'),

('Xerath'), ('Xin Zhao'), ('Yasuo'), ('Yone'), ('Yorick'), ('Yuumi'), ('Zac'), ('Zed'), ('Zeri'), ('Ziggs'), 

('Zilean'), ('Zoe'), ('Zyra')
  ;
  
create table dragon_element(
  id serial,
  elemental varchar,
 primary key(id)
  );
   
insert into dragon_element (elemental) values
('Infernal Drake'), ('Mountain Drake'), ('Cloud Drake'), ('Ocean Drake'), ('Hextech Drake'), ('Chemtech Drake')
;
 
# create relationship between players, team, and role

create table game_match(
  id serial,
  primary key(id),
  dates integer,
  team1_id integer,
  team2_id integer,
  winning_team integer,
  constraint fk_dates foreign key(dates) references dates(id),
  constraint fk_team1_id foreign key(team1_id) references team(id),
  constraint fk_team2_id foreign key(team2_id) references team(id),
  constraint fk_winning_team foreign key(winning_team) references team(id)
  );
  
insert into game_match (dates, team1_id, team2_id, winning_team) values
  (1, 1, 2, 2), (1, 3, 4, 3), (1, 7, 6, 7), (1, 8, 9, 8), (1, 10, 11, 11), (1, 12, 5, 5),
  (2, 11, 7, 7), (2, 13, 14, 13), (2, 4, 12, 4), (2, 5, 3, 5), (2, 6, 10, 10), (2, 16, 15, 16),
  (3,15,13,15), (3,2,8,2), (3,12,3,3), (3,4,5,4), (3,9,1,1), (3,14,16,16),
  (4,14,15,15), (4,1,8,1), (4,9,2,2), (4,11,6,11), (4,16,13,16), (4,7,10,7),
  (5,4,3,3), (5,3,12,3), (5,5,4,4), (5,12,4,4), (5,3,5,3), (5,5,12,12),
  (6,7,11,11), (6,6,11,11), (6,10,7,7), (6,11,10,11), (6,6,7,7), (6,10,6,6),
  (7,13,15,13), (7,13,16,13), (7,15,14,15), (7,15,16,15), (7,14,13,14), (7,16,14,16),
  (8,2,1,1), (8,8,2,2), (8,1,9,1), (8,2,9,2), (8,8,1,1), (8,9,8,9),
  (9,7,16,7),
  (10,3,2,3),
  (11,1,11,1),
  (12,15,4,15),
  (13,3,7,3),
  (14,1,15,15),
  (15,3,15,15)
 ; 

# many-to-many relationship between players, team, role, matches, and score
 create table game_score(
   user_id integer,
   role_id integer,
   team_id integer,
   date_id integer,
   category_id integer,
   champion_id integer,
   element_id integer,
   kills integer,
   deaths integer,
   assists integer,
   baron integer,
   dragon integer,
   constraint fk_user_id foreign key(user_id) references player(id),
   constraint fk_role_id foreign key(role_id) references roles(id),
   constraint fk_team_id foreign key(team_id) references team(id),
   constraint fk_date_id foreign key(date_id) references dates(id),
   constraint fk_category_id foreign key(category_id) references game_category(id),
   constraint fk_champion_id foreign key(champion_id) references champion(id),
   constraint fk_element_id foreign key(element_id) references dragon_element(id)
   );
   
insert into game_score(user_id, role_id, team_id, date_id, category_id, champion_id, element_id, dragon, kills, deaths, assists) values
# oct 7 groups
#Gen v rng
(1, 1, 1, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(2, 2, 1, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(3, 3, 1, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(4, 4, 1, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(5, 5, 1, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(6, 1, 2, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(7, 2, 2, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(8, 3, 2, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(9, 4, 2, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(10, 5, 2, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#t1 v edg
(11, 1, 3, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(12, 2, 3, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(13, 3, 3, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(14, 4, 3, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(15, 5, 3, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(16, 1, 4, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(17, 2, 4, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(18, 3, 4, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(19, 4, 4, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(20, 5, 4, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#jdg v eg
(26, 1, 7, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(27, 2, 7, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(28, 3, 7, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(29, 4, 7, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(30, 5, 7, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(31, 1, 6, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(32, 2, 6, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(33, 3, 6, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(34, 4, 6, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(35, 5, 6, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#cfo v 100t
(36, 1, 8, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(37, 2, 8, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(38, 3, 8, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(39, 4, 8, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(40, 5, 8, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(41, 1, 9, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(42, 2, 9, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(43, 3, 9, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(44, 4, 9, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(45, 5, 9, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#g2 v dk
(46, 1, 10, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(47, 2, 10, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(48, 3, 10, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(49, 4, 10, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(50, 5, 10, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(51, 1, 11, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(52, 2, 11, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(53, 3, 11, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(54, 4, 11, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(55, 5, 11, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#c9 v fnc
(56, 1, 12, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 12, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 12, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 12, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(20, 5, 12, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(21, 1, 5, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(22, 2, 5, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(23, 3, 5, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(24, 4, 5, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(25, 5, 5, 1, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#GROUPS SAT OCT 8
#rge v drx
(76, 1, 16, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(77, 2, 16, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(78, 3, 16, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(79, 4, 16, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(80, 5, 16, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(71, 1, 15, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(72, 2, 15, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(73, 3, 15, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(74, 4, 15, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(75, 5, 15, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#eg v g2
(31, 1, 6, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(32, 2, 6, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(33, 3, 6, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(34, 4, 6, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)), 
(35, 5, 6, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(46, 1, 10, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(47, 2, 10, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(48, 3, 10, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(49, 4, 10, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(50, 5, 10, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#fnc v t1
(21, 1, 5, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(22, 2, 5, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(23, 3, 5, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(24, 4, 5, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(25, 5, 5, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(11, 1, 3, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(12, 2, 3, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(13, 3, 3, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(14, 4, 3, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(15, 5, 3, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#edg v c9
(16, 1, 4, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(17, 2, 4, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(18, 3, 4, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(19, 4, 4, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(20, 5, 4, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(56, 1, 12, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 12, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 12, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 12, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(60, 5, 12, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#tes v gam
(61, 1, 13, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(62, 2, 13, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(63, 3, 13, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(64, 4, 13, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(65, 5, 13, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(66, 1, 14, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(67, 2, 14, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(68, 3, 14, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(69, 4, 14, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(70, 5, 14, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#dk v jdg
(56, 1, 11, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 11, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 11, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 11, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(60, 5, 11, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(26, 1, 7, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(27, 2, 7, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(28, 3, 7, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(29, 4, 7, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(30, 5, 7, 2, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

# oct9
#drx v tes
(71, 1, 15, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(72, 2, 15, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(73, 3, 15, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(74, 4, 15, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(75, 5, 15, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(61, 1, 13, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(62, 2, 13, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(63, 3, 13, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(64, 4, 13, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(65, 5, 13, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#rng v cfo
(6, 1, 2, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(7, 2, 2, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(8, 3, 2, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(9, 4, 2, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(10, 5, 2, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(36, 1, 8, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(37, 2, 8, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(38, 3, 8, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(39, 4, 8, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(40, 5, 8, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#c9 v t1
(56, 1, 12, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 12, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 12, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 12, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(60, 5, 12, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(11, 1, 3, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(12, 2, 3, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(13, 3, 3, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(14, 4, 3, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(15, 5, 3, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#edg v fnc
(16, 1, 4, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(17, 2, 4, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(18, 3, 4, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(19, 4, 4, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(20, 5, 4, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(21, 1, 5, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(22, 2, 5, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(23, 3, 5, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(24, 4, 5, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(25, 5, 5, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#100t v gen
(41, 1, 9, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(42, 2, 9, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(43, 3, 9, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(44, 4, 9, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(45, 5, 9, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(1, 1, 1, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(2, 2, 1, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(3, 3, 1, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(4, 4, 1, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(5, 5, 1, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#gam v rge
(66, 1, 14, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(67, 2, 14, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(68, 3, 14, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(69, 4, 14, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(70, 5, 14, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(76, 1, 16, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(77, 2, 16, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(78, 3, 16, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(79, 4, 16, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(80, 5, 16, 3, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#GROUPS MON OCT 10
#jdg v g2
(26, 1, 7, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(27, 2, 7, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(28, 3, 7, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(29, 4, 7, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(30, 5, 7, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(46, 1, 10, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(47, 2, 10, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(48, 3, 10, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(49, 4, 10, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(50, 5, 10, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#rge v tes
(76, 1, 16, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(77, 2, 16, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(78, 3, 16, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(79, 4, 16, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(80, 5, 16, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(61, 1, 13, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(62, 2, 13, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(63, 3, 13, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(64, 4, 13, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(65, 5, 13, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#dk v eg
(56, 1, 11, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 11, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 11, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 11, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(60, 5, 11, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(31, 1, 6, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(32, 2, 6, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(33, 3, 6, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(34, 4, 6, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(45, 5, 6, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#100t v rng
(41, 1, 9, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(42, 2, 9, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(43, 3, 9, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(44, 4, 9, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(45, 5, 9, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(6, 1, 2, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(7, 2, 2, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(8, 3, 2, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(9, 4, 2, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(10, 5, 2, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#gen v cfo
(1, 1, 1, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(2, 2, 1, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(3, 3, 1, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(4, 4, 1, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(5, 5, 1, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(36, 1, 8, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(37, 2, 8, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(38, 3, 8, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(39, 4, 8, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(40, 5, 8, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#gam v drx
(66, 1, 14, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(67, 2, 14, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(68, 3, 14, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(69, 4, 14, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(70, 5, 14, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(71, 1, 15, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(72, 2, 15, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(73, 3, 15, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(74, 4, 15, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(75, 5, 15, 4, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#oct 13
#edg v t1
(16, 1, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(17, 2, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(18, 3, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(19, 4, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(20, 5, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(11, 1, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(12, 2, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(13, 3, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(14, 4, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(15, 5, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#t1 v c9
(11, 1, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(12, 2, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(13, 3, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(14, 4, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(15, 5, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(56, 1, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(60, 5, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#fnc v edg
(21, 1, 5, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(22, 2, 5, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(23, 3, 5, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(24, 4, 5, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(25, 5, 5, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(16, 1, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(17, 2, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(18, 3, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(19, 4, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(20, 5, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#c9 v edg
(56, 1, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(60, 5, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(16, 1, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(17, 2, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(18, 3, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(19, 4, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(20, 5, 4, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#t1 v fnc
(11, 1, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(12, 2, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(13, 3, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(14, 4, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(15, 5, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(21, 1, 5, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(22, 2, 5, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(23, 3, 5, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(24, 4, 5, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(25, 5, 5, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#fnc v c9
(11, 1, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(12, 2, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(13, 3, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(14, 4, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(15, 5, 3, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(56, 1, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(60, 5, 12, 5, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#GROUPS FRI OCT 14
#g2 v eg
(46, 1, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(47, 2, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(48, 3, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(49, 4, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(50, 5, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(31, 1, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(32, 2, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(33, 3, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(34, 4, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(35, 5, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#eg v jdg
(31, 1, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(32, 2, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(33, 3, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(34, 4, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(35, 5, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(26, 1, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(27, 2, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(28, 3, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(29, 4, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(30, 5, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#dk v g2
(56, 1, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(60, 5, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(46, 1, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(47, 2, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(48, 3, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(49, 4, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(50, 5, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#g2 v jdg
(46, 1, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(47, 2, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(48, 3, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(49, 4, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(50, 5, 10, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(26, 1, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(27, 2, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(28, 3, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(29, 4, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(30, 5, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#eg v dk
(31, 1, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(32, 2, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(33, 3, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(34, 4, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(35, 5, 6, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(56, 1, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(60, 5, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#jdg v dk
(26, 1, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(27, 2, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(28, 3, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(29, 4, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(30, 5, 7, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(56, 1, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(57, 2, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(58, 3, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(59, 4, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(60, 5, 11, 6, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#oct 15
#tes v drx
(61, 1, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(62, 2, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(63, 3, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(64, 4, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(65, 5, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(71, 1, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(72, 2, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(73, 3, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(74, 4, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(75, 5, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#tes v rge
(61, 1, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(62, 2, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(63, 3, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(64, 4, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(65, 5, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(76, 1, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(77, 2, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(78, 3, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(79, 4, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(80, 5, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#drx v gam
(71, 1, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(72, 2, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(73, 3, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(74, 4, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(75, 5, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(66, 1, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(67, 2, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(68, 3, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(69, 4, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(70, 5, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#drx v rge
(71, 1, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(72, 2, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(73, 3, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(74, 4, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(75, 5, 15, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(76, 1, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(77, 2, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(78, 3, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(79, 4, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(80, 5, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#gam v tes
(66, 1, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(67, 2, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(68, 3, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(69, 4, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(70, 5, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(61, 1, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(62, 2, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(63, 3, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(64, 4, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(65, 5, 13, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#rge v gam
(76, 1, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(77, 2, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(78, 3, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(79, 4, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(80, 5, 16, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(66, 1, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(67, 2, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(68, 3, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(69, 4, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(70, 5, 14, 7, 1, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#GROUPS SUN OCT 16
#100t v cfo
(41, 1, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(42, 2, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(43, 3, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(44, 4, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(45, 5, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(36, 1, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(37, 2, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(38, 3, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(39, 4, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(40, 5, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#cfo v gen
(36, 1, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(37, 2, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(38, 3, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(39, 4, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(40, 5, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(1, 1, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(2, 2, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(3, 3, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(4, 4, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(5, 5, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#rng v 100t
(6, 1, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(7, 2, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(8, 3, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(9, 4, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(10, 5, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(41, 1, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(42, 2, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(43, 3, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(44, 4, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(45, 5, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#gen v 100t
(1, 1, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(2, 2, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(3, 3, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(4, 4, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(5, 5, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(41, 1, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(42, 2, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(43, 3, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(44, 4, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(45, 5, 9, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#cfo v rng
(36, 1, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(37, 2, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(38, 3, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(39, 4, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(40, 5, 8, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(6, 1, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(7, 2, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(8, 3, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(9, 4, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(10, 5, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#rng v gen
(6, 1, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(7, 2, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(8, 3, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(9, 4, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(10, 5, 2, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(1, 1, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(2, 2, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(3, 3, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(4, 4, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(5, 5, 1, 8, 1, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#oct 20 quarter finals
#jdg v rge
(26, 1, 7, 9, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(27, 2, 7, 9, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(28, 3, 7, 9, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(29, 4, 7, 9, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(30, 5, 7, 9, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(76, 1, 16, 9, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(77, 2, 16, 9, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(78, 3, 16, 9, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(79, 4, 16, 9, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(80, 5, 16, 9, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#QUARTER FINALS FRI OCT 21
#t1 v rng
(11, 1, 3, 10, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(12, 2, 3, 10, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(13, 3, 3, 10, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(14, 4, 3, 10, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(15, 5, 3, 10, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(6, 1, 2, 10, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(7, 2, 2, 10, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(8, 3, 2, 10, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(9, 4, 2, 10, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(10, 5, 2, 10, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#oct 22
#gen v dk
(1, 1, 1, 11, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(2, 2, 1, 11, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(3, 3, 1, 11, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(4, 4, 1, 11, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(5, 5, 1, 11, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(51, 1, 11, 11, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(52, 2, 11, 11, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(53, 3, 11, 11, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(54, 4, 11, 11, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(55, 5, 11, 11, 2, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#QUARTER FINALS SUN OCT 23
#drx v edg
(71, 1, 15, 12, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(72, 2, 15, 12, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(73, 3, 15, 12, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(74, 4, 15, 12, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(75, 5, 15, 12, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(16, 1, 4, 12, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(17, 2, 4, 12, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(18, 3, 4, 12, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(19, 4, 4, 12, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(20, 5, 4, 12, 2, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#oct 29 semifinals
#t1 v jdg
(11, 1, 3, 13, 3, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(12, 2, 3, 13, 3, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(13, 3, 3, 13, 3, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(14, 4, 3, 13, 3, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(15, 5, 3, 13, 3, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(26, 1, 7, 13, 3, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(27, 2, 7, 13, 3, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(28, 3, 7, 13, 3, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(29, 4, 7, 13, 3, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(20, 5, 7, 13, 3, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#SEMI FINALS SUN OCT 30
#gen v drx
(1, 1, 1, 14, 3, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(2, 2, 1, 14, 3, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(3, 3, 1, 14, 3, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(4, 4, 1, 14, 3, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(5, 5, 1, 14, 3, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(71, 1, 15, 14, 3, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(72, 2, 15, 14, 3, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(73, 3, 15, 14, 3, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(74, 4, 15, 14, 3, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(75, 5, 15, 14, 3, random()*162+1, random()*5+1, floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),

#nov 5 finals
#t1 v drx
(11, 1, 3, 15, 4, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(12, 2, 3, 15, 4, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(13, 3, 3, 15, 4, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(14, 4, 3, 15, 4, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(15, 5, 3, 15, 4, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
#vs
(71, 1, 15, 15, 4, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(72, 2, 15, 15, 4, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(73, 3, 15, 15, 4, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(74, 4, 15, 15, 4, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20)),
(75, 5, 15, 15, 4, floor(random() * 162 + 1), floor(random() * 5 + 1), floor(random() * 8), floor(random() * 10), floor(random() * 10), floor(random() * 20))
;
