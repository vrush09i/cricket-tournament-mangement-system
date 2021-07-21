create database cricket;
use cricket;
  
create table TEAM(
    team_id varchar(30) primary key,
    team_rank INT(3),
    team_name varchar(20) not null,
    country_name varchar(20),
    no_of_wins INT(3),
    no_of_loses INT(3),
    no_of_draws int(3),
    no_of_bowlers int(2),
    no_of_batsmans int(2)
);

insert into team values(
    'IND1221', 1, 'MEN IN BLUE','INDIA', 5, 1, 0, 6, 7
);
Insert into team values(
    'AUS2174', 4, 'KANGAROO','AUSTRAILA', 3, 3, 0, 5, 6
);
Insert into team values(
    'SA5412', 3, 'PROTEA','SOUTH AFRICA', 3, 2, 1, 8, 5
);
Insert into team values(
    'NZ5687', 2, 'BLACK CAPS','NEW ZEALAND', 4, 2, 0, 6, 7
);
Insert into team values(
    'BAN9852', 5, 'TIGERS','BANGLADESH', 2, 4 , 0, 7, 7
);

create table WICKET_KEEPER(
    team_id varchar(30) references TEAM,
    wk_name varchar(30)
);

insert into WICKET_KEEPER values(
    'IND1221','MS Dhoni'
);
insert into WICKET_KEEPER values(
    'IND1221','Dinesh Kartik'
);
insert into WICKET_KEEPER values(
    'AUS2174','Tim Lee'
);
insert into WICKET_KEEPER values(
    'AUS2174','Peter Hegward'
);
insert into WICKET_KEEPER values(
    'AUS2174','Hefer Kingsly'
);

create table UMPIRE(
    umpire_id varchar(30) primary key,
    umpire_name varchar(30),
    no_of_matches int(4),
    country varchar(20)
);

insert into UMPIRE values (
    'UMP41002', 'Kumar Dharmasena', 103, 'Sri Lanka'
);
insert into UMPIRE values (
    'UMP74101', 'Aleem Dar', 207, 'Pakistan'
);
insert into UMPIRE values (
    'Ump52410', 'Anil Chaudhary', 19, 'India'
);
insert into UMPIRE values (
    'UMP85201', 'Ian Gould', 140, 'England'
);
insert into UMPIRE values (
    'UMP55200', 'Tony Hill', 96, 'New Zealand'
);

create table PLAYER(
    player_id varchar(30) primary key,
    team_id varchar(30) references TEAM,
    no_of_worldcups int(2),
    number_of_matches int(3),
    batting_average decimal(4,2) ,
    no_of_sixes int(3),
    no_of_fours int(3),
    no_of_totalruns int(4),
    no_of_t20 int(3),
    no_of_odi int(3),
    no_of_test int(3),
    no_of_wickets int(2),
    type_of_bowler varchar(30),
    economy decimal(4,2)
);

insert into PLAYER values (
    'PLR17410', 'IND1221', 2, 13, 58.47,7,24,800,74,120,20,1,'medium',3.2
);

insert into PLAYER values (
    'PLR74203', 'AUS2174', 1, 6, 67.44, 10,39,463,41,210,140 ,1,'slow',8.5
);

insert into PLAYER values (
    'PLR45987', 'SA5412', 3, 4, 99.4, 4, 47,985, 24,63,65,1,'medium-slow',11.2
);

insert into PLAYER values (
    'PLR20147', 'NZ5687', 1, 12, 12.2, 1, 3,85, 52 ,10,74,1,'legspin',18.3
);

insert into PLAYER values (
    'PLR65200', 'BAN9852', 2, 9, 4.24, 0,1 ,21,77, 30,2,1,'fast',17.3
);

insert into PLAYER values (
    'PLR75401', 'IND1221', 3, 11, 7.5, 1,1 ,23,56, 23,5,7,'fast',17.3
);

create table COACH(
    coach_id varchar(30) primary key,
    team_id varchar(30) references TEAM,
    coach_name varchar(30)
);

insert into COACH values(
    'CH417', 'IND1221', 'RAVI SHASTRI'
);
insert into COACH values(
    'CH140', 'AUS2174', 'JUSTIN LANGER'
);
insert into COACH values(
    'CH223', 'SA5412', 'OTTIS GIBSON'
);
insert into COACH values(
    'CH398', 'NZ5687', 'GARY STEAD'
);
insert into COACH values(
    'CH748', 'BAN9852', 'RUSSEL DOMINGO'
);

insert into COACH values(
    'CH596', 'IND1221', 'GARY KISTERN'
);


create table CAPTAIN(
    captain_id varchar(30) primary key,
    captain_name varchar(30),
    team_id varchar(30) references TEAM,
    player_id varchar(30),
    year_of_captaincy int(2),
    no_of_wins int(4)
);

insert into captain values(
    'CAP11452', 'MS DHONI', 'IND1221','PLR44567', 4,56
);
insert into captain values(
    'CAP21478', 'DALE STEYN', 'SA5412','PLR10235', 7,74
);
insert into captain values(
    'CAP30214', 'MICHAEL CLARKE', 'AUS2174','PLR74138', 9,100
);
insert into captain values(
    'CAP14789', 'TAMIM IQBAL', 'BAN9852','PLR89562',2,20
);
insert into captain values(
    'CAP36957', 'ROSS TAYLOR', 'NZ5687','PLR957417', 5,85
);

create table MATCHES(
    match_id varchar(20),
    match_date date,
    match_time time(0),
    team_1_name varchar(30),
    team_2_name varchar(30),
    loser varchar(30),
    winner varchar(30),
    stadium varchar(30),
    umpire_id varchar(30) references umpire
); 

insert into MATCHES values(
    'MAT101',str_to_date('12-03-2011','%d-%m-%Y'),time('15:30'),'India','Bangladesh','Bangladesh','India','Feroz Shah Kotla','UMP55200'
);
insert into MATCHES values( 
    'MAT201',str_to_date('15-03-2011','%d-%m-%Y'),time('9:30'),'England','Australia','England','Australia','Eden Gardens','UMP41002'
);
insert into MATCHES values(
    'MAT301',str_to_date('21-03-2011','%d-%m-%Y'),time('11:30'),'Sri Lanka','Bangladesh','Bangladesh','Sri Lanka','M.A. Chidambaram','UMP74101'
);
insert into MATCHES values(
    'MAT401',str_to_date('23-03-2011','%d-%m-%Y'),time('15:30'),'New Zealand','South Africa','South Africa','New Zealand','Sardar Patel','UMP85201'
);
insert into MATCHES values(
    'MAT501',str_to_date('26-03-2011','%d-%m-%Y'),time('8:30'),'England','India','England','India','Wankhede','Ump52410'
);
create table PLAYS(
    team_id varchar(30) references TEAM,
    match_id varchar(20) references MATCHES
);
insert into Plays values(
    'IND1221','MAT101'
);
insert into Plays values(
    'AUS2174','MAT201'
);
insert into Plays values(
    'BAN9852','MAT301'
);
insert into Plays values(
    'NZ5687','MAT401'
);
insert into Plays values(
    'IND1221','MAT501'
);
create table UMPIRED_BY(
    match_id varchar(20) references MATCHES,
    umpire_id varchar(30) references UMPIRE
);

insert into Umpired_by values(
    'MAT501','UMP55200'
);
insert into Umpired_by values(
    'MAT301','Ump52410'
);
insert into Umpired_by values(
    'MAT101','UMP41002'
);
insert into Umpired_by values(
    'MAT401','UMP74101'
);
insert into Umpired_by values(
    'MAT201','Ump52410'
);

alter table team add  total_matches  int(5);
update team set total_matches=no_of_draws + no_of_wins + no_of_loses;

alter table player add player_name varchar(20);
update player set player_name = '&player_name' where player_id = '&player_id';


-- to perform stored procedure 
create table elimination
(
teamid  varchar(10) primary key,
cntry_name varchar(15),
rankk int(2),
teamName varchar(15),
noLoses int(2)
);
