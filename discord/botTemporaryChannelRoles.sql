create table botTemporaryChannelRoles
(
    id                   int auto_increment
        primary key,
    temporary_channel_id int           null,
    role_id              bigint        null,
    allow                bigint        null,
    deny                 bigint        null,
    creation_date        datetime      null,
    creation_reason      varchar(8000) null,
    deletion_date        datetime      null,
    deletion_reason      varchar(8000) null
);

create index get
    on botTemporaryChannelRoles (temporary_channel_id, deletion_date);


