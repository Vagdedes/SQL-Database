create table botAIInstructions
(
    id                int auto_increment
        primary key,
    ai_model_id       int           null,
    instruction_id    int           null,
    public            tinyint(1)    null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null
);

create index get
    on botAIInstructions (ai_model_id, expiration_date, deletion_date, public);


