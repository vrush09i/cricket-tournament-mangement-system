  
use cricket;

select umpire_name from umpire minus ;select umpire_name from umpire
where umpire_id in(select umpire_id from matches where stadium='Eden Gardens');

select umpire_name from umpire minus ;select umpire_name from umpire natural join matches where stadium='Wankhede';

select distinct coach_name from coach where team_id in(select team_id 
from player where no_of_totalruns>500 );

select distinct coach_name from coach inner join player on coach.team_id
= player.team_id where(player.no_of_totalruns>500);

select distinct coach_name from coach minus ;select distinct coach_name from coach where team_id in(select team_id 
from player where no_of_totalruns>500 );

select country_name from team where team_id in(select team_id from player
 where batting_average >60);
 
 select country_name from team natural join player where batting_average>60;

select country_name from team minus ;select country_name from team where team_id in(select team_id from player
 where batting_average >60);

 select wk_name from WICKET_KEEPER where team_id in(select team_id from
 captain where captain_name=wk_name);

 select wk_name from WICKET_KEEPER natural join captain where captain_name =wk_name;
 
 select wk_name from WICKET_KEEPER minus ;select wk_name from WICKET_KEEPER where team_id in(select team_id from captain where captain_name=wk_name);
 
 select player_id, upper(player_name) from player where type_of_bowler in(select type_of_bowler from player group by type_of_bowler having count(*)>1);

 alter table player drop column number_of_matches;

 delete from coach where coach_id='CH596';
 
 call get_team('IND1221');
 
 call get_stadium('MAT201');
 
 select * from elimination;
 
 delete from team where team_id = 'BAN9852';
 
 select * from elimination;
 
 select * from player;
 
 update team set team_id = 'AUS7895' where team_id = 'AUS2174';
 
 select * from team;
 
 select * from player;
