select player.user_name as player_name, roles.role_name as roles, team.team_name as team_name, matches.date_name, game_category.category as category, champion.champion as champion_selected, dragon_element.elemental || ' ' || dragon as dragons_killed, kills || '/' || deaths || '/' || assists as KDA
from game_match
join player on game_match.user_id = player.id
join roles on game_match.role_id = roles.id
join team on game_match.team_id = team.id
join matches on game_match.match_id = matches.id
join game_category on game_match.category_id = game_category.id
join champion on game_match.champion_id = champion.id
join dragon_element on game_match.element_id = dragon_element.id
;

select team.team_name, dragon_element.elemental || ' ' || dragon as dragons_killed from game_match
join dragon_element on game_match.element_id = dragon_element.id
join team on game_match.team_id = team.id

select player.user_name as player_name, avg (kills) as average_kills
from game_match 
join player on game_match.user_id = player.id
where player.user_name='Faker'
group by player.user_name

select player.user_name as player_name, team.team_name as team_name, avg (kills) as average_kills
from game_match 
join player on game_match.user_id = player.id
join team on game_match.team_id = team.id
where team.team_name='T1'
group by player.user_name, team.team_name
