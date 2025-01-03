-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/10/2024 às 14:08
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
-- Banco de dados: `vivacdr`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `catcod` int(11) NOT NULL,
  `catnome` varchar(255) NOT NULL,
  `catdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`catcod`, `catnome`, `catdesc`) VALUES
(1, 'padarias', ''),
(2, 'papelarias', ''),
(3, 'construção', ''),
(4, 'eletrodomésticos', ''),
(5, 'religiões', ''),
(6, 'turismo', ''),
(7, 'lanchonetes', ''),
(8, 'prestadores de serviços', ''),
(9, 'teste', 'teste 123'),
(10, 'aaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaa '),
(11, 'postos de combustíveis', 'postos de combustíveis e lojas de conveniências ligadas a postos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `elemento`
--

CREATE TABLE `elemento` (
  `elecod` int(11) NOT NULL,
  `elenome` varchar(255) NOT NULL,
  `eletelefone` varchar(255) NOT NULL,
  `eledescricao` text NOT NULL,
  `elesite` varchar(255) NOT NULL,
  `eleinstagram` varchar(255) NOT NULL,
  `elefacebook` varchar(255) NOT NULL,
  `elehorarios` varchar(255) NOT NULL,
  `eleimagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `elemento`
--

INSERT INTO `elemento` (`elecod`, `elenome`, `eletelefone`, `eledescricao`, `elesite`, `eleinstagram`, `elefacebook`, `elehorarios`, `eleimagem`) VALUES
(2, 'Sarau by boteco dos amigos', '', '', '', '@sarauby_botecodosamigos', 'https://www.facebook.com/people/Sarau-By-Boteco-Dos-Amigos/100067501584011/', '18 às 22 horas', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `elementocategoria`
--

CREATE TABLE `elementocategoria` (
  `elecod` int(11) NOT NULL,
  `catcod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`catcod`);

--
-- Índices de tabela `elemento`
--
ALTER TABLE `elemento`
  ADD PRIMARY KEY (`elecod`);

--
-- Índices de tabela `elementocategoria`
--
ALTER TABLE `elementocategoria`
  ADD PRIMARY KEY (`elecod`,`catcod`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `catcod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `elemento`
--
ALTER TABLE `elemento`
  MODIFY `elecod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
