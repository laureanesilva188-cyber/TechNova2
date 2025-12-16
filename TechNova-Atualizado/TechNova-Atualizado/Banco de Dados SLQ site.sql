create database estoque;
use estoque;

-- tabela de usuários (login + cadastro)
create table usuarios (
    cpf char(11) primary key,
    nome varchar(50) not null,
    email varchar(50),
    telefone varchar(20),
    area varchar(50));

-- produtos (adm)
create table produtos (
    id_produto int auto_increment primary key,
    nome varchar(50) not null,
    categoria varchar(20),
    quantidade int not null,
    preco decimal(10,2) not null);

-- encomendas (funcionários)
create table encomendas (
    id_encomenda int auto_increment primary key,
    cpf_funcionario char(11),
    id_produto int,
    nome_empresa varchar(50),
    data_encomenda datetime default current_timestamp,

    foreign key (cpf_funcionario) references usuarios(cpf),
    foreign key (id_produto) references produtos(id_produto)
);

-- relatórios (adm)
create table relatorios (
    id_relatorio int auto_increment primary key,
    id_produto int,
    quantidade int,
    data_hora datetime default current_timestamp,

    foreign key (id_produto) references produtos(id_produto)
);



insert into usuarios (cpf, nome, email, telefone, area) values
('11122233344', 'kauã almeida', 'kaua.almeida@email.com', '11990001111', 'adm'),
('22233344455', 'daniel silva', 'daniel.silva@email.com', '11990002222', 'adm'),
('33344455566', 'laureane santos', 'laureane.santos@email.com', '11990003333', 'adm'),
('44455566677', 'gabriela costa', 'gabriela.costa@email.com', '11990004444', 'adm'),
('55566677788', 'lucas pereira', 'lucas.pereira@email.com', '11990005555', 'funcionario'),
('66677788899', 'mariana rocha', 'mariana.rocha@email.com', '11990006666', 'funcionario'),
('77788899900', 'rafael oliveira', 'rafael.oliveira@email.com', '11990007777', 'funcionario'),
('88899900011', 'ana paula', 'ana.paula@email.com', '11990008888', 'funcionario'),
('99900011122', 'bruno ferreira', 'bruno.ferreira@email.com', '11990009999', 'funcionario'),
('00011122233', 'carla mendes', 'carla.mendes@email.com', '11990001010', 'funcionario');


insert into produtos (nome, categoria, quantidade, preco) values
('processador ryzen 5 5600x', 'processador', 12, 999.90),
('placa de video nvidia rtx 4060', 'placa de video', 6, 2399.90),
('memoria ram corsair vengeance 16gb', 'memoria ram', 20, 499.90),
('ssd nvme kingston 1tb', 'armazenamento', 15, 599.90),
('placa mae asus tuf gaming b550m', 'placa mae', 8, 899.90),
('fonte corsair cv650', 'fonte', 10, 549.90),
('gabinete gamer redragon wheel jack', 'gabinete', 12, 429.90),
('teclado mecanico gamer rgb', 'acessorios', 18, 299.90),
('mouse gamer logitech g502', 'acessorios', 14, 349.90),
('headset gamer hyperx cloud ii', 'acessorios', 9, 699.90);


insert into relatorios (id_produto, quantidade, data_hora) values
(1, 12, '2025-12-02 08:30:00'),
(2, 6,  '2025-12-02 08:32:00'),
(3, 20, '2025-12-02 08:35:00'),
(4, 15, '2025-12-02 08:37:00'),
(5, 8,  '2025-12-02 08:40:00'),
(6, 10, '2025-12-02 08:42:00'),
(7, 12, '2025-12-02 08:45:00'),
(8, 18, '2025-12-02 08:47:00'),
(9, 14, '2025-12-02 08:50:00'),
(10, 9, '2025-12-02 08:52:00');


