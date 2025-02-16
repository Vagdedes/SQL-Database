create table botAIChatModel
(
    id               int auto_increment
        primary key,
    api_key          varchar(64)   null,
    model_family     int           null,
    parameters       varchar(1000) null,
    implement_class  varchar(64)   null,
    implement_method varchar(128)  null,
    creation_date    datetime      null,
    creation_reason  varchar(7500) null,
    deletion_date    datetime      null,
    deletion_reason  varchar(7500) null
);

create index get
    on botAIChatModel (deletion_date);


