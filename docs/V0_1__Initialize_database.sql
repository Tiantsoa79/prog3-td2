create table team
(
    id     serial,
    name varchar,
    primary key (id)
);

create table player
(
    id     serial,
    name varchar,
    number integer,
    id_team   integer not null
        references team,
    primary key (id)
);

create table play_against
(
    id     serial,
    stadium varchar,
    datetime date,
    id_team_one   integer not null
        references team,
    id_team_two   integer not null
        references team,    
    primary key (id)
);

create table sponsor
(
    id     serial,
    name varchar,
    primary key (id)
);
