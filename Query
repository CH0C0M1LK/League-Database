select player.user_name as player_name, roles.role_name as roles, team.team_name as team_name, matches.date_name, game_category.category as category, champion.champion as champion, score.kills || '/' || score.deaths || '/' || score.assists as KDA from game_match
join player on game_match.user_id = player.id
join roles on game_match.role_id = roles.id
join team on game_match.team_id = team.id
join matches on game_match.match_id = matches.id
join game_category on game_match.category_id = game_category.id
join champion on game_match.champion_id = champion.id
join score on game_match.score_id = score.id
