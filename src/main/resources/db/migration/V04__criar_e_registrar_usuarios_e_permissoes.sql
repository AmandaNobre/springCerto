create table usuario (
	codigo BIGINT(20) primary key,
    nome varchar(50) not null,
    email varchar(50) not null,
    senha varchar(150) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table permissao(
	codigo BIGINT(20) primary key,
    descricao varchar(50) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table usuario_permissao(	
	codigo_usuario BIGINT(20) not null,
    codigo_permissao BIGINT(20) not null,
    primary key(codigo_usuario, codigo_permissao),
    FOREIGN KEY(codigo_usuario) references usuario(codigo),
    FOREIGN KEY(codigo_permissao) references permissao(codigo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into usuario(codigo, nome, email, senha) values (
1, "Administrador", "adimin@algamoney.com", "$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5."
);
insert into usuario(codigo, nome, email, senha) values(
2, "Maria Silva", "maria@algamoney.com", "$2a$10$Zc3w6HyuPOPXamaMhh.PQOXvDnEsadztbfi6/RyZWJDzimE8WQjaq"
);

insert into permissao (codigo, descricao) values(1, "ROLE_CADASTRAR_CATEGORIA");
insert into permissao (codigo, descricao) values(2, "ROLE_PESQUISAR_CATEGORIA");
insert into permissao (codigo, descricao) values(3, "ROLE_CADASTRAR_PESSOA");
insert into permissao (codigo, descricao) values(4, "ROLE_REMOVER_PESSOA");
insert into permissao (codigo, descricao) values(5, "ROLE_PESQUISAR_PESSOA");
insert into permissao (codigo, descricao) values(6, "ROLE_CADASTRAR_LANCAMENTO");
insert into permissao (codigo, descricao) values(7, "ROLE_REMOVER_LANCAMENTO");
insert into permissao (codigo, descricao) values(8, "ROLE_PESQUISAR_LANCAMENTO");

-- ADMIN

insert into usuario_permissao(codigo_usuario, codigo_permissao) values (1,1);
insert into usuario_permissao(codigo_usuario, codigo_permissao) values (1,2);
insert into usuario_permissao(codigo_usuario, codigo_permissao) values (1,3);
insert into usuario_permissao(codigo_usuario, codigo_permissao) values (1,4);
insert into usuario_permissao(codigo_usuario, codigo_permissao) values (1,5);
insert into usuario_permissao(codigo_usuario, codigo_permissao) values (1,6);
insert into usuario_permissao(codigo_usuario, codigo_permissao) values (1,7);
insert into usuario_permissao(codigo_usuario, codigo_permissao) values (1,8);

-- Maria

insert into usuario_permissao(codigo_usuario, codigo_permissao) values (2,2);
insert into usuario_permissao(codigo_usuario, codigo_permissao) values (2,5);
insert into usuario_permissao(codigo_usuario, codigo_permissao) values (2,8);