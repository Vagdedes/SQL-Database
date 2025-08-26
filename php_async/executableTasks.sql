create table executableTasks
(
    id                bigint auto_increment
        primary key,
    method            varchar(1024) null,
    method_name       varchar(1024) null,
    method_parameters longtext      null,
    code_dependencies longtext      null,
    debug_code        tinyint(1)    null,
    debug_result      longtext      null,
    creation_date     datetime      null,
    expiration_date   datetime      null,
    website_execution tinyint(1)    null
);

create index get
    on executableTasks (debug_result(768));


