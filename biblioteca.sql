-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 24-Out-2023 às 15:35
-- Versão do servidor: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm`
--

CREATE TABLE `adm` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `codigo` int(11) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `adm`
--

INSERT INTO `adm` (`id`, `nome`, `usuario`, `email`, `codigo`, `senha`) VALUES
(61, 'gabriel', 'ziliotto', 'gabrielziliotto7@gmail.com', 123, '123123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

CREATE TABLE `avaliacoes` (
  `id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `avaliacao` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(38, 105, 59, 5),
(39, 111, 60, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL,
  `id_livro` int(10) UNSIGNED NOT NULL,
  `id_pessoa` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(56, 107, 59),
(57, 111, 60);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clublivro`
--

CREATE TABLE `clublivro` (
  `id` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `id_turma` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clublivro`
--

INSERT INTO `clublivro` (`id`, `id_livro`, `id_turma`) VALUES
(66, 104, '3Â° DS'),
(75, 111, '3Â° DS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `quantidade` int(200) NOT NULL,
  `disponivel` int(11) NOT NULL,
  `descricao` text,
  `genero` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `autor`, `quantidade`, `disponivel`, `descricao`, `genero`, `imagem`) VALUES
(113, 'Percy Jackson e os Olimpianos: O LadrÃ£o de Raios', 'Rick Riordan', 3, 3, 'Os deuses do Olimpo seguem vivos em pleno sÃ©culo XXI, ainda se apaixonando por mortais e gerando filhos metade humanos, metade deuses, que podem se tornar grandes herÃ³is, mas muitas vezes acabam encontrando destinos terrÃ­veis nas garras de monstros. Poucos descobrem sua verdadeira identidade e sobrevivem para chegar ao Acampamento Meio-Sangue, um acampamento de verÃ£o em Long Island dedicado ao treinamento de jovens semideuses. Percy Jackson, de 12 anos, Ã© um deles, mas acaba sendo acusado de ter roubado o raio de Zeus. Com a ajuda do sÃ¡tiro Grover e de Annabeth, uma filha de Atena, ele deve cruzar os Estados Unidos para descobrir o verdadeiro ladrÃ£o, retomar o raio e evitar uma guerra no Olimpo entre Zeus e seu pai. Como se tudo isso jÃ¡ nÃ£o bastasse, diversos monstros estÃ£o no meio do caminho e Percy precisa ficar de olho em uma possÃ­vel traiÃ§Ã£o.', 'Fantasia', '../../screen/images/percyjfif'),
(111, 'Harry Potter', 'J.K', 3, 3, '...', 'Fantasia', '../../screen/images/Harryjpg'),
(112, 'A Culpa Ã© das Estrelas', 'John Green', 3, 3, 'Hazel Grace Lancaster Ã© uma adolescente diagnosticada com cÃ¢ncer e o que a mantÃ©m viva Ã© uma droga experimental. ApÃ³s passar anos lutando com a doenÃ§a, seus pais a forÃ§am a participar de um grupo de apoio cristÃ£o para pessoas doentes. LÃ¡, conhece Augustus Waters, um rapaz que tambÃ©m sofre com cÃ¢ncer. Embora com visÃµes muito diferentes de suas doenÃ§as, pois Hazel preocupa-se apenas com a dor que poderÃ¡ causar aos outros e Augustus sonha em deixar a sua prÃ³pria marca no mundo, eles se sentem atraÃ­dos. Diferentes, mas apaixonados. Juntos, atravessam os principais conflitos da adolescÃªncia e do primeiro amor e lutam para se manter otimistas e fortes, um para o outro', 'Romance', '../../screen/images/culpajfif'),
(114, 'O DiÃ¡rio de Anne Frank', 'Anne Frank', 3, 3, 'Suas anotaÃ§Ãµes narram os sentimentos, os medos e as pequenas alegrias de uma menina judia que, como sua famÃ­lia, lutou em vÃ£o para sobreviver ao Holocausto. Uma poderosa lembranÃ§a dos horrores de uma guerra, um testemunho eloquente do espÃ­rito humano. Assim podemos descrever os relatos feitos por Anne em seu diÃ¡rio.', 'HistÃ³rico', '../../screen/images/annejfif'),
(115, 'CrepÃºsculo', 'Stephenie Meyer', 3, 3, 'Isabella Swan chega Ã  nublada e chuvosa cidadezinha de Forks - Ãºltimo lugar onde gostaria de viver. Tenta se adaptar Ã  vida provinciana na qual aparentemente todos se conhecem, lidar com sua constrangedora falta de coordenaÃ§Ã£o motora e se habituar a morar com um pai com quem nunca conviveu.', 'Romance', '../../screen/images/crepjfif'),
(116, 'Jogos Vorazes', 'Suzanne Collins', 3, 3, 'Quando Katniss Everdeen, de 16 anos, decide participar dos Jogos Vorazes para poupar a irmÃ£ mais nova, causando grande comoÃ§Ã£o no paÃ­s, ela sabe que essa pode ser a sua sentenÃ§a de morte. Mas a jovem usa toda a sua habilidade de caÃ§a e sobrevivÃªncia ao ar livre para se manter viva.', 'FicÃ§Ã£o CientÃ­fica', '../../screen/images/jogosjfif'),
(117, 'O Apanhador no Campo de Centeio', 'J.D. Salinger', 3, 3, 'O livro conta a histÃ³ria do adolescente Holden Caulfield: nascido em uma famÃ­lia de classe mÃ©dia alta em Nova York, ele estÃ¡ de retorno para casa por conta do recesso das festas de final de ano, apÃ³s ser expulso do internato onde estudava por mau desempenho escolar.', 'Romance', '../../screen/images/apanhajfif'),
(118, 'Divergente', 'Veronica Roth', 3, 3, 'Aos dezesseis anos, numa grande cerimÃ´nia de iniciaÃ§Ã£o, os jovens sÃ£o submetidos a um teste de aptidÃ£o e devem escolher a que grupo querem se unir para passar o resto de suas vidas. Para Beatrice, a difÃ­cil decisÃ£o Ã© entre ficar com sua famÃ­lia ou ser quem ela realmente Ã© â€“ nÃ£o pode ter os dois.', 'FicÃ§Ã£o CientÃ­fica', '../../screen/images/Divergentejfif'),
(119, 'As CrÃ´nicas de NÃ¡rnia: O LeÃ£o, a Feiticeira e o Guarda-Roupa', 'C.S. Lewis', 3, 3, 'O LeÃ£o, a Feiticeira e o Guarda-roupa conta a histÃ³ria dos irmÃ£os Pedro, Susana, Edmundo e LÃºcia. Em meio a brincadeiras na casa de um velho professor, eles descobrem um misterioso guarda-roupa que os leva a NÃ¡rnia, um reino que sofre de um inverno sem fim desde que a temida Feiticeira Branca tomou o poder.', 'Fantasia', '../../screen/images/narniajfif'),
(120, 'ExtraordinÃ¡rio', 'R.J. Palacio', 3, 3, 'O livro conta a histÃ³ria de Auggie, um menino de 10 anos que jÃ¡ passou por mais de 20 cirurgias em razÃ£o de uma deformidade facial. Devido Ã s diversas cirurgias, o garoto nunca frequentou uma escola, sua mÃ£e o ensinava em casa, atÃ© que ela e seu pai decidem mudar isso.', 'Drama', '../../screen/images/extrajfif'),
(121, 'O Senhor dos AnÃ©is: A Sociedade do Anel', ' J.R.R. Tolkien', 3, 3, 'O que fala o livro O Senhor dos AnÃ©is?\r\nA histÃ³ria narra o conflito contra o mal que se alastra pela Terra-mÃ©dia, atravÃ©s da luta de vÃ¡rias raÃ§as - Humanos, AnÃ£os, Elfos, Ents e Hobbits - contra Orques, para evitar que o "Anel do Poder" volte Ã s mÃ£os de seu criador Sauron, o Senhor Sombrio.', 'Fantasia', '../../screen/images/senhorjfif'),
(122, 'Os MiserÃ¡veis', 'Victor Hugo', 3, 3, 'A obra retrata momentos de extrema pobreza e tristeza, o que demonstra a crÃ­tica social extremamente presente nas obras de Victor Hugo. Afinal, o tÃ­tulo â€œOs MiserÃ¡veisâ€ nÃ£o Ã© Ã  toa: vÃ¡rios personagens passam por situaÃ§Ãµes de extrema pobreza, fome e misÃ©ria, o que destaca a desigualdade social da FranÃ§a do sÃ©culo XIX.', 'Fantasia', '../../screen/images/VictorHugojfif'),
(123, 'O Hobbit', 'J.R.R. Tolkien', 3, 3, 'O Hobbit conta a histÃ³ria de Bilbo Bolseiro, um Hobbit pacato e satisfeito cuja vida vira de cabeÃ§a para baixo quando ele se junta ao mago Gandalf e a treze anÃµes em sua jornada para reaver um tesouro roubado.', 'Fantasia', '../../screen/images/OHobbitjfif'),
(124, 'Maze Runner: Correr ou Morrer', ' James Dashner', 3, 3, 'O livro conta a histÃ³ria de Thomas, um adolescente que desperta num estranho elevador, sem qualquer memÃ³ria, a nÃ£o ser do seu prÃ³prio nome. Ele desemboca numa estranha clareira, povoada por garotos a cada mÃªs, chega mais um.', 'FicÃ§Ã£o CientÃ­fica', '../../screen/images/runerjfif');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros_solicitados`
--

CREATE TABLE `livros_solicitados` (
  `id` int(11) NOT NULL,
  `livro_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data_reserva` date DEFAULT NULL,
  `data_devolucao` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `media_avaliacoes`
--

CREATE TABLE `media_avaliacoes` (
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

CREATE TABLE `pessoas` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `multa` float NOT NULL DEFAULT '0',
  `senha` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `user`, `email`, `multa`, `senha`) VALUES
(59, 'arthur', 'arthur', 'arthur@gmail.com', 0, '12345678'),
(56, 'mateus', 'ziliotto', 'gabrielziliotto7asd@gmail.com', 0, '33422547'),
(60, 'paulinholoko0223', 'paulinholoko047', 'paulinholoko@gmail.com', 0, '33422547');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projetolivro`
--

CREATE TABLE `projetolivro` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `nomelivro` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `projetolivro`
--

INSERT INTO `projetolivro` (`id`, `user`, `nomelivro`) VALUES
(27, 47, '104'),
(26, 50, '105'),
(28, 46, '105'),
(29, 45, '104'),
(30, 55, '105'),
(31, 55, '105'),
(32, 55, '104'),
(33, 57, '105'),
(34, 55, '105'),
(35, 58, '104'),
(38, 60, '111'),
(39, 56, '110');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `livro` int(11) NOT NULL,
  `dataini` date NOT NULL,
  `datafim` date NOT NULL,
  `atraso` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `turmas` (
  `id` int(11) NOT NULL,
  `turma` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `livro_id` (`livro_id`),
  ADD KEY `user_id` (`user_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `livro_id` (`livro_id`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `clublivro`
--
ALTER TABLE `clublivro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `livros_solicitados`
--
ALTER TABLE `livros_solicitados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `projetolivro`
--
ALTER TABLE `projetolivro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
