-- criar tabela 'role' para armazenar as funções
create table tb_role (
    role_id serial primary key,
    name varchar(50) not null
);

-- criar tabela 'user' para armazenar informações do usuário
create table tb_user (
    user_id serial primary key,
    username varchar(50) not null,
    password varchar(255) not null,
    enabled boolean not null,
    constraint unique_username unique (username)
);

-- criar tabela de junção para relacionar usuários às funções (role)
create table tb_user_role (
    user_id integer,
    role_id integer,
    primary key (user_id, role_id),
    foreign key (user_id) references tb_user (user_id) on delete cascade,
    foreign key (role_id) references tb_role (role_id) on delete cascade
);

create table tb_toy (
    toy_id serial primary key,
    user_id integer,
    name varchar(255),
    price decimal(10, 2),
    constraint fk_user foreign key (user_id) references tb_user (user_id) on delete cascade
);