-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/06/2025 às 07:02
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_agencia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamento_test_drive`
--

CREATE TABLE `agendamento_test_drive` (
  `id_agendamento` int(11) NOT NULL,
  `id_carro` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `nome_cliente` varchar(70) NOT NULL,
  `contato_cliente` varchar(50) NOT NULL,
  `data_hora_test_drive` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Agendado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agendamento_test_drive`
--

INSERT INTO `agendamento_test_drive` (`id_agendamento`, `id_carro`, `id_funcionario`, `nome_cliente`, `contato_cliente`, `data_hora_test_drive`, `status`) VALUES
(1, 1, 1, 'pedrinho matador', '11951987653', '2025-06-07T09:30:00', 'Agendado'),
(2, 3, 1, 'Lucas Costa', '1196534-2674', '2025-06-09T12:00:00', 'Agendado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `carros`
--

CREATE TABLE `carros` (
  `id` int(11) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `preco` decimal(10,0) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `ano` int(11) NOT NULL,
  `categoria` varchar(15) NOT NULL,
  `combustivel` varchar(10) NOT NULL,
  `cor` varchar(15) NOT NULL,
  `km` decimal(10,0) NOT NULL,
  `placa` varchar(8) NOT NULL,
  `cambio` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Disponível'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carros`
--

INSERT INTO `carros` (`id`, `modelo`, `preco`, `marca`, `ano`, `categoria`, `combustivel`, `cor`, `km`, `placa`, `cambio`, `status`) VALUES
(1, 'Celta', 12000, 'Chevrolet', 2001, 'Hatch', 'Gasolina', 'Verde', 12000, 'www1234', 'Manual', 'Vendido'),
(2, 'Opala', 42000, 'Chevrolet', 1989, 'Sedan', 'Álcool', 'Prata', 142000, 'rrr1111', 'Manual', 'Vendido'),
(3, 'fusca', 15000, 'Volkswagen', 1968, 'Hatch', 'Gasolina', 'Preto', 100000, 'rtv1234', 'Manual', 'Reservado'),
(4, 'City', 130000, 'Honda', 2014, 'Sedan', 'Gasolina', 'Preto', 130000, 'CVV-2000', 'CVT', 'Vendido'),
(5, 'Uno Mille', 13000, 'Fiat', 2007, 'Hatch', 'Gasolina', 'Verde', 439000, 'PNG-0931', 'Manual', 'Vendido'),
(6, 'Fox', 32000, 'Volkswagen', 2010, 'Hatch', 'Gasolina', 'Prata', 73262, 'UTN-8732', 'Manual', 'Vendido'),
(7, 'Marea', 21000, 'Fiat', 1998, 'Sedan', 'Gasolina', 'Preto', 90332, 'UYN-4613', 'Manual', 'Disponível'),
(8, 'Onix', 32000, 'Chevrolet', 2018, 'Sedan', 'Gasolina', 'Azul', 7464, 'PAK-7846', 'Automático', 'Disponível'),
(9, 'C3', 66900, 'Citroen', 2024, 'Hatch', 'Gasolina', 'Prata', 7900, 'FWU-4738', 'Automático', 'Disponível'),
(10, 'Gol 1.0', 32000, 'Volkswagen', 2015, 'Hatch', 'Flex', 'Prata', 75000, 'ABC1A23', 'Manual', 'Disponível'),
(11, 'Uno Vivace', 30000, 'Fiat', 2014, 'Hatch', 'Flex', 'Branco', 82000, 'DEF2B34', 'Manual', 'Disponível'),
(12, 'Onix LT', 45000, 'Chevrolet', 2018, 'Hatch', 'Flex', 'Preto', 45000, 'GHI3C45', 'Manual', 'Disponível'),
(13, 'HB20 Comfort', 47000, 'Hyundai', 2017, 'Hatch', 'Flex', 'Vermelho', 49000, 'JKL4D56', 'Manual', 'Disponível'),
(14, 'Civic EX', 65000, 'Honda', 2016, 'Sedan', 'Flex', 'Prata', 68000, 'MNO5E67', 'Automático', 'Disponível'),
(15, 'Corolla GLi', 72000, 'Toyota', 2017, 'Sedan', 'Flex', 'Cinza', 62000, 'PQR6F78', 'Automático', 'Disponível'),
(16, 'Ka SE', 39000, 'Ford', 2018, 'Hatch', 'Flex', 'Branco', 53000, 'STU7G89', 'Manual', 'Disponível'),
(17, 'Sandero Exp.', 42000, 'Renault', 2017, 'Hatch', 'Flex', 'Azul', 61000, 'VWX8H90', 'Manual', 'Disponível'),
(18, 'Palio Attrac.', 35000, 'Fiat', 2015, 'Hatch', 'Flex', 'Preto', 73000, 'YZA9I01', 'Manual', 'Disponível'),
(19, 'Fit LX', 58000, 'Honda', 2016, 'Hatch', 'Flex', 'Prata', 60000, 'BCD1J12', 'Automático', 'Disponível'),
(20, 'EcoSport Free.', 58000, 'Ford', 2016, 'SUV', 'Flex', 'Preto', 67000, 'EFG2K23', 'Automático', 'Disponível'),
(21, 'Duster Dyn.', 59000, 'Renault', 2016, 'SUV', 'Flex', 'Cinza', 71000, 'HIJ3L34', 'Manual', 'Disponível'),
(22, 'Fox Trend', 41000, 'Volkswagen', 2016, 'Hatch', 'Flex', 'Vermelho', 64000, 'KLM4M45', 'Manual', 'Disponível'),
(23, 'Argo Drive', 47000, 'Fiat', 2019, 'Hatch', 'Flex', 'Prata', 40000, 'NOP5N56', 'Manual', 'Disponível'),
(24, 'Cronos Drive', 55000, 'Fiat', 2019, 'Sedan', 'Flex', 'Branco', 37000, 'QRS6O67', 'Manual', 'Disponível'),
(25, 'Versa SV', 58000, 'Nissan', 2018, 'Sedan', 'Flex', 'Preto', 43000, 'TUV7P78', 'Automático', 'Disponível'),
(26, 'March S', 40000, 'Nissan', 2017, 'Hatch', 'Flex', 'Vermelho', 52000, 'WXY8Q89', 'Manual', 'Disponível'),
(27, 'Celta LT', 29000, 'Chevrolet', 2013, 'Hatch', 'Flex', 'Cinza', 89000, 'ZAB9R90', 'Manual', 'Disponível'),
(28, 'Prisma LT', 43000, 'Chevrolet', 2016, 'Sedan', 'Flex', 'Prata', 67000, 'CDE1S01', 'Manual', 'Disponível'),
(29, 'Corolla XEi', 85000, 'Toyota', 2018, 'Sedan', 'Flex', 'Branco', 35000, 'FGH2T12', 'Automático', 'Disponível'),
(30, 'Civic Touring', 105000, 'Honda', 2020, 'Sedan', 'Flex', 'Preto', 20000, 'IJK3U23', 'Automático', 'Disponível'),
(31, 'Compass Long.', 130000, 'Jeep', 2021, 'SUV', 'Flex', 'Cinza', 15000, 'LMN4V34', 'Automático', 'Disponível'),
(32, 'Renegade Sport', 95000, 'Jeep', 2019, 'SUV', 'Flex', 'Vermelho', 30000, 'OPQ5W45', 'Automático', 'Disponível'),
(33, 'HB20S Vision', 72000, 'Hyundai', 2020, 'Sedan', 'Flex', 'Branco', 25000, 'RST6X56', 'Automático', 'Disponível'),
(35, 'Etios X', 52000, 'Toyota', 2017, 'Hatch', 'Flex', 'Preto', 58000, 'XYZ8Z78', 'Manual', 'Disponível'),
(36, '208 Allure', 69000, 'Peugeot', 2020, 'Hatch', 'Flex', 'Branco', 22000, 'AAA1A11', 'Automático', 'Disponível'),
(37, 'Kwid Zen', 45000, 'Renault', 2021, 'Hatch', 'Flex', 'Laranja', 17000, 'BBB2B22', 'Manual', 'Disponível'),
(38, 'T-Cross 200TSI', 125000, 'Volkswagen', 2021, 'SUV', 'Flex', 'Cinza', 18000, 'CCC3C33', 'Automático', 'Disponível'),
(39, 'Tracker Prem.', 135000, 'Chevrolet', 2022, 'SUV', 'Flex', 'Azul', 14000, 'DDD4D44', 'Automático', 'Disponível');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telefone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`) VALUES
(1, 'Pedro Ruan', 'pr@gmail.com', '11911223344'),
(2, 'Maria Neves', 'MN@gmail.com', '11998747843'),
(3, 'Matias Rojas', 'mr@gmail.com', '1197368934'),
(4, 'Joana Dark', 'JD@gmail.com', '11967348728');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `cargo` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id`, `nome`, `email`, `senha`, `cargo`, `status`) VALUES
(1, 'Igor damasco', 'ig@gmail.com', '1234', 'Vendedor', 'ativo'),
(2, 'thaison nogueira', 'tn@gmail.com', '1234', 'Gerente', 'Ativo'),
(3, 'guilherme fior', 'gf@gmail.com', '1234', 'Gerente', 'Ativo'),
(4, 'Juan Pablo', 'jp@gmail.com', '1234', 'Vendedor', 'Ativo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_venda` int(11) NOT NULL,
  `id_veiculo` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `valor_venda` double NOT NULL,
  `metodo_pagamento` varchar(50) NOT NULL,
  `data_venda` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`id_venda`, `id_veiculo`, `id_funcionario`, `id_cliente`, `valor_venda`, `metodo_pagamento`, `data_venda`) VALUES
(1, 1, 1, 1, 12000, 'Dinheiro', '2025-06-07 08:29:29'),
(2, 2, 1, 2, 42000, 'Dinheiro', '2025-06-07 08:57:48'),
(3, 6, 4, 1, 32000, 'Cartão Crédito (52x)', '2025-06-09 00:55:37'),
(4, 4, 4, 4, 130000, 'Cartão Débito', '2025-06-09 00:57:01'),
(5, 5, 1, 2, 13000, 'Cartão Crédito (24x)', '2025-06-09 00:58:40');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamento_test_drive`
--
ALTER TABLE `agendamento_test_drive`
  ADD PRIMARY KEY (`id_agendamento`),
  ADD KEY `id_carro` (`id_carro`),
  ADD KEY `id_funcionario` (`id_funcionario`);

--
-- Índices de tabela `carros`
--
ALTER TABLE `carros`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `id_veiculo` (`id_veiculo`),
  ADD KEY `id_funcionario` (`id_funcionario`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamento_test_drive`
--
ALTER TABLE `agendamento_test_drive`
  MODIFY `id_agendamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `carros`
--
ALTER TABLE `carros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `agendamento_test_drive`
--
ALTER TABLE `agendamento_test_drive`
  ADD CONSTRAINT `agendamento_test_drive_ibfk_1` FOREIGN KEY (`id_carro`) REFERENCES `carros` (`id`),
  ADD CONSTRAINT `agendamento_test_drive_ibfk_2` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id`);

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_veiculo`) REFERENCES `carros` (`id`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id`),
  ADD CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
