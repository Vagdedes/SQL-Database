create table models
(
    id                        int auto_increment
        primary key,
    type                      int           null,
    family                    int           null,
    request_url               varchar(128)  null,
    code_key                  varchar(32)   null,
    code                      varchar(64)   null,
    tokenizer                 varchar(32)   null,
    context                   int           null,
    parameter_id              int           null,
    currency_id               int           null,
    sent_token_cost           double        null,
    sent_token_audio_cost     double        null,
    received_token_cost       double        null,
    received_token_audio_cost double        null,
    creation_date             datetime      null,
    creation_reason           varchar(4000) null,
    deletion_date             datetime      null,
    deletion_reason           varchar(4000) null
);

create index get
    on models (family, deletion_date, sent_token_cost, received_token_cost, context, sent_token_audio_cost,
               received_token_audio_cost);


