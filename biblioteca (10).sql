-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 31-Ago-2023 às 15:28
-- Versão do servidor: 5.6.20-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm`
--

CREATE TABLE IF NOT EXISTS `adm` (
`id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `codigo` int(11) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Extraindo dados da tabela `adm`
--

INSERT INTO `adm` (`id`, `nome`, `usuario`, `email`, `codigo`, `senha`) VALUES
(61, 'gabriel', 'ziliotto', 'gabrielziliotto7@gmail.com', 123, '123123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

CREATE TABLE IF NOT EXISTS `avaliacoes` (
`id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avaliacao` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Extraindo dados da tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`id`, `livro_id`, `user_id`, `avaliacao`) VALUES
(1, 31, 1, 1),
(2, 29, 1, 5),
(3, 27, 1, 4),
(4, 27, 4, 1),
(5, 44, 1, 3),
(6, 42, 1, 3),
(7, 43, 1, 4),
(8, 67, 11, 2),
(9, 83, 11, 2),
(10, 77, 44, 4),
(11, 74, 44, 2),
(12, 67, 44, 3),
(13, 75, 47, 3),
(14, 70, 46, 4),
(15, 83, 44, 5),
(16, 69, 44, 1),
(17, 70, 44, 4),
(18, 76, 44, 1),
(19, 79, 44, 2),
(20, 80, 44, 4),
(21, 91, 44, 1),
(22, 86, 44, 2),
(23, 88, 44, 2),
(24, 85, 44, 5),
(25, 89, 44, 4),
(26, 71, 44, 1),
(27, 76, 47, 4),
(28, 85, 47, 4),
(29, 80, 47, 1),
(30, 75, 44, 5),
(31, 87, 44, 3),
(32, 90, 44, 5),
(33, 105, 55, 4),
(34, 104, 55, 5),
(35, 105, 58, 3),
(36, 107, 56, 3),
(37, 105, 56, 5),
(38, 105, 59, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE IF NOT EXISTS `carrinho` (
`id` int(11) NOT NULL,
  `id_livro` int(10) unsigned NOT NULL,
  `id_pessoa` int(10) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `id_livro`, `id_pessoa`) VALUES
(19, 27, 1),
(3, 26, 4),
(16, 25, 1),
(6, 31, 4),
(17, 25, 5),
(20, 31, 1),
(21, 28, 1),
(22, 67, 11),
(23, 72, 11),
(24, 72, 38),
(25, 76, 38),
(27, 83, 44),
(32, 72, 44),
(33, 86, 44),
(30, 69, 44),
(43, 87, 44),
(34, 83, 46),
(40, 77, 44),
(37, 77, 48),
(44, 98, 44),
(45, 104, 44),
(48, 105, 55),
(49, 104, 55),
(51, 105, 58),
(54, 105, 56),
(53, 107, 56),
(55, 105, 59),
(56, 107, 59);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clublivro`
--

CREATE TABLE IF NOT EXISTS `clublivro` (
`id` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `id_turma` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Extraindo dados da tabela `clublivro`
--

INSERT INTO `clublivro` (`id`, `id_livro`, `id_turma`) VALUES
(66, 104, '3Â° DS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE IF NOT EXISTS `livros` (
`id` int(11) unsigned NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `quantidade` int(200) NOT NULL,
  `disponivel` int(11) NOT NULL,
  `descricao` text,
  `genero` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `autor`, `quantidade`, `disponivel`, `descricao`, `genero`, `imagem`) VALUES
(110, 'teste', 'oi', 2, 1, 'tr', 'Fantasia', 'images/OColecionadorjpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros_solicitados`
--

CREATE TABLE IF NOT EXISTS `livros_solicitados` (
`id` int(11) NOT NULL,
  `livro_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data_reserva` date DEFAULT NULL,
  `data_devolucao` date NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `media_avaliacoes`
--

CREATE TABLE IF NOT EXISTS `media_avaliacoes` (
  `livro_id` int(11) NOT NULL,
  `media` decimal(3,1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `media_avaliacoes`
--

INSERT INTO `media_avaliacoes` (`livro_id`, `media`) VALUES
(69, '1.0'),
(71, '1.0'),
(89, '4.0'),
(85, '4.5'),
(77, '4.0'),
(83, '3.5'),
(88, '2.0'),
(86, '2.0'),
(91, '1.0'),
(80, '2.5'),
(79, '2.0'),
(76, '2.5'),
(70, '4.0'),
(75, '4.0'),
(87, '3.0'),
(90, '5.0'),
(105, '4.3'),
(104, '5.0'),
(107, '3.0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE IF NOT EXISTS `pessoas` (
`id` int(11) unsigned NOT NULL,
  `nome` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `multa` float NOT NULL DEFAULT '0',
  `senha` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `user`, `email`, `multa`, `senha`) VALUES
(59, 'arthur', 'arthur', 'arthur@gmail.com', 0, '12345678'),
(56, 'mateus', 'ziliotto', 'gabrielziliotto7asd@gmail.com', 0, '33422547');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projetolivro`
--

CREATE TABLE IF NOT EXISTS `projetolivro` (
`id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `nomelivro` varchar(255) NOT NULL,
  `pagina` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Extraindo dados da tabela `projetolivro`
--

INSERT INTO `projetolivro` (`id`, `user`, `nomelivro`, `pagina`) VALUES
(27, 47, '104', 0),
(26, 50, '105', 0),
(28, 46, '105', 0),
(29, 45, '104', 0),
(30, 55, '105', 0),
(31, 55, '105', 0),
(32, 55, '104', 0),
(33, 57, '105', 0),
(34, 55, '105', 0),
(35, 58, '104', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE IF NOT EXISTS `reservas` (
`id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `livro` int(11) NOT NULL,
  `dataini` date NOT NULL,
  `datafim` date NOT NULL,
  `atraso` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Extraindo dados da tabela `reservas`
--

INSERT INTO `reservas` (`id`, `user`, `livro`, `dataini`, `datafim`, `atraso`) VALUES
(58, 56, 104, '2023-08-27', '2023-08-30', 0.5),
(57, 55, 104, '2023-08-17', '2023-08-17', 7),
(56, 55, 105, '2023-08-30', '2023-09-27', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE IF NOT EXISTS `turmas` (
`id` int(11) NOT NULL,
  `turma` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `turmas`
--

INSERT INTO `turmas` (`id`, `turma`) VALUES
(14, '9 ano 2'),
(12, '1Â° DS'),
(11, '2Â° DS'),
(10, '3Â° DS 1'),
(9, '3Â° DS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm`
--
ALTER TABLE `adm`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avaliacoes`
--
ALTER TABLE `avaliacoes`
 ADD PRIMARY KEY (`id`), ADD KEY `livro_id` (`livro_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `carrinho`
--
ALTER TABLE `carrinho`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clublivro`
--
ALTER TABLE `clublivro`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livros_solicitados`
--
ALTER TABLE `livros_solicitados`
 ADD PRIMARY KEY (`id`), ADD KEY `livro_id` (`livro_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `media_avaliacoes`
--
ALTER TABLE `media_avaliacoes`
 ADD PRIMARY KEY (`livro_id`);

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projetolivro`
--
ALTER TABLE `projetolivro`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turmas`
--
ALTER TABLE `turmas`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm`
--
ALTER TABLE `adm`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `avaliacoes`
--
ALTER TABLE `avaliacoes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `carrinho`
--
ALTER TABLE `carrinho`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `clublivro`
--
ALTER TABLE `clublivro`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `livros_solicitados`
--
ALTER TABLE `livros_solicitados`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `projetolivro`
--
ALTER TABLE `projetolivro`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `turmas`
--
ALTER TABLE `turmas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
