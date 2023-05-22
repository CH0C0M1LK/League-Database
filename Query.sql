## Create a view showing the records of all players games and their scores
select team.team_name as team_name, player.user_name as player_name, roles.role_name as roles, dates.date_name, game_category.category as category, champion.champion as champion_selected, kills || '/' || deaths || '/' || assists as KDA from game_score
join player on game_score.user_id = player.id
join roles on game_score.role_id = roles.id
join team on game_score.team_id = team.id
join dates on game_score.date_id = dates.id
join game_category on game_score.category_id = game_category.id
join champion on game_score.champion_id = champion.id
join dragon_element on game_score.element_id = dragon_element.id
;

select team.team_name, dragon_element.elemental || ' ' || avg (dragon) as avg_dragons_killed from game_score
join dragon_element on game_score.element_id = dragon_element.id
join team on game_score.team_id = team.id
group by team.team_name, dragon_element.elemental
order by team.team_name
;

select player.user_name as player_name, avg (kills) as average_kills
from game_score 
join player on game_score.user_id = player.id
where player.user_name='Faker'
group by player.user_name
;

select player.user_name as player_name, team.team_name as team_name, avg (kills) as average_kills
from game_score 
join player on game_score.user_id = player.id
join team on game_score.team_id = team.id
where team.team_name='T1'
group by player.user_name, team.team_name
;

#select team.team_name, dragon_element.elemental || ' ' || dragon as dragons_killed from game_score
#join dragon_element on game_score.element_id = dragon_element.id
#join team on game_score.team_id = team.id

# aggregation
#select count(*) from game_score
#join player on game_score.user_id = player.id
#join roles on game_score.role_id = roles.id
#join team on game_score.team_id = team.id
#join dates on game_score.date_id = dates.id
#join game_category on game_score.category_id = game_category.id
#join champion on game_score.champion_id = champion.id
#where team.team_name = 'GEN G'
