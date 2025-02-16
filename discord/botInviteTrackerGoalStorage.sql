create table botInviteTrackerGoalStorage
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

create index get
    on botInviteTrackerGoalStorage (goal_id, user_id, deletion_date, server_id);

create index list
    on botInviteTrackerGoalStorage (id, goal_id, server_id, user_id, deletion_date);


