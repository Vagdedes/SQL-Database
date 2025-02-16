create table botQuestionnaireAnswers
(
    id                        bigint auto_increment
        primary key,
    questionnaire_id          int           null,
    questionnaire_creation_id bigint        null,
    question_id               int           null,
    answer                    varchar(2000) null,
    creation_date             datetime      null,
    creation_reason           varchar(7000) null,
    deletion_date             datetime      null,
    deletion_reason           varchar(7000) null
);

create index get_answer
    on botQuestionnaireAnswers (deletion_date, questionnaire_creation_id, answer(16));

create index get_user
    on botQuestionnaireAnswers (questionnaire_creation_id, deletion_date);


