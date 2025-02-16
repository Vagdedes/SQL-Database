create table botCountingGoalStorage
(
    id              bigint auto_increment
        primary key,
    goal_id         bigint        null,
    server_id       bigint        null,
    user_id         bigint        null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index list
    on botCountingGoalStorage (id, goal_id, user_id, deletion_date);


