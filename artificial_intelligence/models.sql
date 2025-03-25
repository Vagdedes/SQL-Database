create table models
(
    id                        int auto_increment
        primary key,
    family                    int           null,
    request_url               varchar(128)  null,
    request_headers           varchar(512)  null,
    post_fields               varchar(512)  null,
    encode_fields             tinyint(1)    null,
    base64_encode_reply       tinyint(1)    null,
    tokenizer                 varchar(32)   null,
    context                   int           null,
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


