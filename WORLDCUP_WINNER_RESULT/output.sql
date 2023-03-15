select 
    team, --selecting all the team names form subquery
    count(*) as number_of_matches_played,--counting each team names occured can give us the total number of matches played
    sum(win_Flag) as number_of_matches_win,--as we are giving lossing matches 0 flag and wining matches 1 so sum of it gives us the value of winning matches
    count(*)-sum(win_Flag) as number_of_match_loss -- and substrating winning matches from the total matches will give us the total number of match loss
from(
SELECT 
    team1 as team, 
    case when WINNER = TEAM1 then 1 else 0 end as win_Flag from ICC_WORLD_CUP --"case when...then..esle..end" syntax of case is important
UNION all --did union all so that we can set flags for all the records irespective of redundancy
SELECT 
    TEAM2 as team, 
    case when WINNER = TEAM2 then 1 else 0 end as win_Flag from ICC_WORLD_CUP)
group by team -- did the agregation so we are doing group by 
order by team;-- did orderby so that it lookes little organized


