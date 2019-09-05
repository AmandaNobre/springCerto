create table pessoa(
	codigo bigint(50) primary key auto_increment,
    nome varchar(50) not null,
    ativo boolean not null,
    logradouro varchar(50),
    numero varchar(50),
    complemento varchar(50),
    bairro varchar(50),
    cep varchar(50),
    cidade varchar(50),
    estado varchar(50)
)Engine=InnoDB Default Charset=utf8;

insert into pessoa(
	nome, ativo, logradouro, numero, bairro, cep, cidade, estado
    ) values (
		"Maria",true, "casa", "24", "jereissate", "00000", "maracanaú", "Ce"
    );
    
insert into pessoa(
	nome, ativo, logradouro, numero, bairro, cep, cidade, estado
    ) values (
		"Carlos",true, "apartamento", "4", "jereissati 1", "00234", "maracanaú", "Ce"
    );
insert into pessoa(
	nome, ativo, logradouro, numero, bairro, cep, cidade, estado
    ) values (
		"José",false, "casa", "390", "timbó", "087650", "maracanaú", "Ce"
    );
    
insert into pessoa(
	nome, ativo
    ) values (
		"Joana",true 
    );
    
insert into pessoa(
	nome, ativo
    ) values (
		"Eduarda",false 
    );   
    
    
    
    