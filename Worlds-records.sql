create table player(
  id serial,
  user_name varchar,
  primary key(id)
  );
insert into player (user_name) values
  ('Doran'), ('Peanut'), ('Chovy'), ('Ruler'), ('Lehends'),
  ('Breathe'), ('Wei'), ('Xiaohu'), ('GALA'), ('Ming'),
  ('Zeus'), ('Oner'), ('Faker'), ('Gumayusi'), ('Keria')
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
  ('GEN G'), ('RNG'), ('T1')
;

create table matches(
   id serial,
   date_name varchar,
   primary key(id)
);
   
insert into matches (date_name) values
   ('Friday, October 7'), ('Saturday, October 8'), ('Sunday, October 9')
;

create table game_category(
  id serial,
  category varchar,
  primary key(id)
);
  
insert into game_category (category) values
	('Groups'), ('Quarterfinals'), ('Semifinals'), ('Finals')
;

create table score(
   id serial,
   kills int,
   deaths int,
   assists int,
  primary key(id)
   );
   
 insert into score (kills, deaths, assists) values
 (floor(random() * 10), floor(random() * 10), floor(random() * 20))
 ;

# many-to-many relationship between players, team, role, matches, and score
 create table game_match(
   user_id integer,
   role_id integer,
   team_id integer,
   match_id integer,
   category_id integer,
   score_id integer,
   constraint fk_user_id foreign key(user_id) references player(id),
   constraint fk_role_id foreign key(role_id) references roles(id),
   constraint fk_team_id foreign key(team_id) references team(id),
   constraint fk_match_id foreign key(match_id) references matches(id),
   constraint fk_category_id foreign key(category_id) references game_category(id),
   constraint fk_score_id foreign key(score_id) references score(id)
   );
   
insert into game_match(user_id, role_id, team_id, match_id, category_id, score_id) values
(1, 1, 1, 1, 1, 1)
;
