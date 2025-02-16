create table botAIKeywords
(
    id                int auto_increment
        primary key,
    ai_model_id       int           null,
    keyword           varchar(2000) null,
    creation_date     datetime      null,
    creation_reason   varchar(4000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(4000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4000) null
);

create index get
    on botAIKeywords (expiration_date, deletion_date, ai_model_id);


