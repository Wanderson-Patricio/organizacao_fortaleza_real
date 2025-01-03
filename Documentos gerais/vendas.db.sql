DELETE FROM Vendas;

INSERT INTO Vendas (Nome, Endereco, Contato, Quantidade, Forma_Pagamento, Vendedor, Situacao) VALUES
('Andressa', 'Av. do Contorno, 598', '55 (11) 95818-0031', 1, NULL, 'Jhovana', 'A PAGAR'),
('Kelly Lacerda', 'R. José Coutinho da Silva, 398', '55 (11) 96959-6700', 2, NULL, 'Jhovana', 'A PAGAR'),
('Nazaré', 'R. José de Souza Mendes, 74', '55 (11) 98930-7911', 1, NULL, 'Jhovana', 'A PAGAR'),
('Flavio', 'R. Manoel Marques Brasão', '55 (11) 96250-5187', 2, NULL, 'Jhovana', 'A PAGAR'),
('Rodrigo', 'R. Irapuã, 215', '55 (11) 96020-2927', 1, NULL, 'Jhovana', 'A PAGAR'),
('Wanderson', 'R. Poço Branco, 195', '55 (88) 99251-9066', 1, 'PIX', 'Wanderson', 'A PAGAR'),
('Lili', 'R. Nicolau Felippe, 406', '55 (11) 98592-9172', 1, NULL, 'Jhovana', 'A PAGAR'),
('Lucas', 'Av. Sorata, 809 - Jd Lenize', '55 (11) 94827-0494', 1, NULL, 'Jhovana', 'A PAGAR'),
('Mazinha', 'R. Kazuko Fuji Shimizu, 282', '55 (11) 98032-6619', 2, NULL, 'João', 'A PAGAR'),
('Darci', 'R. Wanderley Gonçalves de Rocha, 49', '55 (11) 95598-9825', 1, NULL, 'Henrique', 'A PAGAR'),
('Eliana', 'Travessa Tucurutu, 59 - St. Dumont', '55 (11) 99411-1550', 2, NULL, 'Henrique', 'A PAGAR'),
('Glorineide', 'R. Manoel Marques Brasão, 93', '55 (11) 94655-0516', 1, NULL, 'Henrique', 'A PAGAR'),
('Alessandra', 'R. Maria de Fátima Stande, 458', '55 (11) 98984-3712', 1, NULL, 'Henrique', 'A PAGAR');

SELECT * FROM Vendas;

-- Verifica a quantidade Total de Vendas
SELECT SUM(quantidade) as Total FROM Vendas;

-- Verifica o total já pago
SELECT SUM(quantidade) as Total_Pago FROM (
    SELECT Quantidade FROM Vendas
    WHERE Situacao='PAGO'
)