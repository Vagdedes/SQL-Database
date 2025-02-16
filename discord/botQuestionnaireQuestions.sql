create table botQuestionnaireQuestions
(
    id                int auto_increment
        primary key,
    priority          int           null,
    questionnaire_id  int           null,
    message_name      varchar(64)   null,
    message_content   varchar(2000) null,
    type              varchar(32)   null,
    max_value         int           null,
    min_value         int           null,
    creation_date     datetime      null,
    creation_reason   varchar(4000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(4000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4000) null
);

create index get
    on botQuestionnaireQuestions (questionnaire_id, expiration_date, deletion_date, priority);


