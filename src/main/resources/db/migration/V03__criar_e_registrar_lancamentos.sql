create table lancamento(
	codigo bigint(20) primary key auto_increment,
    descricao varchar(50) not null,
    data_vencimento date not null,
    data_pagamento date,
    valor decimal(10,2) not null,
    observacao varchar(100),
    tipo varchar(20) not null,
    codigo_categoria bigint(20) not null,
    codigo_pessoa bigint(50) not null,
    foreign key(codigo_categoria) references categoria(codigo),
    foreign key(codigo_pessoa) references pessoa(codigo)
)engine=InnoDB Default Charset=utf8;

insert into lancamento(
	descricao, data_vencimento, data_pagamento, valor, observacao, tipo,codigo_categoria, codigo_pessoa
)values(
	"Salário mensal", "2017-06-18", null, 6500, "Distribuição de lucros", "RECEITA", 1,1
);

insert into lancamento(
	descricao, data_vencimento, data_pagamento, valor, observacao, tipo,codigo_categoria, codigo_pessoa
)values(
	"Bahamas", "2017-02-10", "2017-02-10", 100.32, null, "Despesa", 2,2
);

insert into lancamento(
	descricao, data_vencimento, data_pagamento, valor, observacao, tipo,codigo_categoria, codigo_pessoa
)values(
	"Top Club", "2017-06-10", null, 120, null, "RECEITA", 3,3
);

insert into lancamento(
	descricao, data_vencimento, data_pagamento, valor, observacao, tipo,codigo_categoria, codigo_pessoa
)values(
	"CEMIG", "2017-02-10", "2017-02-10", 110.44, "Geração", "RECEITA", 3,4
);
