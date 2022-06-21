-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Jun-2022 às 20:07
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `eleicoes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nome_cdt` varchar(255) DEFAULT NULL,
  `foto_cdt` varchar(255) DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `candidatos`
--

INSERT INTO `candidatos` (`id`, `nome_cdt`, `foto_cdt`, `cargo_id`) VALUES
(32, 'Carlos', 'perfil-maior.jpg', 3),
(34, 'José Henrique Pereira Campos', 'perfil_2022.jpg', 9),
(37, 'João', '20141217_161655.jpg', 9),
(38, 'Maria', 'foto.jpeg', 3),
(39, 'Jorge', 'foto.jpeg', 2),
(40, 'Ricardo', 'foto.jpeg', 2),
(41, 'Júlia Pereira Campos', 'foto.jpeg', 7),
(42, 'Lucas Ferre Melo', 'foto.jpeg', 9),
(43, 'Chaves', 'foto.jpeg', 10),
(45, 'José silas', 'foto.jpeg', 7),
(46, 'João silas', 'foto.jpeg', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nome_cgo` varchar(255) DEFAULT NULL,
  `eleicao_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`id`, `nome_cgo`, `eleicao_id`) VALUES
(1, 'Gerente de suporte', 2),
(2, 'Gerente comercial regional', 1),
(3, 'Supervisor(a)', 1),
(7, 'Balconista', 1),
(9, 'Programador', 1),
(10, 'Analista de sistemas', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `eleicoes`
--

CREATE TABLE `eleicoes` (
  `id` int(11) NOT NULL,
  `dtfi_elc` date DEFAULT NULL,
  `dtin_elc` date DEFAULT NULL,
  `nome_elc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `eleicoes`
--

INSERT INTO `eleicoes` (`id`, `dtfi_elc`, `dtin_elc`, `nome_elc`) VALUES
(1, '2021-10-25', '2021-10-15', 'Eleições 2021'),
(2, '2022-06-30', '2022-06-01', 'Eleições 2022');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome_usu` varchar(255) DEFAULT NULL,
  `senh_usu` varchar(255) DEFAULT NULL,
  `doc1_usu` varchar(255) DEFAULT NULL,
  `tipo_usu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome_usu`, `senh_usu`, `doc1_usu`, `tipo_usu`) VALUES
(1, 'Juliano Carvalho Campos', '123', '04569855652', 'A'),
(2, 'Laura Lilian Pereira Campos', '123', '08745655258', 'A'),
(3, 'José Henrique Pereira Campos', '123', '02356988541', 'E');

-- --------------------------------------------------------

--
-- Estrutura da tabela `votacoes`
--

CREATE TABLE `votacoes` (
  `id` int(11) NOT NULL,
  `candidato_id` int(11) DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `eleicao_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `protocolo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt73p3uqmd6mwc0ydf9bs8q3n7` (`cargo_id`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcwe913jkwho0jfs7uybuvysp6` (`eleicao_id`);

--
-- Índices para tabela `eleicoes`
--
ALTER TABLE `eleicoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `votacoes`
--
ALTER TABLE `votacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpklpat0tajwyweqm3xwpd86n` (`candidato_id`),
  ADD KEY `FK3o0ikqc8kj0wy9ikdbl22v4hl` (`cargo_id`),
  ADD KEY `FKf2pej7e7pyjgnrely4o58sg2m` (`eleicao_id`),
  ADD KEY `FKeomow51i80j6im2v0j2imgqp4` (`usuario_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `eleicoes`
--
ALTER TABLE `eleicoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `votacoes`
--
ALTER TABLE `votacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `candidatos`
--
ALTER TABLE `candidatos`
  ADD CONSTRAINT `FKt73p3uqmd6mwc0ydf9bs8q3n7` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`);

--
-- Limitadores para a tabela `cargos`
--
ALTER TABLE `cargos`
  ADD CONSTRAINT `FKcwe913jkwho0jfs7uybuvysp6` FOREIGN KEY (`eleicao_id`) REFERENCES `eleicoes` (`id`);

--
-- Limitadores para a tabela `votacoes`
--
ALTER TABLE `votacoes`
  ADD CONSTRAINT `FK3o0ikqc8kj0wy9ikdbl22v4hl` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`),
  ADD CONSTRAINT `FKeomow51i80j6im2v0j2imgqp4` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `FKf2pej7e7pyjgnrely4o58sg2m` FOREIGN KEY (`eleicao_id`) REFERENCES `eleicoes` (`id`),
  ADD CONSTRAINT `FKpklpat0tajwyweqm3xwpd86n` FOREIGN KEY (`candidato_id`) REFERENCES `candidatos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
