create database controle_medicamentos;
use controle_medicamentos;

create table funcionários (
    id_funcionario int auto_increment primary key,
    nome varchar(225) not null,
    email varchar(225) not null 
);

create table pedido (
    id_pedido int auto_increment primary key, 
    nome_medicamento varchar(225) not null,
    quantidade_medicamento int not null,
    categoria varchar(225) not null,
    urgencia enum('alta', 'media', 'baixa') not null,
    data_solicitacao date not null,
    status enum('solicitado', 'separação', 'recebido') not null,
    id_funcionario int,
    constraint fk_pedido_funcionario foreign key (id_funcionario) references funcionários(id)
);                                                                                                                                                