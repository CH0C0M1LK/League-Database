## Create a view showing the records of all players games and their scores
#select team.team_name as team_name, player.user_name as player_name, roles.role_name as roles, #dates.date_name, game_category.category as category, champion.champion as champion_selected, kills || '/' || #deaths || '/' || assists as KDA from game_score
#join player on game_score.user_id = player.id
#join roles on game_score.role_id = roles.id
#join team on game_score.team_id = team.id
#join dates on game_score.date_id = dates.id
#join game_category on game_score.category_id = game_category.id
#join champion on game_score.champion_id = champion.id
#join dragon_element on game_score.element_id = dragon_element.id
#;

##create a view showing the records of all different elemental dragons killed by a team
#select team.team_name, dragon_element.elemental || ' ' || avg (dragon) as avg_dragons_killed from game_score
#join dragon_element on game_score.element_id = dragon_element.id
#join team on game_score.team_id = team.id
#group by team.team_name, dragon_element.elemental
#order by team.team_name
#;

## creates a view averaging a players overall score for all games played
#select player.user_name as player_name, avg (kills) as average_kills, avg (deaths) as average_deaths, avg (assists) as average_assists from game_score 
#join player on game_score.user_id = player.id
#where player.user_name='Faker'
#group by player.user_name
#;

## creates a view for averaging all players overall score in a team for all games played
#select team.team_name as team_name, player.user_name as player_name, avg (kills) as average_kills, avg (deaths) as average_deaths, avg (assists) as average_assists
#from game_score 
#join player on game_score.user_id = player.id
#join team on game_score.team_id = team.id
#where team.team_name='T1'
#group by player.user_name, team.team_name
#;

## creates a view for all players with the role filtered
#select team.team_name as team_name, player.user_name as player_name, roles.role_name as roles from game_score
#join player on game_score.user_id = player.id
#join roles on game_score.role_id = roles.id
#join team on game_score.team_id = team.id
#where roles.role_name = 'Top'
#group by team.team_name, player.user_name, roles.role_name

## create a view where each players performance in every game is rated on how well they played
#select team.team_name as team_name, player.user_name as player_name, roles.role_name as roles, #champion.champion as champion_selected, kills || '/' || deaths || '/' || assists as KDA,
#case
#	when kills = 0 and deaths >= 8  then 'should be kicked'
#		when kills >= 1 and deaths <= 8 then 'bad game for the player'
#			when kills >= 5 and deaths <= 5 then 'poor performance'
#            when kills >= 5 and kills <= 10 and deaths >= 5 and deaths <= 10 then 'decent'
#        when kills <= 5 and deaths <= 10 then 'a little bit of a troller'
#	when kills >= 7 and deaths = 0 then 'carried the game'
#end category
#from game_score
#join team on game_score.team_id = team.id
#join player on game_score.user_id = player.id
#join roles on game_score.role_id = roles.id
#join champion on game_score.champion_id = champion.id
#order by player.user_name asc
