-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 22-Out-2014 às 19:29
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `cruzex`
--
CREATE DATABASE IF NOT EXISTS `cruzex` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cruzex`;
--
-- Base de Dados: `cruzex2012`
--
CREATE DATABASE IF NOT EXISTS `cruzex2012` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cruzex2012`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acao`
--
-- em uso(#1146 - Table 'cruzex2012.acao' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.acao' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `cha_status`
--
-- em uso(#1146 - Table 'cruzex2012.cha_status' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.cha_status' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamado`
--
-- em uso(#1146 - Table 'cruzex2012.chamado' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.chamado' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `ciss`
--
-- em uso(#1146 - Table 'cruzex2012.ciss' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.ciss' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `cissarea`
--
-- em uso(#1146 - Table 'cruzex2012.cissarea' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.cissarea' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cli_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cli_code` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cli_guerra` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cli_email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cli_ramal` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `cli_rtc` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `cli_tf3` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `cli_tf4` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `cli_tf5` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `cli_siscomis` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `loc_id` int(10) DEFAULT NULL,
  `pos_id` int(10) DEFAULT NULL,
  `cli_senha` varchar(200) CHARACTER SET utf8 NOT NULL,
  `cli_funcao` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cli_tel` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ori_id` int(10) unsigned DEFAULT '1',
  `om_id` int(10) DEFAULT NULL,
  `cli_comando` int(10) DEFAULT NULL,
  `cli_secao` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cli_emailinternet` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `pai_id` int(10) DEFAULT '1',
  `cli_ramo` varchar(255) DEFAULT NULL,
  `cli_ok` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cli_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=ucs2 AUTO_INCREMENT=453 ;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cli_id`, `cli_nome`, `cli_code`, `cli_guerra`, `cli_email`, `cli_ramal`, `cli_rtc`, `cli_tf3`, `cli_tf4`, `cli_tf5`, `cli_siscomis`, `loc_id`, `pos_id`, `cli_senha`, `cli_funcao`, `cli_tel`, `ori_id`, `om_id`, `cli_comando`, `cli_secao`, `cli_emailinternet`, `status`, `pai_id`, `cli_ramo`, `cli_ok`) VALUES
(1, 'Administrador', 'admin', 'Administrador', 'admin@cruzex.intraer', '', '', '', '', NULL, '', 55, 0, '25d55ad283aa400af464c76d713c07ad', '', '', 0, 0, NULL, NULL, NULL, 1, 1, '0', 1),
(2, 'ANTONIO CARLOS EGITO DO AMARAL', 'EXDIR01', 'EGITO', 'exdir01@cruzex.intraer', '', '', '', '', NULL, '', 0, 2, '25d55ad283aa400af464c76d713c07ad', 'EXERCISE DIRECTOR', '', 0, 31, NULL, NULL, NULL, 1, 1, 'DIRECTION', 1),
(3, 'ANTONIO RAMIREZ LORENZO', 'EXDIR02', 'LORENZO', 'exdir02@cruzex.intraer', '9272', '3772', '', '', NULL, '', 48, 4, '25d55ad283aa400af464c76d713c07ad', 'DIRECTOR DEPUTY / EXCON', '9272', 0, 41, NULL, NULL, NULL, 1, 1, 'DIRECTION', 1),
(4, 'DANIEL EDUARDO GIMENEZ', 'EXDIR03', 'GIMENEZ', 'exdir03@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'DIRECTOR DEPUTY / EXCON', NULL, 1, 17, NULL, NULL, NULL, 1, 2, 'DIRECTION', 1),
(5, '*', 'EXDIR04', '*', 'exdir04@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'DIRECTOR DEPUTY / EXCON', '', 0, 35, NULL, NULL, NULL, 1, 6, 'DIRECTION', 1),
(6, 'CLAUDIO PARADELO PEIXOTO', 'EXDIR05', 'PEIXOTO', 'exdir05@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'EXERCISE DIRECTOR ASSISTANT', NULL, 1, 41, NULL, NULL, NULL, 1, 1, 'DIRECTION', 1),
(7, 'ADRIANO FERREIRA LIMA', 'EXDIR06', 'FERREIRA LIMA', 'exdir06@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'DIR DEP SECRETARY', '', 0, 41, NULL, NULL, NULL, 1, 1, 'DIRECTION', 1),
(8, '', 'CMV01', 'AMARAL', 'cmv01@cruzex.intraer', '', '', '', '', NULL, '', 0, 4, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 21, NULL, NULL, NULL, 1, 1, 'CENTRE OF MEDIA AND VISITORS', 1),
(9, '', 'CMV02', 'SECCHIN', 'cmv02@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', NULL, 1, 21, NULL, NULL, NULL, 1, 1, 'CENTRE OF MEDIA AND VISITORS', 1),
(10, '', 'CMV03', 'MARCIO', 'cmv03@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'ADMIN CLERK', NULL, 1, 18, NULL, NULL, NULL, 1, 1, 'CENTRE OF MEDIA AND VISITORS', 1),
(11, '', 'CMV04', 'SILVA LOPES', 'cmv04@cruzex.intraer', '', '', '', '', NULL, '', 0, 13, '25d55ad283aa400af464c76d713c07ad', 'CMV DRIVER', '', 0, 18, NULL, NULL, NULL, 1, 1, 'CENTRE OF MEDIA AND VISITORS', 1),
(12, '', 'CMV05', 'AQUINO', 'cmv05@cruzex.intraer', '', '', '', '', NULL, '', 0, 17, '25d55ad283aa400af464c76d713c07ad', 'CMV DRIVER', '', 0, 18, NULL, NULL, NULL, 1, 1, 'CENTRE OF MEDIA AND VISITORS', 1),
(13, '', 'CMV06', 'HUMBERTO', 'cmv06@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'STAFF', NULL, 1, 21, NULL, NULL, NULL, 1, 1, 'CMV - PRESS INFO CELL', 1),
(14, '', 'CMV07', 'GLADISTON', 'cmv07@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'STAFF', NULL, 1, 21, NULL, NULL, NULL, 1, 1, 'CMV - PRESS INFO CELL', 1),
(15, '', 'CMV08', 'V.SANTOS', 'cmv08@cruzex.intraer', '', '', '', '', NULL, '', 0, 14, '25d55ad283aa400af464c76d713c07ad', 'STAFF', '', 0, 21, NULL, NULL, NULL, 1, 1, 'CMV - PRESS INFO CELL', 1),
(16, 'SHEILA SALOME LYALL', 'CMV09', 'LYALL', 'cmv09@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'STAFF', '', 0, 17, NULL, NULL, NULL, 1, 2, 'CMV - PRESS INFO CELL', 1),
(17, 'DANIEL CARLOS ARNEOLDO', 'CMV10', 'ARNEOLDO', 'cmv10@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'STAFF', '', 0, 17, NULL, NULL, NULL, 1, 2, 'CMV - PRESS INFO CELL', 1),
(18, 'LARISSA KAREN RIBEIRO GOMES', 'CMV11', 'LARISSA', 'cmv11@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'UFRN - LETRAS', '', 0, 44, NULL, NULL, NULL, 1, 1, 'CMV - PRESS INFO CELL', 1),
(19, 'JULIENE', 'CMV12', 'JULIENE', 'cmv12@cruzex.intraer', '', '', '', '9091', NULL, '', 4, 8, '25d55ad283aa400af464c76d713c07ad', 'STAFF', '', 0, 21, NULL, NULL, NULL, 1, 1, 'CMV - VISITORS & OBSERVERS CELL', 1),
(20, '', 'CMV13', 'MANOEL', 'cmv13@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'STAFF', '', 0, 18, NULL, NULL, NULL, 1, 1, 'CMV - VISITORS & OBSERVERS CELL', 1),
(21, '', 'CMV14', 'IVANILDO', 'cmv14@cruzex.intraer', '', '', '', '', NULL, '', 0, 14, '25d55ad283aa400af464c76d713c07ad', 'STAFF', '', 0, 18, NULL, NULL, NULL, 1, 1, 'CMV - VISITORS & OBSERVERS CELL', 1),
(22, 'CARLOS EDUARDO VALLE ROSA', 'ANIM01', 'EDUARDO VALLE', 'anim01@cruzex.intraer', '', '', '', '9067', NULL, '', 3, 4, '25d55ad283aa400af464c76d713c07ad', 'ANIMATION CHIEF', '8488955126', 0, 32, NULL, NULL, NULL, 1, 1, 'ANIMATION STAFF ', 0),
(23, 'MARCELO VELLOZO MAGALHaES', 'ANIM02', 'MAGALHAES', 'anim02@cruzex.intraer', '', '', '', '36449067', NULL, '', 3, 5, '25d55ad283aa400af464c76d713c07ad', 'ANIMATION DEPUTY', '', 0, 51, NULL, NULL, NULL, 1, 1, 'ANIMATION STAFF', 0),
(24, 'LUIZ MARCELO SILVERO MAYWORM', 'ANIM03', 'MAYWORM', 'anim03@cruzex.intraer', '', '', '', '', NULL, '', 0, 4, '25d55ad283aa400af464c76d713c07ad', 'GBAD CELL CHIEF', '', 0, 42, NULL, NULL, NULL, 1, 1, 'ANIMATION STAFF', 0),
(25, '', 'ANIM04', 'BREITENSTEIN', 'anim04@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'GBAD CELL ADVISOR', '', 0, 35, NULL, NULL, NULL, 1, 6, 'ANIMATION STAFF', 0),
(26, 'ROBERT DANIEL JONES', 'ANIM05', 'JONES', 'anim05@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'SPACE CELL ADVISOR', NULL, 1, 47, NULL, NULL, NULL, 1, 12, 'ANIMATION STAFF', 0),
(27, '', 'ANIM06', 'XAVIER', 'anim06@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'SPACE CELL CHIEF', NULL, 1, 26, NULL, NULL, NULL, 1, 1, 'ANIMATION STAFF', 0),
(28, 'DAVID ANDREW KIRKENDALL', 'ANIM07', 'KIRKENDALL', 'anim07@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'DT/TST CELL ADVISOR', NULL, 1, 47, NULL, NULL, NULL, 1, 12, 'ANIMATION STAFF', 0),
(29, 'MARCELLO CORREA DE SOUZA', 'ANIM08', 'CORREA', 'anim08@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DT/TST CELL CHIEF', '', 0, 41, NULL, NULL, NULL, 0, 1, 'ANIMATION STAFF', 0),
(30, 'SERGIO ALEXANDRE SALOIO ALVES', 'ANIM09', 'SALOIO', 'anim09@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'INTEL CHIEF', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(31, 'MOACYR MARTINS DA COSTA JUNIOR', 'ANIM10', 'COSTA JUNIOR', 'anim10@cruzex.intraer', '', '', '', '9066', NULL, '', 3, 7, '25d55ad283aa400af464c76d713c07ad', 'BATTLESPACE EVALUATION', '', 0, 36, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(32, 'ELISEU DIAS DA SILVA', 'ANIM11', 'ELISEU', 'anim11@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'INTEL PRODUCTION CHIEF', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(33, 'FAUSTO BATISTA MENDONÃ‡A', 'ANIM12', 'FAUSTO', 'anim12@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'INTEL PRODUCTION 1 (MISREP/BDA SUMMARY)', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(34, 'ALEXANDRE LYRA DIAS', 'ANIM13', 'LYRA', 'anim13@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'INTEL PRODUCTION 2 (MISREP/BDA SUMMARY)', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(35, 'PAULO ROBERTO MARQUES SILVEIRA', 'ANIM14', 'PAULO', 'anim14@cruzex.intraer', '', '', '', '', NULL, '', 0, 13, '25d55ad283aa400af464c76d713c07ad', 'INTEL PRODUCTION 3 (MISREP/BDA SUMMARY)', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(36, 'EDUARDO MARTINEZ DE SOUZA', 'ANIM15', 'MARTINEZ', 'anim15@cruzex.intraer', '', '', '', '', NULL, '', 0, 13, '25d55ad283aa400af464c76d713c07ad', 'INTEL PRODUCTION 4 (INTELL SUMMARY)', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(37, 'RENATO MAIA RAEL', 'ANIM16', 'MAIA', 'anim16@cruzex.intraer', '', '', '', '', NULL, '', 3, 13, '25d55ad283aa400af464c76d713c07ad', 'INTEL PRODUCTION 5 (INTELL SUMMARY)', '3644-9080', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(38, 'LEOMAR DE LIMA', 'ANIM17', 'LEOMAR', 'anim17@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'INTEL PRODUCTION 6 (INTELL REPORTS)', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(39, 'VINICIUS MAGNO GURGEL FARIAS', 'ANIM18', 'GURGEL', 'anim18@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'INTEL PRODUCTION 7 (INTELL REPORTS)', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(40, 'FLAVIO TIAGO FERNANDES', 'ANIM19', 'TIAGO', 'anim19@cruzex.intraer', '', '', '', '', NULL, '', 53, 8, '25d55ad283aa400af464c76d713c07ad', 'SITUATION MAP 1', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(41, 'JEOVAH CARLOS DE SOUSA', 'ANIM20', 'JEOVAH', 'anim20@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'SITUATION MAP 2', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(42, 'THIAGO BARBOSA DE LIMA', 'ANIM21', 'LIMA', 'anim21@cruzex.intraer', '', '', '', '', NULL, '', 0, 13, '25d55ad283aa400af464c76d713c07ad', 'SITUATION MAP 3', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 0),
(43, 'Robert', 'ANIM22', 'ROBERT', 'aic@cruzex.intraer', '', '', '', '', NULL, '', 15, 8, '25d55ad283aa400af464c76d713c07ad', 'AIR INTELIGENCE CENTER', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION INTEL TEAM ', 1),
(44, 'SÃ‰RGIO MAGNO DAS MERCÃŠS', 'ANIM23', 'MAGNO', 'anim23@cruzex.intraer', '', '', '', '', NULL, '', 0, 13, '25d55ad283aa400af464c76d713c07ad', 'INTEL INFO FLOW ASSISTANT', '', 0, 41, NULL, NULL, NULL, 0, 1, 'ANIMATION INTEL TEAM ', 0),
(45, '', 'ANIM24', 'MACIEL', 'cjtf@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'CJTF', '', 0, 36, NULL, NULL, NULL, 1, 1, 'ANIMATION CJTF TEAM', 1),
(46, '', 'ANIM25', 'SIDNEI', 'anim25@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'CJTF TEAM DEPUTY', '', 0, 36, NULL, NULL, NULL, 1, 1, 'ANIMATION CJTF TEAM', 0),
(47, '', 'ANIM26', 'ESTEVES', 'anim26@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'JCO OPERATOR', NULL, 1, 36, NULL, NULL, NULL, 1, 1, 'ANIMATION CJTF TEAM', 0),
(48, '', 'ANIM27', 'CARDOTE', 'anim27@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'JIPTL OPERATOR', NULL, 1, 36, NULL, NULL, NULL, 1, 1, 'ANIMATION CJTF TEAM', 0),
(49, '', 'ANIM28', 'EUSTAQUIO', 'anim28@cruzex.intraer', '', '', '', '', NULL, '', 0, 4, '25d55ad283aa400af464c76d713c07ad', 'LAND COMPONENT ', '', 0, 37, NULL, NULL, NULL, 1, 1, 'ANIMATION CJTF TEAM', 0),
(50, 'ROBERT CLIFFORD LAPREZE', 'ANIM29', 'LAPREZE', 'anim29@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'LAND COMPONENT ', '', 0, 47, NULL, NULL, NULL, 1, 12, 'ANIMATION CJTF TEAM', 0),
(51, 'VAN DYKES LOVETT', 'ANIM30', 'LOVETT', 'anim30@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'MARITIME COMPONENT', '', 0, 47, NULL, NULL, NULL, 1, 12, 'ANIMATION CJTF TEAM', 0),
(52, '', 'ANIM31', 'JOAO GILBERTO', 'anim31@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'MARITIME COMPONENT', '', 0, 37, NULL, NULL, NULL, 1, 1, 'ANIMATION CJTF TEAM', 0),
(53, 'RODRIGO CANO', 'ANIM32', 'RODRIGO', 'nnc@cruzex.intraer', '', '', '', '', NULL, '', 54, 6, '25d55ad283aa400af464c76d713c07ad', 'NNC NEWS AGENCY', '', 0, 21, NULL, NULL, NULL, 1, 1, 'ANIMATION MEDIA TEAM', 1),
(54, 'JUSSARA PECCINI', 'ANIM33', 'JUSSARA', 'anim33@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'MEDIA - JOURNALIST', '', 0, 21, NULL, NULL, NULL, 1, 1, 'ANIMATION MEDIA TEAM', 0),
(55, 'ANTHONY STEPHEN PRESTON', 'ANIM34', 'PRESTON', 'anim34@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'MEDIA - UK ADVISOR', '', 0, 45, NULL, NULL, NULL, 1, 11, 'ANIMATION MEDIA TEAM', 0),
(56, '', 'ANIM35', 'BRUNA', 'anim35@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'MEDIA - JOURNALIST', NULL, 1, 21, NULL, NULL, NULL, 1, 1, 'ANIMATION MEDIA TEAM', 0),
(57, '', 'ANIM36', 'SILVA', 'anim36@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'MEDIA -  JOURNALIST', NULL, 1, 21, NULL, NULL, NULL, 0, 1, 'ANIMATION MEDIA TEAM', 0),
(58, 'Hugo Leonardo da Silva', 'ANIM37', 'HUGO SILVA', 'anim37@cruzex.intraer', '', '', '', '', NULL, '', 54, 8, '25d55ad283aa400af464c76d713c07ad', 'MEDIA - WEB (CRUZEXNET)', '', 0, 21, NULL, NULL, NULL, 1, 1, 'ANIMATION MEDIA TEAM', 0),
(59, '', 'ANIM38', 'ROGERIO', 'anim38@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'MEDIA - TRANSLATOR', '', 0, 21, NULL, NULL, NULL, 1, 1, 'ANIMATION MEDIA TEAM', 0),
(60, 'JHONATAN', 'ANIM39', 'ANA CAROLLINE', 'anim39@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'UFRN - JOURNALIST', '', 0, 44, NULL, NULL, NULL, 1, 1, 'ANIMATION MEDIA TEAM', 0),
(61, 'JHONATAN', 'ANIM40', 'JHONATAN', 'anim40@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'UFRN - LETRAS', '', 0, 44, NULL, NULL, NULL, 1, 1, 'ANIMATION MEDIA TEAM', 0),
(62, 'SANDRO BERBARDON', 'ANIM41', 'BERNARDON', 'anim41@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'CONTROL TEAM CHIEF - SINCRONIZATION MASTER', '', 0, 31, NULL, NULL, NULL, 1, 1, 'ANIMATION FENIX TEAM ', 0),
(63, '', 'ANIM42', 'PLINIO', 'anim42@cruzex.intraer', '', '', '', '(84) 36449071', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'CONTROL TEAM ASSISTANT - FENIX NAVIGATOR OPERATOR', '', 0, 51, NULL, NULL, NULL, 1, 1, 'ANIMATION FENIX TEAM', 0),
(64, 'ROMULO SILVA DE OLIVEIRA', 'ANIM43', 'ROMULO', 'anim43@cruzex.intraer', '9070', '', '', '', NULL, '', 15, 7, '25d55ad283aa400af464c76d713c07ad', 'ICC & FENIX TEAM SUPPORT CHIEF', '3644-9000', 0, 51, NULL, NULL, NULL, 1, 1, 'ANIMATION FENIX TEAM ', 0),
(65, 'RODRIGO ARAUJO FREIRE', 'ANIM44', 'RODRIGO FREIRE', 'anim44@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'ICC & FENIX TEAM SUPPORT DEPUTY', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION FENIX TEAM', 0),
(66, '', 'ANIM45', 'PAIVA', 'anim45@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'ICC & FENIX TEAM SUPPORT STAFF', '', 0, 41, NULL, NULL, NULL, 1, 1, 'ANIMATION FENIX TEAM', 0),
(67, '', 'ANIM46', 'GONCALVES', 'anim46@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'OFFENSIVE/DEFENSIVE RED TEAM TASKER 1', '', 0, 33, NULL, NULL, NULL, 1, 1, 'ANIMATION FENIX TEAM ', 0),
(68, 'LUDWIG GRONEMEYER CRESTTO', 'ANIM47', 'LUDWIG GRONEMEYER ', 'anim47@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'OFFENSIVE/DEFENSIVE RED TEAM TASKER 2', '', 0, 22, NULL, NULL, NULL, 1, 5, 'ANIMATION FENIX TEAM', 0),
(69, '', 'ANIM48', 'MANGRICH', 'anim48@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'AWACS - RED TEAM TASKER', '', 0, 33, NULL, NULL, NULL, 0, 1, 'ANIMATION FENIX TEAM', 0),
(70, 'CHRISTIAN MELO CAJATY', 'ANIM49', 'CAJATY', 'anim49@cruzex.intraer', '9064', '', '', '', NULL, '', 54, 5, '25d55ad283aa400af464c76d713c07ad', 'TRANSPORT / AAR RED TEAM TASKER 1', '21 9979-4986', 0, 34, NULL, NULL, NULL, 1, 1, 'ANIMATION FENIX TEAM', 0),
(71, 'MOACYR MARTINS DA COSTA JUNIOR', 'ANIM50', 'COSTA JUNIOR', 'anim50@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'TRANSPORT RED TEAM TASKER 2', '', 0, 36, NULL, NULL, NULL, 0, 1, 'ANIMATION FENIX TEAM ', 0),
(72, 'EDUARDO BARRIOS', 'ANIM51', 'BARRIOS', 'anim51@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'HELO - RED TEAM TASKER', '', 0, 16, NULL, NULL, NULL, 1, 1, 'ANIMATION FENIX TEAM ', 0),
(73, 'PAULO EUGÃŠNIO ECHEVARRIA', 'ANIM52', 'ECHEVARRIA', 'anim52@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'CRC RED', '', 0, 1, NULL, NULL, NULL, 1, 1, 'ANIMATION FENIX TEAM', 0),
(74, '', 'ANIM53', 'GRACA', 'anim53@cruzex.intraer', '', '', '', '', NULL, '', 0, 13, '25d55ad283aa400af464c76d713c07ad', 'CRC RED', '', 0, 1, NULL, NULL, NULL, 1, 1, 'ANIMATION FENIX TEAM ', 0),
(75, 'ANDRE PRALON FERREIRA LEITE', 'EVAL01', 'PRALON', 'eval01@cruzex.intraer', '', '', '', '', NULL, '', 0, 4, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 41, NULL, NULL, NULL, 1, 1, 'EVALUATION TEAM', 1),
(76, 'RICARDO JOSE A. BISSO', 'EVAL02', 'BISSO', 'eval02@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 17, NULL, NULL, NULL, 1, 2, 'EVALUATION TEAM', 1),
(77, 'LAURA LAYCOCK', 'EVAL03', 'LAYCOCK', 'eval03@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 19, NULL, NULL, NULL, 1, 3, 'EVALUATION TEAM', 1),
(78, 'LUIS ISMAEL MURGUIA', 'EVAL04', 'MURGUIA', 'eval04@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 47, NULL, NULL, NULL, 1, 12, 'EVALUATION TEAM', 1),
(79, 'JAIME REYES LILLO ', 'EVAL05', 'REYES ', 'eval05@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', NULL, 1, 22, NULL, NULL, NULL, 1, 5, 'EVALUATION TEAM', 1),
(80, 'cepparo', 'EVAL06', 'CEPPARO', 'eval06@cruzex.intraer', '', '', '', '', NULL, '', 38, 5, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '4 84 3644-9170', 0, 35, NULL, NULL, NULL, 1, 6, 'EVALUATION TEAM', 1),
(81, 'CARLOS ALBERTO NUNES LOURENCO', 'EVAL07', 'LOURENCO', 'eval07@cruzex.intraer', '', '', '', '', NULL, '', 38, 5, '25d55ad283aa400af464c76d713c07ad', 'EVALUATION TEAM DEPUTY', '', 0, 0, NULL, NULL, NULL, 1, 13, 'EVALUATION TEAM', 1),
(82, 'JOSE HENRIQUE MACEDO COLLACO', 'EVAL08', 'COLLACO', 'eval08@cruzex.intraer', '', '', '', '9170', NULL, '', 38, 5, '25d55ad283aa400af464c76d713c07ad', 'EVALUATION - EXERCISE - FINAL REPORT', '', 0, 41, NULL, NULL, NULL, 1, 1, 'EVALUATION TEAM', 1),
(83, 'FRANÃ‡A', 'REAL01', 'FRANÃ‡A', 'real01@cruzex.intraer', '', '', '', '', NULL, '', 20, 7, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE SUPPORT TEAM', 1),
(84, 'JOSEMBERG', 'REAL02', 'JOSEMBERG', 'real02@cruzex.intraer', '', '', '', '', NULL, '', 20, 13, '25d55ad283aa400af464c76d713c07ad', 'ADMIN CLERK', '9104', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE SUPPORT TEAM', 1),
(85, 'SERGIO LEIBNITZ TOSCANO DE ALMEIDA', 'REAL03', 'TOSCANO', 'real03@cruzex.intraer', '', '', '', '', NULL, '', 0, 4, '25d55ad283aa400af464c76d713c07ad', 'BUDGET CONTROL', '', 0, 40, NULL, NULL, NULL, 0, 1, 'REAL LIFE SUPPORT TEAM', 1),
(86, 'KAROLINA KAPPS', 'REAL04', 'KAROLINA KAPPS', 'real04@cruzex.intraer', '', '', '', '', NULL, '', 20, 19, '25d55ad283aa400af464c76d713c07ad', 'FACILITIES / LODGING / FOOD', '', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - PERSONNEL', 1),
(87, 'WALDINEZ ARAUJO DA SILVA', 'REAL05', 'WALDINEZ', 'real05@cruzex.intraer', '', '', '', '9098', NULL, '', 46, 7, '25d55ad283aa400af464c76d713c07ad', 'COORDINATOR / AERIAL', '', 0, 51, NULL, NULL, NULL, 1, 1, 'REAL LIFE - TRANSPORT', 1),
(88, 'HALANKLEM', 'REAL06', 'HALANKLEM', 'real06@cruzex.intraer', '', '', '', '', NULL, '', 20, 12, '25d55ad283aa400af464c76d713c07ad', 'ROAD / URBAN', '', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - TRANSPORT', 1),
(89, '', 'REAL07', 'FABIO', 'real07@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'FORCE PROTECTION CHIEF', '', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - FORCE PROTECTION', 1),
(90, '', 'REAL08', 'SILVA LOPES', 'real08@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'FORCE PROTECTION DEPUTY', '', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - FORCE PROTECTION', 1),
(91, 'HUGO RODRIGUEZ GONZALEZ ', 'REAL09', 'RODRIGUEZ ', 'real09@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'CHILEAN AIR FORCE SUPPORT', NULL, 1, 22, NULL, NULL, NULL, 1, 5, 'REAL LIFE - CHILEAN OFFICER', 1),
(92, 'RICARDO EDUARO CARANO', 'REAL10', 'CARANO', 'real10@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'ARGENTINEAN LOGISTIC OFFICER', NULL, 1, 17, NULL, NULL, NULL, 1, 2, 'REAL LIFE - ARGENTINEAN OFFICER', 1),
(93, 'CLAUDIO OMAR MARINCOLO', 'REAL11', 'MARINCOLO', 'real11@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'ARGENTINEAN LOGISTIC NCO', '', 0, 17, NULL, NULL, NULL, 1, 2, 'REAL LIFE - ARGENTINEAN NCO', 1),
(94, 'RUBEN ULDARICIO OLMOS', 'REAL12', 'OLMOS', 'real12@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'ARGENTINEAN FINANCE', NULL, 1, 17, NULL, NULL, NULL, 1, 2, 'REAL LIFE - ARGENTINEAN FINANCE', 1),
(95, '', 'REAL13', 'ALLAN', 'real13@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'ARGENTINA LIAISON OFFICER', NULL, 1, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(96, '', 'REAL14', 'NORIO', 'real14@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'CANADA LIAISON OFFICER', NULL, 1, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(97, '', 'REAL15', 'GABRIEL', 'real15@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'CHILE LIAISON OFFICER', NULL, 1, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(98, '', 'REAL16', 'FIEDLER', 'real16@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'ECUADOR LIAISON OFFICER', NULL, 1, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(99, '', 'REAL17', 'RODOLFO', 'real17@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'FRANCE LIAISON OFFICER', NULL, 1, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(100, '', 'REAL18', 'NOVO', 'real18@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'PERU LIAISON OFFICER', NULL, 1, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(101, '', 'REAL19', 'BRENO', 'real19@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'SWEDEN AND UNITED KING LIAISON OFFICER', '', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(102, 'BRENO', 'REAL20', 'BRENO', 'real20@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'UNITED KINGDOM LIAISON OFFICER', '', 0, 18, NULL, NULL, NULL, 0, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(103, '', 'REAL21', 'FONTES', 'real21@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'URUGUAY LIAISON OFFICER', '', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(104, '', 'REAL22', 'NORIO', 'real22@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'USA LIAISON OFFICER', NULL, 1, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(105, '', 'REAL23', 'AUXILIADORA', 'real23@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'VENEZUELA AND PORTUGAL LIAISON OFFICER', '', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE - LIAISON OFFICER', 1),
(106, 'GUSTAVO ALEJANDRO PEREZ ORTIZ', 'ICC01', 'ORTIZ', 'icc01@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'ICC - HEAD', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(107, 'OSCAR RUBEN GARCIA OLALLA', 'ICC02', 'GARCIA OLALLA', 'icc02@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(108, 'WALTER D. R. GASPAROTTI', 'ICC03', 'GASPAROTTI', 'icc03@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(109, 'JUAN CARLOS ACUNA', 'ICC04', 'ACUNA', 'icc04@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(110, 'FRANCISCO GUSTAVO DEMIERRE', 'ICC05', 'DEMIERRE', 'icc05@cruzex.intraer', '', '', '', '', NULL, '', 51, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(111, 'TOMAS IGNACIO ANELLO', 'ICC06', 'ANELLO', 'icc06@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(112, 'PABLO ANDRES HEBER CASTRO', 'ICC07', 'CASTRO', 'icc07@cruzex.intraer', '', '', '', '', NULL, '', 49, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(113, 'MARIO OSCAR CRIPPA', 'ICC08', 'CRIPPA', 'icc08@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(114, 'ANDRES FEDERICO FISCHER ZORRAQUIN', 'ICC09', 'FISCHER ZORRAQUIN', 'icc09@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(115, 'FEDERICO ROBLEDO', 'ICC10', 'FEDERICO ROBLEDO', 'icc10@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(116, 'EDUARDO ANGEL OTERO', 'ICC11', 'OTERO', 'icc11@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(117, 'JORGE RAFAEL VILLEGAS', 'ICC12', 'VILLEGAS', 'icc12@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(118, 'SANDRA DEBORA CANTARINI', 'ICC13', 'CANTARINI', 'icc13@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(119, 'DIEGO ENRIQUE CAMERUCCI', 'ICC14', 'CAMERUCCI', 'icc14@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'ICC TEAM', 1),
(120, '', 'ICC15', '.', 'icc15@cruzex.intraer', '', '', '', '', NULL, '', 0, 19, '25d55ad283aa400af464c76d713c07ad', 'STAFF - ICC', '', 0, 17, NULL, NULL, NULL, 0, 2, 'ICC TEAM', 1),
(121, 'PAULO ERICO SANTOS DE OLIVEIRA', 'CFAC001', 'PAULO ERICO', 'cfac001@cruzex.intraer', '', '', '', '', NULL, '', 0, 3, '25d55ad283aa400af464c76d713c07ad', 'JFACC', '', 0, 33, NULL, NULL, NULL, 1, 1, 'COMMAND GROUP', 1),
(122, 'Salvatti', 'CFAC002', 'SALVATTI', 'cfac002@cruzex.intraer', '', '', '', '', NULL, '', 25, 7, '25d55ad283aa400af464c76d713c07ad', 'JFACC ASSISTANT', '3644-9149', 0, 33, NULL, NULL, NULL, 1, 1, 'COMMAND GROUP', 1),
(123, '', 'CFAC003', 'CARINE', 'cfac003@cruzex.intraer', '', '', '', '', NULL, '', 0, 13, '25d55ad283aa400af464c76d713c07ad', 'JFACC ADMIN CLERK', '', 0, 33, NULL, NULL, NULL, 1, 1, 'COMMAND GROUP', 1),
(124, '', 'CFAC004', 'MAX', 'cfac004@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', NULL, 1, 21, NULL, NULL, NULL, 1, 1, 'COMMAND GROUP - PAO', 1),
(125, '', 'CFAC005', 'WILLIAN', 'cfac005@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'MEDIA STAFF', NULL, 1, 21, NULL, NULL, NULL, 1, 1, 'COMMAND GROUP - PAO', 1),
(126, 'ANA PAULA SILVA', 'CFAC006', 'ANA PAULA', 'cfac006@cruzex.intraer', '', '', '', '', NULL, '', 31, 19, '25d55ad283aa400af464c76d713c07ad', 'UFRN - JOURNALIST', '', 0, 44, NULL, NULL, NULL, 1, 1, 'COMMAND GROUP - PAO', 1),
(127, 'MARCONI PAULO DA SILVA', 'CFAC007', 'MARCONI', 'cfac007@cruzex.intraer', '', '', '', '', NULL, '', 31, 19, '25d55ad283aa400af464c76d713c07ad', 'UFRN - LETRAS', '', 0, 44, NULL, NULL, NULL, 1, 1, 'COMMAND GROUP - PAO', 1),
(128, 'WALTER HUMBERTO BRUN', 'CFAC008', 'BRUN', 'cfac008@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'MEDIA STAFF', NULL, 1, 17, NULL, NULL, NULL, 1, 2, 'COMMAND GROUP - PAO', 1),
(129, 'SILVIA MARIA MARTINS MATTOSO', 'CFAC009', 'SILVIA', 'cfac009@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'LEGAD', '', 0, 0, NULL, NULL, NULL, 1, 1, 'COMMAND GROUP - LEGAD', 1),
(130, 'MARIA ELISA HERNANDEZ', 'CFAC010', 'HERNANDEZ', 'cfac010@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'LEGAD ASSISTANT', '', 0, 17, NULL, NULL, NULL, 1, 2, 'COMMAND GROUP - LEGAD', 1),
(131, 'STEPHEN EDWARD SEE', 'CFAC011', 'SEE', 'cfac011@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'LEGAD ASSISTANT', NULL, 1, 47, NULL, NULL, NULL, 1, 12, 'COMMAND GROUP - LEGAD', 1),
(132, '', 'CFAC020', 'EDUARDO', 'cfac020@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'COS', NULL, 1, 33, NULL, NULL, NULL, 1, 1, 'CFAC HQ', 1),
(133, 'ALEX PORTO LARA', 'CFAC021', 'PORTO', 'cfac021@cruzex.intraer', '', '', '', '(84) 3644-9175', NULL, '', 25, 11, '25d55ad283aa400af464c76d713c07ad', 'ADMIN CLERK', '(84) 3644-9175', 0, 12, NULL, NULL, NULL, 1, 1, 'CFAC HQ', 1),
(134, 'JOSÃ‰ EDUARDO MARANGONI', 'CFAC022', 'MARANGONI', 'cfac022@cruzex.intraer', '', '', '', '', NULL, '', 0, 4, '25d55ad283aa400af464c76d713c07ad', 'COS DEPUTY', '', 0, 17, NULL, NULL, NULL, 1, 2, 'CFAC HQ', 1),
(135, 'JOSÃ‰ MIGUEL AGUIRRE GAMBOA', 'CFAC023', 'AGUIRRE', 'cfac023@cruzex.intraer', '', '', '', '', NULL, '', 0, 4, '25d55ad283aa400af464c76d713c07ad', 'COS DEPUTY', '', 0, 22, NULL, NULL, NULL, 1, 5, 'CFAC HQ', 1),
(136, '', 'CFAC024', 'LE TREQUESSER', 'cfac024@cruzex.intraer', '', '', '', '', NULL, '', 54, 5, '25d55ad283aa400af464c76d713c07ad', 'COS DEPUTY', '', 0, 35, NULL, NULL, NULL, 1, 6, 'CFAC HQ', 1),
(137, 'MARENCO HUGO ENRIQUE ', 'CFAC025', 'MARENCO', 'cfac025@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'COS DEPUTY', NULL, 1, 46, NULL, NULL, NULL, 1, 9, 'CFAC HQ', 1),
(138, 'RUBEN DARIO SANABRIA CONTRERAS', 'CFAC026', 'SANABRIA', 'cfac026@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'COS DEPUTY', NULL, 1, 48, NULL, NULL, NULL, 1, 10, 'CFAC HQ', 1),
(139, 'HUMBERTO SCHAEFER TUESTA', 'CFAC027', 'SCHAEFER ', 'cfac027@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'COS DEPUTY', NULL, 1, 38, NULL, NULL, NULL, 1, 7, 'CFAC HQ', 1),
(140, 'JAMES ROBERT BORTREE', 'CFAC028', 'BORTREE', 'cfac028@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'COS DEPUTY', NULL, 1, 47, NULL, NULL, NULL, 1, 12, 'CFAC HQ', 1),
(141, '', 'CFAC029', 'SA', 'cfac029@cruzex.intraer', '9160/9161', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 4, NULL, NULL, NULL, 1, 1, 'CFAC INFO FLOW CELL', 1),
(142, 'JERÃ”NIMO BASTOS DA MOTTA', 'CFAC030', 'JERONIMO', 'cfac030@cruzex.intraer', '', '', '', '', NULL, '', 6, 11, '25d55ad283aa400af464c76d713c07ad', 'STAFF', '9161 E 9160', 0, 33, NULL, NULL, NULL, 1, 1, 'CFAC INFO FLOW CELL', 1),
(143, 'Gramkow', 'CFAC200', 'GRAMKOW', 'cfac200@cruzex.intraer', '', '', '', '', NULL, '', 34, 5, '25d55ad283aa400af464c76d713c07ad', 'ACOS A2', '', 0, 3, NULL, NULL, NULL, 1, 1, 'A2 - INTELL', 1),
(144, 'JESUS HORACIO DANIEL GUASTI', 'CFAC201', 'GUASTI', 'cfac201@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', NULL, 1, 17, NULL, NULL, NULL, 1, 2, 'A2 - INTELL', 1),
(145, '', 'CFAC202', 'MARTINS', 'cfac202@cruzex.intraer', '', '', '', '', NULL, '', 0, 13, '25d55ad283aa400af464c76d713c07ad', 'ADMIN CLERK', '', 0, 33, NULL, NULL, NULL, 1, 1, 'A2 - INTELL', 1),
(146, 'ANDRE LUIZ ALVES FERREIRA', 'CFAC203', 'ANDRE LUIZ', 'cfac203@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 33, NULL, NULL, NULL, 1, 1, 'A2 - OPS DIV', 1),
(147, 'MARTIN LEWIS SCHIANO JR', 'CFAC204', 'SCHIANO', 'cfac204@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', NULL, 1, 47, NULL, NULL, NULL, 1, 12, 'A2 - OPS DIV', 1),
(148, 'RAFAEL RAMIREZ CHIQUITO', 'CFAC205A', 'R. RAMIREZ ', 'cfac205a@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 48, NULL, NULL, NULL, 1, 10, 'A2 - OPS DIV', 1),
(149, 'FREDDY EMILIO RENDON GONZALEZ ', 'CFAC205B', 'RENDON', 'cfac205b@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 48, NULL, NULL, NULL, 1, 10, 'A2 - OPS DIV', 1),
(150, 'DIEGO DAVID CHAVEZ CARBAJAL', 'CFAC206', 'CHAVEZ', 'cfac206@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'ASSESSMENT ADVISOR', '', 0, 38, NULL, NULL, NULL, 1, 7, 'A2 - OPS DIV', 1),
(151, 'SERGIO ROJAS SCHWEMMER ', 'CFAC207', 'ROJAS', 'cfac207@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'ASSESSMENT ADVISOR', NULL, 1, 22, NULL, NULL, NULL, 1, 5, 'A2 - OPS DIV', 1),
(152, 'NORMAN DE MORAES DANTAS', 'CFAC208', 'NORMAN', 'cfac208@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'COLLECT PLAN ADVISOR', NULL, 1, 33, NULL, NULL, NULL, 1, 1, 'A2 - OPS DIV', 1),
(153, 'SHAUN DAVID BURTON', 'CFAC209', 'BURTON', 'cfac209@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'COLLECT PLAN ADVISOR', '', 0, 45, NULL, NULL, NULL, 1, 11, 'A2 - OPS DIV', 1),
(154, 'EDINELSON FERREIRA DE SENA', 'CFAC210', 'SENA', 'cfac210@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'TARGET / BDA SPECIALIST', NULL, 1, 27, NULL, NULL, NULL, 1, 1, 'A2 - OPS DIV', 1),
(155, 'GIANCARLO FRANÃ‡A APUZZO', 'CFAC300', 'GIANCARLO', 'cfac300@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'ACOS A3', '', 0, 33, NULL, NULL, NULL, 1, 1, 'A3 - OPS', 1),
(156, 'GLEN DANIEL PARKER', 'CFAC301', 'PARKER', 'cfac301@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 45, NULL, NULL, NULL, 1, 11, 'A3 - OPS', 1),
(157, '', 'CFAC302', 'GALVAO', 'cfac302@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'ADMIN CLERK', '', 0, 33, NULL, NULL, NULL, 1, 1, 'A3 - OPS', 1),
(158, '', 'CFAC303', 'CABRAL', 'cfac303@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 33, NULL, NULL, NULL, 1, 1, 'A3 - AOD CELL', 1),
(159, '', 'CFAC304', 'HONORIO', 'cfac304@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'OFFENSIVE AIR OPS CHIEF', '', 0, 6, NULL, NULL, NULL, 1, 1, 'A3 - AOD CELL', 1),
(160, 'ALBERT WIDMER THOMAS', 'CFAC305', 'WIDMER', 'cfac305@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'OFFENSIVE AIR OPS STAFF', NULL, 1, 22, NULL, NULL, NULL, 1, 5, 'A3 - AOD CELL', 1),
(161, 'JUAN MANUEL SAENZ DONAYRE', 'CFAC306', 'SAENZ', 'cfac306@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'OFFENSIVE AIR OPS STAFF', NULL, 1, 38, NULL, NULL, NULL, 1, 7, 'A3 - AOD CELL(ROTATING PERSONNEL)', 1),
(162, '', 'CFAC308', 'PROCOPIO', 'cfac308@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DEFENSIVE AIR OPS CHIEF ', '', 0, 6, NULL, NULL, NULL, 1, 1, 'A3 - AOD CELL', 1),
(163, 'BO ANDERS SEGERBY', 'CFAC309', 'SEGERBY', 'cfac309@cruzex.intraer', '', '', '', '', NULL, '', 49, 5, '25d55ad283aa400af464c76d713c07ad', 'DEFENSIVE AIR OPS STAFF', '', 0, 43, NULL, NULL, NULL, 1, 8, 'A3 - AOD CELL', 1),
(164, 'ROYMAN HERNANDEZ BRICEÃ‡O', 'CFAC310A', 'HERNANDEZ', 'cfac310a@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'DEFENSIVE AIR OPS STAFF', '', 0, 48, NULL, NULL, NULL, 1, 10, 'A3 - AOD CELL', 1),
(165, 'LUIS DANIEL MENDOZA PEÃ‡A', 'CFAC310B', 'MENDOZA', 'cfac310b@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'DEFENSIVE AIR OPS STAFF', '', 0, 48, NULL, NULL, NULL, 1, 10, 'A3 - AOD CELL', 1),
(166, '', 'CFAC311', 'BAETA', 'cfac311@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'SUPPORT - AEW', '', 0, 12, NULL, NULL, NULL, 1, 1, 'A3 - AOD CELL', 1),
(167, '', 'CFAC312', 'HENRIQUE', 'cfac312@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'SUPPORT  - REC', NULL, 1, 7, NULL, NULL, NULL, 1, 1, 'A3 - AOD CELL', 1),
(168, 'ELTON DAVID FRANCA', 'CFAC313', 'FRANCA', 'cfac313@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'SUPPORT - AAR / TAT', '', 0, 57, NULL, NULL, NULL, 1, 1, 'A3 - AOD CELL', 1),
(169, 'BRUNO DE FREITAS MACHADO', 'CFAC314', 'MACHADO', 'cfac314@cruzex.intraer', '', '', '', '3644-9143', NULL, '', 24, 8, '25d55ad283aa400af464c76d713c07ad', 'SUPPORT - AAR / TAT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'A3 - AOD CELL', 1),
(170, 'GIESER AUGUSTO RAUBER DUARTE', 'CFAC315', 'AUGUSTO', 'cfac315@cruzex.intraer', '9143', '', '', '', NULL, '', 24, 8, '25d55ad283aa400af464c76d713c07ad', 'SUPPORT - HELLO', '', 0, 13, NULL, NULL, NULL, 1, 1, 'A3 - AOD CELL', 1),
(171, 'FERNANDO', 'CFAC316', 'FERNANDO', 'cfac316@cruzex.intraer', '9143', '', '', '', NULL, '', 24, 7, '25d55ad283aa400af464c76d713c07ad', 'SUPPORT - HELLO', '', 0, 16, NULL, NULL, NULL, 1, 1, 'A3 - AOD CELL', 1),
(172, 'MARCO AURÃ‰LIO MOREIRA FERREIRA', 'CFAC317', 'MARCO AURELIO', 'cfac317@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'TARGET SPECIALIST', '', 0, 7, NULL, NULL, NULL, 1, 1, 'A3 - AOD CELL', 1),
(173, '', 'CFAC318', 'THONY-LAMBERTI', 'cfac318@cruzex.intraer', '', '', '', '', NULL, '', 50, 5, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 35, NULL, NULL, NULL, 1, 6, 'A3 - SPACE CELL ', 1),
(174, 'FRANCISCO PIZARRO ASTE', 'CFAC319', 'PIZARRO', 'cfac319@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', NULL, 1, 22, NULL, NULL, NULL, 1, 5, 'A3 - SPACE CELL ', 1),
(175, 'JosÃ© Vital Vital', 'CFAC320', 'VITAL', 'cfac320@cruzex.intraer', '', '', '', '', NULL, '', 50, 4, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '9077', 0, 26, NULL, NULL, NULL, 1, 1, 'A3 - SPACE CELL ', 1),
(176, '', 'CFAC321', 'FABIO FREIXO', 'cfac321@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 10, NULL, NULL, NULL, 1, 1, 'A3 - GBAD CELL', 1),
(177, '', 'CFAC322', 'BASTOS', 'cfac322@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', NULL, 1, 26, NULL, NULL, NULL, 1, 1, 'A3 - AIRSPACE COORDINATION CELL', 1),
(178, 'ADRIANO', 'CFAC323', 'ADRIANO', 'cfac323@cruzex.intraer', '', '', '', '9143', NULL, '', 6, 7, '25d55ad283aa400af464c76d713c07ad', 'AC STAFF', '', 0, 26, NULL, NULL, NULL, 1, 1, 'A3 - AIRSPACE COORDINATION CELL', 1),
(179, '', 'CFAC324', 'EDIVALDO', 'cfac324@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 26, NULL, NULL, NULL, 1, 1, 'A3 - WEATHER FORECAST BRANCH', 1),
(180, '', 'CFAC400', 'M. LIMA', 'cfac400@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'ACOS A4', '', 0, 14, NULL, NULL, NULL, 1, 1, 'A4 - LOG', 1),
(181, 'EDUARDO MANN PELZ ', 'CFAC401', 'MANN', 'cfac401@cruzex.intraer', '', '', '', '', NULL, '', 0, 4, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 22, NULL, NULL, NULL, 1, 5, 'A4 - LOG', 1),
(182, 'LEONARDO JOSE CONTRERAS GONZALEZ', 'CFAC402A', 'CONTRERAS', 'cfac402a@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'PLANNING STAFF', '', 0, 48, NULL, NULL, NULL, 1, 10, 'A4 - LOG', 1),
(183, 'JUAN RICARDO SOSA CASTRO', 'CFAC402B', 'SOSA', 'cfac402b@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'PLANNING STAFF', '', 0, 48, NULL, NULL, NULL, 1, 10, 'A4 - LOG', 1),
(184, 'ANDERSON', 'CFAC403', 'ALVES', 'cfac403@cruzex.intraer', '', '', '', '(84) 3644-9159', NULL, '', 6, 13, '25d55ad283aa400af464c76d713c07ad', 'ADMIN CLERK', '(61) 8271-4414', 0, 33, NULL, NULL, NULL, 1, 1, 'A4 - LOG', 1),
(185, '', 'CFAC500', 'ALVES', 'cfac500@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'ACOS A5', NULL, 1, 4, NULL, NULL, NULL, 1, 1, 'A5 - PLAN', 1),
(186, 'FABIAN CARLOS CELOTTO', 'CFAC501', 'CELLOTO', 'cfac501@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', NULL, 1, 17, NULL, NULL, NULL, 1, 2, 'A5 - PLAN', 1),
(187, 'MATTHEW ALEXANDER NICHOLAS', 'CFAC502', 'NICHOLAS', 'cfac502@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 45, NULL, NULL, NULL, 1, 11, 'A5 - PLAN', 1),
(188, 'JOAO', 'CFAC503', 'FONSECA', 'cfac503@cruzex.intraer', '', '', '', '', NULL, '', 6, 6, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 33, NULL, NULL, NULL, 1, 1, 'A5 - PLANNING CELL', 1),
(189, 'HUGO RICARDO ALVIAR CALLE', 'CFAC504', 'ALVIAR', 'cfac504@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'PLANNING STAFF', NULL, 1, 38, NULL, NULL, NULL, 1, 7, 'A5 - PLANNING CELL (ROTATING PERSONNEL)', 1),
(190, 'ROBERTO MELGAR SHEEN', 'CFAC505', 'MELGAR SHEEN', 'cfac505@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'PLANNING STAFF', '', 0, 38, NULL, NULL, NULL, 1, 7, 'A5 - PLANNIG CELL (ROTATING PERSONNEL)', 1),
(191, 'PER GUSTAV DAHLBOM', 'CFAC506', 'PER DAHLBOM', 'cfac506@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'PLANNING STAFF', '', 0, 43, NULL, NULL, NULL, 1, 8, 'A5 - PLANNING CELL', 1),
(192, 'CLAUDIO IBACACHE ESCUDERO ', 'CFAC507', 'IBACACHE', 'cfac507@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '25d55ad283aa400af464c76d713c07ad', 'PLANNING STAFF', NULL, 1, 22, NULL, NULL, NULL, 1, 5, 'A5 - PLANNING CELL', 1),
(193, '', 'CFAC508', 'NAVARRO', 'cfac508@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'CHIEF ', NULL, 1, 9, NULL, NULL, NULL, 1, 1, 'A5- CAMPAIGN ANALYSIS CELL', 1),
(194, 'WILFRIDO MOYA SALAZAR', 'CFAC509', 'MOYA ', 'cfac509@cruzex.intraer', '', '', '', '', NULL, '', 36, 5, '25d55ad283aa400af464c76d713c07ad', 'CA STAFF', '', 0, 29, NULL, NULL, NULL, 1, 4, 'A5- CAMPAIGN ANALYSIS CELL', 1),
(195, 'VIRGILIO RAUL  MARQUEZ MORILLO', 'CFAC510', 'VIRGILIO MARQUEZ', 'cfac510@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'CA STAFF', NULL, 1, 48, NULL, NULL, NULL, 1, 10, 'A5- CAMPAIGN ANALYSIS CELL', 1),
(196, 'JOSE LUIS TREMONT JIMENEZ', 'CFAC511', 'TREMONT', 'cfac511@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'CA STAFF', '', 0, 48, NULL, NULL, NULL, 1, 10, 'A5 - CAMPAING ANALISYS CELL', 1),
(197, 'RUBEN DARÃO VILLAGRA CAMEJO', 'CFAC512', 'VILLAGRA', 'cfac512@cruzex.intraer', '', '', '', '', NULL, '', 36, 5, '25d55ad283aa400af464c76d713c07ad', 'CA STAFF', '0059899097101', 0, 46, NULL, NULL, NULL, 1, 9, 'A5- CAMPAIGN ANALYSIS CELL', 1),
(198, 'ALEXANDRE SILVEIRA URQUIA', 'CFAC513', 'URQUIA', 'cfac513@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', NULL, 1, 12, NULL, NULL, NULL, 1, 1, 'A5 - TARGET CELL', 1),
(199, 'JosÃ©', 'CFAC600', 'FONSECA', 'cfac600@cruzex.intraer', '', '', '', '(84) 3644-9117', NULL, '', 17, 5, '25d55ad283aa400af464c76d713c07ad', 'ACOS A6', '(41) 9244-3209', 0, 26, NULL, NULL, NULL, 1, 1, 'A6 - CIS', 1),
(200, '', 'CFAC601', 'GALINA', 'cfac601@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'ADMIN CLERK', '', 0, 26, NULL, NULL, NULL, 1, 1, 'A6 - CIS', 1),
(201, 'ERICO ASANO DE MELLO', 'CFAC602', 'ERICO', 'cfac602@cruzex.intraer', '', '', '', '(84) 3644-9119', NULL, '', 17, 7, '25d55ad283aa400af464c76d713c07ad', 'INFO SECURITY ADVISOR', '', 0, 20, NULL, NULL, NULL, 1, 1, 'A6 - INFO TECH CELL', 1),
(202, 'RAPHAEL SANTANNA DE SOUZA', 'CFAC603', 'RAPHAEL', 'cfac603@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'IT SUPPORT COORDINATOR', '', 0, 59, NULL, NULL, NULL, 1, 1, 'A6 - INFO TECH CELL', 1),
(203, '', 'CFAC604', 'BRAGA', 'cfac604@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'COMMPLAN', '', 0, 26, NULL, NULL, NULL, 1, 1, 'A6 - PLANNING CELL', 1),
(204, '', 'CFAC900', 'CINELLO', 'cfac900@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'ACOS A9', NULL, 1, 21, NULL, NULL, NULL, 1, 1, 'A9 - CIMIC', 1),
(205, 'RODOLFO GUILHERMO PELOURSON', 'CFAC901', 'PELOURSON', 'cfac901@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', NULL, 1, 17, NULL, NULL, NULL, 1, 2, 'A9 - CIMIC', 1),
(206, '', 'CFAC902', 'RACHID', 'cfac902@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'CIMIC STAFF', NULL, 1, 21, NULL, NULL, NULL, 1, 1, 'A9 - CIMIC', 1),
(207, 'DIEGO', 'CFAC903', '.DIEGO', 'cfac903@cruzex.intraer', '', '', '', '', NULL, '', 31, 19, '25d55ad283aa400af464c76d713c07ad', 'UFRN - LETRAS', '', 0, 44, NULL, NULL, NULL, 1, 1, 'A9 - CIMIC', 1),
(208, 'SCHUMANN', 'CAOC1000', 'SCHUMANN', 'caoc1000@cruzex.intraer', '', '', '', '', NULL, '', 1, 4, '25d55ad283aa400af464c76d713c07ad', 'CAOC DIRECTOR', '9125', 0, 30, NULL, NULL, NULL, 1, 1, 'CAOC COMMAND GROUP', 1),
(209, '', 'CAOC1001', 'PIETRANI', 'caoc1001@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'BATTLE STAFF DIRECTOR', '', 0, 33, NULL, NULL, NULL, 1, 1, 'CAOC COMMAND GROUP', 1),
(210, 'Eduardo Rcoha', 'CAOC1002', 'Eduardo Rocha', 'caoc1002@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'GDAB', '', 0, 25, NULL, NULL, NULL, 1, 1, 'CAOC LIAISON ELEMENTS', 1),
(211, 'PAULO EDSON SANTA BARBA', 'CAOC1003', 'PAULO EDSON', 'caoc1003@cruzex.intraer', '', '', '', '', NULL, '', 13, 6, '25d55ad283aa400af464c76d713c07ad', 'SOF', '', 0, 25, NULL, NULL, NULL, 1, 1, 'CAOC LIAISON ELEMENTS', 1),
(212, '', 'CAOC1020', 'RODRIGUES', 'caoc1020@cruzex.intraer', '', '', '', '', NULL, '', 21, 6, '25d55ad283aa400af464c76d713c07ad', 'OFFENSIVE CHIEF', '', 0, 5, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(213, '', 'CAOC1021', 'JANIGA', 'caoc1021@cruzex.intraer', '', '', '', '', NULL, '', 49, 5, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 35, NULL, NULL, NULL, 1, 6, 'TASK BRANCH', 1),
(214, '', 'CAOC1022', 'GLAUCO', 'caoc1022@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 33, NULL, NULL, NULL, 1, 1, 'TASK BRANCH AIR INTELL CELL', 1),
(215, 'VALDEMAR HOEHR AMORIM', 'CAOC1023', 'HOER', 'caoc1023@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'THREAT STAFF', '', 0, 23, NULL, NULL, NULL, 1, 1, 'TASK BRANCH AIR INTELL CELL', 1),
(216, 'CARLOS ALBERTO BRANCO MARINHO', 'CAOC1024', 'CARLOS ALBERTO', 'caoc1024@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'TARGET STAFF', NULL, 1, 41, NULL, NULL, NULL, 1, 1, 'TASK BRANCH AIR INTELL CELL', 1),
(217, 'GUSTAVO CHRISTIAN TORRES ONETO', 'CAOC1025', 'TORRES', 'caoc1025@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'TARGET STAFF', NULL, 1, 38, NULL, NULL, NULL, 1, 7, 'TASK BRANCH AIR INTELL CELL', 1),
(218, 'LEONARDO RODRIGUES JULIO DOS SANTOS', 'CAOC1026', 'RODRIGUES', 'caoc1026@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'DATA COLLECTION', NULL, 1, 41, NULL, NULL, NULL, 1, 1, 'TASK BRANCH AIR INTELL CELL', 1),
(219, 'ANDERSON AUGUSTO DA COSTA', 'CAOC1027', 'AUGUSTO', 'caoc1027@cruzex.intraer', '', '', '', '3644-9100', NULL, '', 11, 12, '25d55ad283aa400af464c76d713c07ad', 'ADMIN CLERK', '', 0, 51, NULL, NULL, NULL, 1, 1, 'TASK BRANCH AIR INTELL CELL ', 1),
(220, 'Soares', 'CAOC1028', 'SOARES', 'caoc1028@cruzex.intraer', '', '', '', '', NULL, '', 49, 6, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '3644-9042', 0, 8, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1),
(221, 'ERIC PEREIRA MORAES', 'CAOC1055', 'MORAES', 'caoc1055@cruzex.intraer', '', '', '', '', NULL, '', 0, 5, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 47, NULL, NULL, NULL, 1, 12, 'TASK BRANCH MAOP/ATO CELL', 1),
(222, '', 'CAOC1029', 'FALCAO', 'caoc1029@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'A-1', '', 0, 2, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1),
(223, '', 'CAOC1030', 'KIYOHARA', 'caoc1030@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'A-29', '', 0, 15, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1);
INSERT INTO `cliente` (`cli_id`, `cli_nome`, `cli_code`, `cli_guerra`, `cli_email`, `cli_ramal`, `cli_rtc`, `cli_tf3`, `cli_tf4`, `cli_tf5`, `cli_siscomis`, `loc_id`, `pos_id`, `cli_senha`, `cli_funcao`, `cli_tel`, `ori_id`, `om_id`, `cli_comando`, `cli_secao`, `cli_emailinternet`, `status`, `pai_id`, `cli_ramo`, `cli_ok`) VALUES
(224, '', 'CAOC1031', 'FELTRAN', 'caoc1031@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'F-5', '', 0, 4, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1),
(225, '', 'CAOC1032', 'LORDELO', 'caoc1032@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'F-2000', '', 0, 9, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1),
(226, 'WERNCK', 'CAOC1033', 'WERNCK', 'caoc1033@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'E-99', '', 0, 12, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1),
(227, 'PAULO SUAREZ PASSOS', 'CAOC1034', 'PAULO', 'caoc1034@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'AH-2 ', NULL, 1, 13, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1),
(228, 'LEANDRO RICHARD HILÃRIO', 'CAOC1035', 'LEANDRO', 'caoc1035@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'H-60', '', 0, 16, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1),
(229, 'EVANDRO CARLOS BARANZELLI', 'CAOC1036', 'BARANZELLI', 'caoc1036@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'KC-130/KC-137', NULL, 1, 1, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1),
(230, 'HENRIQUE COELHO BELLI', 'CAOC1037', 'BELLI', 'caoc1037@cruzex.intraer', '', '', '', '', NULL, '', 49, 8, '25d55ad283aa400af464c76d713c07ad', 'C-105', '', 0, 1, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1),
(231, 'RAUL BERNABE MACHADO', 'CAOC1038', 'MACHADO', 'caoc1038@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'A-4AR', '', 0, 17, NULL, NULL, NULL, 1, 2, 'TASK BRANCH MAOP/ATO CELL', 1),
(232, 'ALFREDO RIOS LATORRE', 'CAOC1039', 'RIOS', 'caoc1039@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'F-16', '', 0, 22, NULL, NULL, NULL, 1, 5, 'TASK BRANCH MAOP/ATO CELL', 1),
(233, 'ALEXANDER ARBULU MARTINEZ', 'CAOC1040', 'ARBULU', 'caoc1040@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'M2000', '', 0, 38, NULL, NULL, NULL, 1, 7, 'TASK BRANCH MAOP/ATO CELL', 1),
(234, 'LUIS MANUEL HUMBERTO FLORES MUNOZ', 'CAOC1041', ' FLORES ', 'caoc1041@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'A37', '', 0, 38, NULL, NULL, NULL, 1, 7, 'TASK BRANCH MAOP/ATO CELL', 1),
(235, 'JUAN PABLO TRYON CARBONE', 'CAOC1042', 'TRYON', 'caoc1042@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'STAFF', NULL, 1, 38, NULL, NULL, NULL, 1, 7, 'TASK BRANCH MAOP/ATO CELL', 1),
(236, 'DAVID RICARDO TAPIA ARCOS', 'CAOC1043', 'DAVID TAPIA', 'caoc1043@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'STAFF', '', 0, 29, NULL, NULL, NULL, 1, 4, 'TASK BRANCH MAOP/ATO CELL', 1),
(237, '*', 'CAOC1044', '*', 'caoc1044@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'STAFF', '', 0, 45, NULL, NULL, NULL, 0, 11, 'TASK BRANCH MAOP/ATO CELL', 1),
(238, '', 'CAOC1045', 'IBARRA', 'caoc1045@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'RAFALE', '', 0, 35, NULL, NULL, NULL, 1, 6, 'TASK BRANCH MAOP/ATO CELL', 1),
(239, 'DANIEL EDUARDO MASPERO', 'CAOC1046', 'MASPERO', 'caoc1046@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'KC-130', NULL, 1, 17, NULL, NULL, NULL, 1, 2, 'TASK BRANCH MAOP/ATO CELL', 1),
(240, 'PER HNERIK EDLUND', 'CAOC1047', 'HENRIK EDLUN', 'caoc1047@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'GRIPPEN', NULL, 1, 43, NULL, NULL, NULL, 1, 8, 'TASK BRANCH MAOP/ATO CELL', 1),
(241, 'JULIO CESAR BARDESIO BACCINO', 'CAOC1048', 'BARDESIO', 'caoc1048@cruzex.intraer', '', '', '', '', NULL, '', 49, 6, '25d55ad283aa400af464c76d713c07ad', 'A-37', '', 0, 46, NULL, NULL, NULL, 1, 9, 'TASK BRANCH MAOP/ATO CELL', 1),
(242, 'GONZALO SANDE COLMAN', 'CAOC1049', ' SANDE', 'caoc1049@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'IA-58', '', 0, 46, NULL, NULL, NULL, 1, 9, 'TASK BRANCH MAOP/ATO CELL', 1),
(243, 'MELINDA TIFFANY BELL', 'CAOC1050', 'MELINDA BELL', 'caoc1050@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'F-16 / KC-135 / A-10', '', 0, 47, NULL, NULL, NULL, 1, 12, 'TASK BRANCH MAOP/ATO CELL', 1),
(244, 'LEONARDO JOSE CARTAYA PINO', 'CAOC1051A', 'CARTAYA', 'caoc1051a@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'F-16', '', 0, 48, NULL, NULL, NULL, 0, 10, 'TASK BRANCH MAOP/ATO CELL', 1),
(245, 'YEFFERSON CARABALLO GONZALEZ ', 'CAOC1051', 'Maj CARTAYA AND Capt CARABALLO', 'caoc1051@cruzex.intraer', '', '', '', '', NULL, '', 49, 10, '25d55ad283aa400af464c76d713c07ad', 'F-16', '', 0, 48, NULL, NULL, NULL, 1, 10, 'TASK BRANCH MAOP ATO CELL', 1),
(246, '', 'CAOC1052', 'JEAN', 'caoc1052@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 26, NULL, NULL, NULL, 1, 1, 'TASK BRANCH AIRSPACE MGT CELL', 1),
(247, '', 'CAOC1053', 'WILTON', 'caoc1053@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'AMC STAFF', NULL, 1, 26, NULL, NULL, NULL, 1, 1, 'TASK BRANCH AIRSPACE MGT CELL', 1),
(248, 'CLÃUDIO PORTO ANTUNES DA SILVA', 'CAOC1054', 'ANTUNES', 'caoc1054@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'SPECIAL OPERATIONS', '', 0, 28, NULL, NULL, NULL, 1, 1, 'TASK BRANCH MAOP/ATO CELL', 1),
(249, 'SERGIO NOGUEIRA BLASO', 'CAOC1070', 'NOGUEIRA', 'caoc1070@cruzex.intraer', '', '', '', '33649024', NULL, '', 21, 6, '25d55ad283aa400af464c76d713c07ad', 'SENIOR OPS OFFICER CHIEF', '(55) 96316948 ', 0, 49, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(250, 'Bruno', 'CAOC1071', 'BOISSON', 'caoc1071@cruzex.intraer', '', '', '', '', NULL, '', 13, 5, '25d55ad283aa400af464c76d713c07ad', 'SOO DEPUTY', '', 0, 35, NULL, NULL, NULL, 1, 6, 'CAOC CURRENT OPS', 1),
(251, 'JOSÃ‰ MARINHO MOREIRA', 'CAOC1072', 'MOREIRA', 'caoc1072@cruzex.intraer', '', '', '', '(84)3364-9126/9124', NULL, '', 1, 7, '25d55ad283aa400af464c76d713c07ad', 'ADMIN CLERK', '', 0, 26, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(252, '', 'CAOC1073', 'WATSON', 'caoc1073@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'RAP ASSISTANT                   ', '', 0, 26, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(253, '', 'CAOC1074', 'RAFAELA', 'caoc1074@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'RAP OPERATOR', '', 0, 26, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(254, '', 'CAOC1075', 'LINS', 'caoc1075@cruzex.intraer', '', '', '', '', NULL, '', 49, 6, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 33, NULL, NULL, NULL, 1, 1, 'TASK BRANCH', 1),
(255, 'ANIBAL HERNAN LEIVA', 'CAOC1076', 'LEIVA', 'caoc1076@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'OFFENSIVE DEPUTY', NULL, 1, 17, NULL, NULL, NULL, 1, 2, 'CAOC CURRENT OPS', 1),
(256, 'HANS ERICK GOTTFRIED YANEZ', 'CAOC1077', 'GOTTFRIED', 'caoc1077@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'OFFENSIVE DEPUTY', NULL, 1, 38, NULL, NULL, NULL, 1, 7, 'CAOC CURRENT OPS', 1),
(257, 'JESUS ALBERTO FERNANDEZ PEÃ‡ALOZA', 'CAOC1078A', 'FERNANDEZ', 'caoc1078a@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'OFFENSIVE DEPUTY', '', 0, 48, NULL, NULL, NULL, 1, 10, 'CAOC CURRENT OPS', 1),
(258, 'CARLOS RICARDO SISCO VELASQUEZ', 'CAOC1078B', 'SISCO', 'caoc1078b@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'OFFENSIVE DEPUTY', '', 0, 48, NULL, NULL, NULL, 1, 10, 'CAOC CURRENT OPS', 1),
(259, '', 'CAOC1079', 'MAGIOLI', 'caoc1079@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'DEFENSIVE CHIEF', NULL, 1, 26, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(260, '', 'CAOC1080', 'BRYNJE', 'caoc1080@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DEFENSIVE DEPUTY', '', 0, 43, NULL, NULL, NULL, 1, 8, 'CAOC CURRENT OPS', 1),
(261, 'ANDRES  ARCAUZ LUNA', 'CAOC1081', 'ARCAUZ', 'caoc1081@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DEFENSIVE DEPUTY', '', 0, 46, NULL, NULL, NULL, 1, 9, 'CAOC CURRENT OPS', 1),
(262, 'ROBERT RONDON CORDERO', 'CAOC1082A', 'RONDON', 'caoc1082a@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'DEFENSIVE DEPUTY', NULL, 1, 48, NULL, NULL, NULL, 1, 10, 'CAOC CURRENT OPS', 1),
(263, 'WILFREDO GUSTAVO FONSECA RUIZ ', 'CAOC1082B', 'FONSECA', 'caoc1082b@cruzex.intraer', '', '', '', '', NULL, '', 13, 6, '25d55ad283aa400af464c76d713c07ad', 'DEFENSIVE DEPUTY', '', 0, 48, NULL, NULL, NULL, 1, 10, 'CAOC CURRENT OPS', 1),
(264, '', 'CAOC1083', 'MARQUES', 'caoc1083@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'AEW', NULL, 1, 12, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(265, '', 'CAOC1084', 'VINICIUS', 'caoc1084@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'AEW', '', 0, 12, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(266, 'RAPHAEL VARGAS VILAR', 'CAOC1085', 'VILAR', 'caoc1085@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'AAR / TAT', NULL, 1, 1, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(267, 'THOMAS RODRIGUES DE OLIVEIRA', 'CAOC1086', 'THOMAS', 'caoc1086@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'AAR / TAT', NULL, 1, 1, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(268, 'ALEX COSTA MALHEIROS', 'CAOC1087', 'MALHEIROS', 'caoc1087@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'CJRCC LIAISION', NULL, 1, 11, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(269, 'OSCAR VINÃCIUS PISCO ROCHA DA SILVA', 'CAOC1088', 'OSCAR', 'caoc1088@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'INTELL CHIEF', '', 0, 5, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(270, 'DELCIO SILVERIO DOS SANTOS FILHO', 'CAOC1089', 'DELCIO', 'caoc1089@cruzex.intraer', '', '', '', '', NULL, '', 21, 11, '25d55ad283aa400af464c76d713c07ad', 'INTELL DEPUTY', '9033', 0, 41, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(271, '', 'CAOC1090', 'FRITZ', 'caoc1090@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'DT/TST CELL CHIEF', '', 0, 35, NULL, NULL, NULL, 1, 6, 'CAOC CURRENT OPS', 1),
(272, 'MICHAEL RICHARD SIMS', 'CAOC1091', 'SIMS', 'caoc1091@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DT/TST CELL DEPUTY', '', 0, 47, NULL, NULL, NULL, 1, 12, 'CAOC CURRENT OPS', 1),
(273, 'ROBERT MICHAEL RICH', 'CAOC1092', 'ROBERT RICH', 'caoc1092@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DT/TST CELL DEPUTY', '', 0, 47, NULL, NULL, NULL, 1, 12, 'CAOC CURRENT OPS', 1),
(274, 'JAMES BRANDON EVES', 'CAOC1092', 'EVES', 'caoc1092@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'DT/TST CELL LEGAL ADVISOR', NULL, 1, 47, NULL, NULL, NULL, 0, 12, 'CAOC CURRENT OPS', 1),
(275, 'ALEXANDRO DA COSTA BORGES', 'CAOC1093', 'DA COSTA', 'caoc1093@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DT/TST CELL DEPUTY', '', 0, 0, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(276, 'GALO FERNANDO ALVAREZ BENALCAZAR', 'CAOC1094', 'GALO ALVAREZ', 'caoc1094@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DT/TST CELL DEPUTY', '', 0, 24, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(277, '', 'CAOC1095', 'JASSEY', 'caoc1095@cruzex.intraer', '', '', '', '', NULL, '', 50, 7, '25d55ad283aa400af464c76d713c07ad', 'GBAD CELL CHIEF', '', 0, 35, NULL, NULL, NULL, 1, 6, 'CAOC CURRENT OPS', 1),
(278, 'LUCAS RODRIGUES NOGUEIRA LEMOS', 'CAOC1096', 'LEMOS', 'caoc1096@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'GBAD CELL DEPUTY', NULL, 1, 1, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(279, 'Capt Baroni', 'CAOC1097', 'BARONI', 'caoc1097@cruzex.intraer', '', '', '', '', NULL, '', 21, 7, '25d55ad283aa400af464c76d713c07ad', 'AIRSPACE COORD CHIEF', '9020', 0, 26, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(280, 'EDIVALDO', 'CAOC1098', 'EDIVALDO', 'caoc1098@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'WEATHER FORECAST CHIEF', '', 0, 26, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(281, '', 'CAOC1099', 'VILLAS BOAS', 'caoc1099@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'WEATHER FORECASTER', NULL, 1, 26, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(282, 'GONZALO VILLEGAS CAMPOS', 'CAOC1100', 'VILLEGA CAMPOS', 'caoc1100@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'SOFTWARE OPERATOR - WG', '', 0, 17, NULL, NULL, NULL, 1, 2, 'CAOC CURRENT OPS', 1),
(283, 'CARLOS DIEGO BRAVO RETA', 'CAOC1101', 'BRAVO RETA', 'caoc1101@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'SOFTWARE OPERATOR - ICC', '', 0, 17, NULL, NULL, NULL, 1, 2, 'CAOC CURRENT OPS', 1),
(284, 'LEONARDO ROCHA FABIANO DE SOUZA', 'CAOC1102', 'SOUZA', 'caoc1102@cruzex.intraer', '', '', '', '', NULL, '', 21, 12, '25d55ad283aa400af464c76d713c07ad', 'FLOW CONTROL', '36449034', 0, 41, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(285, 'HELDER LINE OLIVEIRA', 'CAOC1103', 'HELDER', 'caoc1103@cruzex.intraer', '', '', '', '', NULL, '', 21, 12, '25d55ad283aa400af464c76d713c07ad', 'FLOW CONTROL', '36449034', 0, 41, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(286, 'FABIO HEKEL LOPES MOREIRA', 'CAOC1104', 'FABIO HEKEL', 'caoc1104@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'SPECIAL OPERATIONS', '', 0, 28, NULL, NULL, NULL, 1, 1, 'CAOC CURRENT OPS', 1),
(287, '', 'CAOC1105', 'AUZIER', 'caoc1105@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'BLUE CRC CHIEF', '', 0, 26, NULL, NULL, NULL, 1, 1, 'CRC BLUE', 1),
(288, '', 'CAOC1106', 'DONALDO', 'caoc1106@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'CRC BLUE', NULL, 1, 26, NULL, NULL, NULL, 1, 1, 'CRC BLUE', 1),
(289, '', 'CAOC1107', 'ROSSI', 'caoc1107@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'CRC BLUE', '', 0, 26, NULL, NULL, NULL, 1, 1, 'CRC BLUE', 1),
(290, '', 'CAOC1108', 'LUNKES', 'caoc1108@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'CRC BLUE', '', 0, 26, NULL, NULL, NULL, 1, 1, 'CRC BLUE', 1),
(291, 'SILVIO ROBERTO ASSUNÃ‡ÃƒO DE OLIVEIRA FILHO', 'CAOC1120', 'SILVIO', 'caoc1120@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'CHIEF', '', 0, 11, NULL, NULL, NULL, 1, 1, 'CJRCC', 1),
(292, 'BRUNO OLIMPIO DE MORAIS', 'CAOC1121', 'STRAFACCI', 'caoc1121@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'CSAR DUTY OFFICER ', NULL, 1, 11, NULL, NULL, NULL, 1, 1, 'CJRCC', 1),
(293, 'FABIO LOURENÃ‡O CARNEIRO BARBOSA', 'CAOC1123', 'BARBOSA', 'caoc1123@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'CSAR STAFF', '', 0, 0, NULL, NULL, NULL, 1, 1, 'CJRCC', 1),
(294, 'BRUNO VIEIRA PASSOS', 'CAOC1124', 'VIEIRA', 'caoc1124@cruzex.intraer', '', '', '', '', NULL, '', 9, 8, '25d55ad283aa400af464c76d713c07ad', 'CSAR STAFF', '', 0, 0, NULL, NULL, NULL, 1, 1, 'CJRCC', 1),
(295, 'BRUNO ROQUE TEIXEIRA', 'CAOC1125', 'ROQUE', 'caoc1125@cruzex.intraer', '', '', '', '3644-9123/36449124', NULL, '', 9, 7, '95dd1ad0bb1fbbc40a74d8bdf16900dd', 'CSAR STAFF', '55 81426300', 0, 16, NULL, NULL, NULL, 1, 1, 'CJRCC', 1),
(296, 'CARLOSHENRIQUE AFONSO SILVA', 'CIS001', 'AFONSO', 'cis001@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '25d55ad283aa400af464c76d713c07ad', 'PLANS / CONCEPTION COORDIINATOR', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(297, 'SANDRO BENEDET', 'CIS002', 'BENEDET', 'cis002@cruzex.intraer', '', '', '', '', NULL, '', 0, 6, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(298, 'CLÃUDIO DA COSTA SILVA', 'CIS003', 'COSTA', 'cis003@cruzex.intraer', '9010', '', '', '', NULL, '', 1, 6, '25d55ad283aa400af464c76d713c07ad', 'GENERAL COORDINATOR', '84 36449010', 0, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(299, 'BRUNO MICHEL MARCONDES ALVES', 'CIS004', 'ALVES', 'cis004@cruzex.intraer', '9002', '', '', '', NULL, '', 1, 7, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', '55 21 9499 1534', 0, 50, NULL, NULL, NULL, 1, 1, 'CIS', 1),
(300, 'LEONARDO ANDRÃ‰ HABERFELD MAIA', 'CIS005', 'HABERFELD', 'cis005@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'AUXILIARY', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(301, 'ROMULO SILVA DE OLIVEIRA', 'CIS006', 'ROMULO', 'cis006@cruzex.intraer', '', '', '', '', NULL, '', 57, 7, '25d55ad283aa400af464c76d713c07ad', 'COMGAR ASSISTENT', '', 0, 51, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(302, 'ARTHUR EDUARDO PAIVA DIAS DE SA', 'CIS007', 'PAIVA', 'cis007@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'AUXILIARY', '', 0, 51, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(303, 'CLAUDIO ALVES BAPTISTA', 'CIS008', 'CLAUDIO', 'cis008@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'TELECOMUNICATIONS COORDINATOR', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(304, 'FERNANDO ANTONIO PAIVA DE AZEVEDO', 'CIS009', 'AZEVEDO', 'cis009@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(305, 'BRUNO CARLOS DA CONCEIÃ‡ÃƒO', 'CIS010', 'BRUNO', 'cis010@cruzex.intraer', '', '', '', '9139', NULL, '', 57, 8, '25d55ad283aa400af464c76d713c07ad', 'TELEPHONY COORDINATOR', '(32) 9965-4554', 0, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(306, 'LUIZ CLAUDIO CERQUEIRA DE ARAUJO', 'CIS011', 'LUIZ CLAUDIO', 'cis011@cruzex.intraer', '(84)3644-9007', '', '', '9007', NULL, '', 57, 7, '25d55ad283aa400af464c76d713c07ad', 'ELETRIC POWER COORDINATOR', '9007', 0, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(307, 'GERSON MONTEIRO SIQUEIRA', 'CIS012', 'MONTEIRO', 'cis012@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'INFO TECH COORDINATOR', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(308, 'TULIO BARBOSA LEAL', 'CIS013', 'TULIO', 'cis013@cruzex.intraer', '', '', '', '(84) 3644-9193', NULL, '', 57, 7, '25d55ad283aa400af464c76d713c07ad', 'VTC COORDINATOR', '(84) 9993-1931', 0, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(309, 'MARCO ANTONIO FERREIRA DA SILVA', 'CIS014', 'MARCO ANTONIO', 'cis014@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'STRUCTURE COORDINATOR', NULL, 1, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(310, 'MARCIO BATISTELA RODRIGUES', 'CIS015', 'BATISTELA', 'cis015@cruzex.intraer', '', '', '', '', NULL, '', 0, 7, '25d55ad283aa400af464c76d713c07ad', 'SUPPLY COORDINATOR', '', 0, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(311, 'CARLOS ALBERTO DE ANCHIETA', 'CIS016', 'ANCHIETA', 'cis016@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '25d55ad283aa400af464c76d713c07ad', 'ADMIN COORDINATOR', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(312, 'GILSON AUGUSTO DE ALBUQUERQUE WANDERLEY', 'CIS017', 'WANDERLEY', 'cis017@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '25d55ad283aa400af464c76d713c07ad', 'DEPUTY', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(313, 'CLAUIDONOR DE FRANCA LIMA', 'CIS018', 'CLAUDIONOR', 'cis018@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'TELESAT TECHNICIAN', '', 0, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(314, 'MARCELO SILVA CARNEIRO', 'CIS019', 'MARCELO', 'cis019@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'TELESAT TECHNICIAN', NULL, 1, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(315, 'LEONARDO DO CARMO DA SILVA COSTA', 'CIS020', 'LEONARDO', 'cis020@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'SISCOMIS TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(316, 'LUIS ANTONIO PEREIRA MENDES', 'CIS021', 'MENDES', 'cis021@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'SISCOMIS TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(317, 'DANIEL BATISTELA RODRIGUES', 'CIS022', 'DANIEL', 'cis022@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'SISCOMIS TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(318, 'MANOEL DOMICIANO GURGEL NETO', 'CIS023', 'DOMICIANO', 'cis023@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'SISCOMIS TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(319, 'FRANCISCO EDIL DE SOUSA SILVA', 'CIS024', 'EDIL', 'cis024@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'SISCOMIS TECHNICIAN', NULL, 1, 53, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(320, 'MARCELO GONCALVES', 'CIS025', 'GONCALVES', 'cis025@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'VTC TECHNICIAN', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(321, 'FLAVIO FERREIRA ALVES', 'CIS026', 'FLAVIO', 'cis026@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'VTC TECHNICIAN', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(322, 'CLAUDIO NETO PINHEIRO', 'CIS027', 'NETO', 'cis027@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'VTC TECHNICIAN', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(323, 'NELIO FERNANDES', 'CIS028', 'NELIO', 'cis028@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'VTC TECHNICIAN', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(324, 'EDILSON JOSE PINTO PEIXOTO', 'CIS029', 'PEIXOTO', 'cis029@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'VTC TECHNICIAN', '', 0, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(325, 'WAGNER DE QUEIROZ FERREIRA', 'CIS030', 'WAGNER', 'cis030@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'VTC TECHNICIAN', NULL, 1, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(326, 'HENRIQUE HUDSON DE SOUZA', 'CIS031', 'HUDSON', 'cis031@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'VTC TECHNICIAN', NULL, 1, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(327, 'RENATO MARCONDES COMUCCI', 'CIS032', 'MARCONDES', 'cis032@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'NETWORK TECHNICIAN', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(328, 'CARLOS JOSE FERNANDES', 'CIS033', 'CARLOS JOSE', 'cis033@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'NETWORK TECHNICIAN', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(329, 'REGIS LUIZ SANTOS DOS SANTOS', 'CIS034', 'REGIS', 'cis034@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'NETWORK TECHNICIAN', '', 0, 55, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(330, 'PAULO ROBERTO DE PAULA JUNIOR', 'CIS035', 'PAULO', 'cis035@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'NETWORK TECHNICIAN', '', 0, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(331, 'LEANDRO MUNIZ DE OLIVEIRA', 'CIS036', 'MUNIZ', 'cis036@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'NETWORK TECHNICIAN', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(332, 'TIAGO PEREIRA DA SILVA', 'CIS037', 'TIAGO', 'cis037@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'NETWORK TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(333, 'JARBAS BORGES PEREIRA', 'CIS038', 'JARBAS', 'cis038@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'TELEPHONY TECHNICIAN', NULL, 1, 18, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(334, 'EDILSON ERNESTO BORGES', 'CIS039', 'BORGES', 'cis039@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'TELEPHONY TECHNICIAN', NULL, 1, 18, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(335, 'WANDERLEY DE SOUZA MATOS', 'CIS040', 'MATOS', 'cis040@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'TELEPHONY TECHNICIAN', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(336, 'JOSE RIBEIRO DA COSTA JUNIOR', 'CIS041', 'COSTA JUNIOR', 'cis041@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'TELEPHONY TECHNICIAN', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(337, 'ANDERSON DOS SANTOS VASCONCELOS', 'CIS042', 'VASCONCELOS', 'cis042@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'TELEPHONY TECHNICIAN', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(338, 'CLAUDIO RODRIGUES CALDERANO', 'CIS043', 'CALDERANO', 'cis043@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'TELEPHONY TECHNICIAN', '', 0, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(339, 'GILBERTO ESTRELA DOMINGUES', 'CIS044', 'ESTRELA', 'cis044@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '25d55ad283aa400af464c76d713c07ad', 'TELEPHONY TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(340, 'ADISON JOSE DE ALBUQUERQUE', 'CIS045', 'ADISON', 'cis045@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC POWER TECHNICIAN', '', 0, 18, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(341, 'JOSE CARLOS DA COSTA CARLOS', 'CIS046', 'J. CARLOS', 'cis046@cruzex.intraer', '', '', '', '', NULL, '', 58, 11, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC POWER TECHNICIAN', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(342, 'GLAUBER RIBEIRO DOS SANTOS', 'CIS047', 'GLAUBER', 'cis047@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC POWER TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(343, 'FLAVIO DA SILVA BRAGA', 'CIS048', 'BRAGA', 'cis048@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC POWER TECHNICIAN', '', 0, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(344, 'ISRAEL VIANA DE MOURA JUNIOR', 'CIS049', 'MOURA', 'cis049@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC POWER TECHNICIAN', NULL, 1, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(345, 'IVANILDO GOMES DO REGO', 'CIS050', 'IVANILDO', 'cis050@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC POWER TECHNICIAN', '', 0, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(346, 'JOSE EDUARDO DOS SANTOS SALES', 'CIS051', 'SALES', 'cis051@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC POWER TECHNICIAN', '', 0, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(347, 'WAGNER ROSA MANO', 'CIS052', 'MANO', 'cis052@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC POWER TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(348, 'LUIZ ALBERTO BENJAMIM RIBEIRO', 'CIS053', 'LUIZ', 'cis053@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC POWER TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(349, 'NELSON FRANCO BARBOSA', 'CIS054', 'NELSON', 'cis054@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC POWER TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(350, 'GILDEMAR DO COUTO SANTOS', 'CIS055', 'COUTO', 'cis055@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'ELECTRIC MECHANIC', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(351, 'CLEYVSON DE OLIVEIRA BARROS', 'CIS056', 'CLEYVSON', 'cis056@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'SUPORT AND HARDWARE CONTROL TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(352, 'ALESSANDRO GAMA ANTUNES', 'CIS057', 'GAMA', 'cis057@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'SUPORT AND HARDWARE CONTROL TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(353, 'TIAGO PINHEIRO GEDEAO', 'CIS058', 'GEDEAO', 'cis058@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'SUPORT AND HARDWARE CONTROL TECHNICIAN', '', 0, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(354, 'ALDO DE SOUZA PESSOA', 'CIS059', 'ALDO', 'cis059@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'SUPORT AND HARDWARE CONTROL TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(355, 'RONALDO TOMAZ DE AQUINO', 'CIS060', 'RONALDO', 'cis060@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'IT TECHNICIAN', NULL, 1, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(356, 'MONICA GONÃ‡ALVES CAVALCANTE', 'CIS061', 'MONICA', 'cis061@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'IT TECHNICIAN', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(357, 'FRANCISCO WELLINGTON DE SOUSA SILVA', 'CIS062', 'F. SOUZA', 'cis062@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'IT TECHNICIAN', NULL, 1, 53, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(358, 'MANOEL RODRIGUES FLORES FILHO', 'CIS063', 'RODRIGUES', 'cis063@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'IT TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(359, 'LUIS CARLOS PEREIRA', 'CIS064', 'LUIS CARLOS', 'cis064@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'STRUCTURE TECHNICIAN', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(360, 'VALMIR DA SILVA DIAS', 'CIS065', 'VALMIR', 'cis065@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'STRUCTURE TECHNICIAN', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(361, 'LUIZ ALBERTO DE OLIVEIRA FARIAS', 'CIS066', 'FARIAS', 'cis066@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'STRUCTURE TECHNICIAN', NULL, 1, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(362, 'MAGNO SANTOS REVOREDO', 'CIS067', 'REVOREDO', 'cis067@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '25d55ad283aa400af464c76d713c07ad', 'STRUCTURE TECHNICIAN', NULL, 1, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(363, 'ALFREDO JOSE BARBOZA DE OLIVEIRA', 'CIS068', 'ALFREDO', 'cis068@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'STRUCTURE TECHNICIAN', '', 0, 56, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(364, 'ROBERTO LIBERATO', 'CIS069', 'LIBERATO', 'cis069@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'STRUCTURE TECHNICIAN', NULL, 1, 56, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(365, 'FRANCISCO DE ASSIS ARAUJO JUNIOR', 'CIS070', 'F. JUNIOR', 'cis070@cruzex.intraer', '', '', '', '', NULL, '', 0, 15, '25d55ad283aa400af464c76d713c07ad', 'CAR DRIVER', '', 0, 53, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(366, 'ERALDO ALBUQUERQUE DA COSTA', 'CIS071', 'ALBUQUERQUE', 'cis071@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'CAR DRIVER', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(367, 'JOSE ROBERTO DIONISIO FERREIRA', 'CIS072', 'ROBERTO', 'cis072@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'CAR DRIVER', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(368, 'RODRIGO DE OLIVEIRA FRANCO', 'CIS073', 'FRANCO', 'cis073@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '25d55ad283aa400af464c76d713c07ad', 'CAR DRIVER', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(369, 'JONEY MARTINS RIBEIRO', 'CIS074', 'JONEY', 'cis074@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'CAR DRIVER', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(370, 'LUIZ CARLOS SILVA DO VALE', 'CIS075', 'LUIZ', 'cis075@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '25d55ad283aa400af464c76d713c07ad', 'CAR DRIVER', NULL, 1, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(371, 'PAULO ROBERTO DE OLIVEIRA COSTA', 'CIS076', 'COSTA', 'cis076@cruzex.intraer', '', '3', '1', '2', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'CAR DRIVER', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(372, 'PAULO ROBERTO CARVALHO CHAVES', 'CIS077', 'CHAVES', 'cis077@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, '25d55ad283aa400af464c76d713c07ad', 'CAR DRIVER', NULL, 1, 50, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(373, 'CLAUDIO ISAIAS DA SILVA', 'CIS078', 'ISAIAS', 'cis078@cruzex.intraer', '', '', '', '', NULL, '', 0, 15, '25d55ad283aa400af464c76d713c07ad', 'CAR DRIVER', '', 0, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(374, 'NAELSON RODRIGUES BARBOSA', 'CIS079', 'NAELSON', 'cis079@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '25d55ad283aa400af464c76d713c07ad', 'CAR DRIVER', NULL, 1, 52, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(376, 'SANDRO', 'IT14', 'SANDRO', 'it14@cruzex.intraer', '', '', '', '', NULL, '', 55, 11, '', 'HELPDESK', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(377, 'J CLAUDIO', 'CAOC1109', 'J CLAUDIO', 'caoc1109@cruzex.intraer', '', '', '', '', NULL, '', 4, 7, '', 'CRC BLUE OFFENSIVE', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CRC BLUE', 1),
(378, 'GUERIN', 'CAOC1110', 'GUERIN', 'CAOC1110@cruzex.intraer', '', '', '', '', NULL, '', 4, 8, '', 'CRC BLUE DEFENSIVE', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CRC BLUE', 1),
(379, 'Rodrigo', 'IT40', '', 'it40@cruzex.intraer', '', '', '', '', NULL, '', 3, 13, '25d55ad283aa400af464c76d713c07ad', '', '', 0, 20, NULL, NULL, NULL, 0, 1, 'IT SUPORT', 1),
(380, 'Fernando Antonio Rodrigues Dias', 'IT01', 'DIAS', 'it01@cruzex.intraer', '', '', '', '', NULL, '', 0, 4, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 57, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(382, 'Tania', 'IT02', 'Tania', 'it02@cruzex.intraer', '', '', '', '', NULL, '', 55, 5, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '9141', 0, 57, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(383, 'Marcelo Valverde Fernandes', 'IT03', 'VALVERDE', 'it04@cruzex.intraer', '', '', '', '', NULL, '', 55, 5, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(384, 'Eduardo Vieira de Oliveira Aguiar', 'IT06', 'EDUARDO', 'it06@cruzex.intraer', '9013', '', '', '', NULL, '', 55, 8, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(385, 'Eduardo de Moraes Furtado', 'IT07', 'EDUARDO FURTADO', 'it06@cruzex.intraer', '', '', '', '', NULL, '', 55, 8, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(386, 'Alessandro  Monteiro da Costa', 'IT08', 'ALESSANDRO', 'it07@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(387, 'Flavio A. de Almeida e Silva', 'IT09', 'ALMEIDA', 'it08@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(388, 'Douglas Yamashita de Moura', 'IT05', 'DOUGLAS', 'it05@cruzex.intraer', '', '', '', '', NULL, '', 0, 8, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 58, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(389, 'Alexandre Becker Caxero', 'IT11', 'BECKER', 'it11@cruzex.intraer', '', '', '', '', NULL, '', 55, 9, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '9011', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(433, 'Ferro', 'IT16', 'Ferro', 'it16@cruzex.intraer', '9012', '', '', '', NULL, '', 55, 11, '25d55ad283aa400af464c76d713c07ad', 'IT SUPPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPPORT', 1),
(391, 'Murillo Victor Pinto', 'IT10', 'MURILLO', 'it10@cruzex.intraer', '', '', '', '', NULL, '', 55, 9, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 57, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(392, 'SO MARCELO CCARJ', 'IT15', 'MARCELO', 'it15@cruzex.intraer', '', '', '', '', NULL, '', 3, 11, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(393, 'Luzimario Pinto Ferro', 'IT16', 'FERRO', 'it15@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 0, 1, '0', 1),
(394, 'RogÃ©rio Castro Alves Vasques', 'IT17', 'VASQUES', 'it17@cruzex.intraer', '', '', '', '', NULL, '', 55, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(395, 'ELIFAS CERQUEIRA RIBEIRO', 'IT18', 'ELIFAS', 'it18@cruzex.intraer', '', '', '', '', NULL, '', 55, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '(21) 83323905', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(396, '', 'IT19', 'BURCK', 'it19@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(397, 'Anderson Machado de Oliveira', 'IT21', 'A MACHADO', 'it20@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(398, 'William de Sousa Domingues', 'IT20', 'WILLIAM', 'it21@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(399, 'Mauro Evangelista Da Silva', 'IT22', 'MAURO', 'it22@cruzex.intraer', '', '', '', '', NULL, '', 51, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 58, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(400, 'Andre Roberto Nascimento', 'IT23', 'ROBERTO', 'it23@cruzex.intraer', '', '', '', '', NULL, '', 55, 13, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(401, 'Marcio Aurelio Alves', 'IT24', 'AURELIO', 'it24@cruzex.intraer', '', '', '', '', NULL, '', 0, 13, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(402, 'Alex Ribeiro Pereira', 'IT25', 'ALEX', 'it25@cruzex.intraer', '', '', '', '', NULL, '', 55, 13, 'd41d8cd98f00b204e9800998ecf8427e', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(403, '', 'IT26', 'TATIANA', 'it26@cruzex.intraer', '', '', '', '', NULL, '', 55, 13, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(404, 'ERIKA', 'IT27', 'ERIKA', 'it27@cruzex.intraer', '', '', '', '', NULL, '', 55, 13, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '84-3644-9012', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(405, 'PINHEIRO', 'IT28', 'PINHEIRO', 'it28@cruzex.intraer', '', '', '', '', NULL, '', 55, 13, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 57, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(406, 'Wagner Vieira Alves', 'IT35', 'WAGNER', 'it29@cruzex.intraer', '', '', '', '', NULL, '', 55, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(407, 'JESSE', 'IT30', 'JESSE', 'it30@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(408, 'Marcos Paulo Alvarenga Bezerra', 'IT33', 'MARCOS PAULO', 'it31@cruzex.intraer', '', '', '', '', NULL, '', 0, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(409, 'Alisson Alves Oliveira Leite', 'IT29', 'ALISSON', 'it29@cruzex.intraer', '', '', '', '', NULL, '', 32, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 57, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(410, 'Dayvison Sathler', 'IT43', 'SATHLER', 'it43@cruzex.intraer', '', '', '', '', NULL, '', 55, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(411, 'THIAGO', 'IT34', 'THIAGO', 'it34@cruzex.intraer', '', '', '', '', NULL, '', 55, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 57, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(412, 'Jennifer Cristina de M. Gomes', 'IT32', 'JENNIFER', 'it35@cruzex.intraer', '', '', '', '', NULL, '', 0, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(413, 'LETICIA', 'IT36', 'LETICIA', 'it36@cruzex.intraer', '', '', '', '', NULL, '', 0, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(414, 'BARROS', 'IT37', 'BARROS', 'it37@cruzex.intraer', '', '', '', '', NULL, '', 55, 13, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(415, 'Marcele da Silva Selli', 'IT31', 'MARCELE', 'it38@cruzex.intraer', '', '', '', '', NULL, '', 55, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(416, 'MERYANE', 'IT39', 'MERYANE', 'it39@cruzex.intraer', '', '', '', '', NULL, '', 55, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '84 3644-9013', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(417, 'Wagner Dias da Silva', 'IT45', 'WAGNER', 'it41@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(418, 'Daniel Felipe De Araujo Coelho', 'IT47', 'DANIEL', 'it42@cruzex.intraer', '', '', '', '', NULL, '', 6, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(419, 'Ronnie Serodio Prata', 'IT38', 'RONNIE', 'it44@cruzex.intraer', '', '', '', '', NULL, '', 55, 14, 'd41d8cd98f00b204e9800998ecf8427e', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(420, '', 'IT51', 'VICTOR', 'it45@cruzex.intraer', '', '', '', '', NULL, '', 0, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(421, 'Vinicius Prado Jordao', 'IT49', 'JORDAO', 'it49@cruzex.intraer', '', '', '', '', NULL, '', 55, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(422, 'WALLACE BARBOZA MEDENDES', 'IT48', 'WALLACE', 'it48@cruzex.intraer', '', '', '', '', NULL, '', 55, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(423, 'Rodrigo Santiago Soares', 'IT40', 'RODRIGO', 'it48@cruzex.intraer', '', '', '', '', NULL, '', 55, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(424, 'Paula De Nardi', 'IT41', 'DE NARDI', 'it49@cruzex.intraer', '', '', '', '', NULL, '', 55, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(425, 'Renan Santos Boldrini', 'IT42', 'BOLDRINI', 'it42@cruzex.intraer', '', '', '', '', NULL, '', 55, 12, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(426, 'Jessica Correa', 'IT52', 'JESSICA', 'it52@cruzex.intraer', '', '', '', '', NULL, '', 55, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(427, 'Anderson Jose da SIlva', 'IT55', 'ANDERSON', 'it55@cruzex.intraer', '', '', '', '', NULL, '', 0, 15, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(428, 'Maximiliano Ribeiro Guimaraes', 'IT53', 'MAXIMILIANO', 'it53@cruzex.intraer', '', '', '', '', NULL, '', 0, 15, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(429, '', 'IT54', 'CUNHA', 'it54@cruzex.intraer', '', '', '', '', NULL, '', 0, 15, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(430, 'Nilvamberto Carlos Bertolin Filho', 'IT56', 'NILVAMBERTO', 'it56@cruzex.intraer', '', '', '', '', NULL, '', 55, 15, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '(84) 3644-9012', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(431, '', 'IT58', 'COUTINHO', 'it57@cruzex.intraer', '', '', '', '', NULL, '', 0, 15, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(432, 'Gabriel Damaso L. da Silva', 'IT57', 'DAMASO', 'it58@cruzex.intraer', '', '', '', '', NULL, '', 0, 15, '25d55ad283aa400af464c76d713c07ad', 'IT SUPORT', '', 0, 52, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(435, 'UBIRATAN', 'IT44', 'UBIRATAN', 'it44@cruzex.intraer', '', '', '', '', NULL, '', 55, 14, '25d55ad283aa400af464c76d713c07ad', 'IT SUPPORT', '9011', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(434, 'AGUINALDO TAVARES', 'IT46', 'TAVARES', 'it46@cruzex.intraer', '', '', '', '', NULL, '', 55, 13, '25d55ad283aa400af464c76d713c07ad', 'IT SUPPORT', '9012', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(446, '', 'CAOC1112', 'EVES', 'caoc1112@cruzex.intraer', '', '', '', '', NULL, '', 21, 7, '', 'DT/TST CELL ADVISOR', '', 0, 47, NULL, NULL, NULL, 1, 12, 'CAOC CURRENT OPS', 1),
(436, 'CARLOS', 'IT50', 'CARLOS', 'it50@cruzex.intraer', '', '', '', '', NULL, '', 4, 14, '', 'IT SUPPORT', '(84) 3644-9089', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPPORT', 1),
(437, 'ELTON', 'IT13', 'ELTON', 'it13@cruzex.intraer', '', '', '', '', NULL, '', 0, 11, '', 'IT SUPPORT', '', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPPORT', 1),
(438, 'JARDEL', 'IT59', 'JARDEL', 'it59@cruzex.intraer', '', '', '', '', NULL, '', 55, 14, '', 'IT SUPPORT', '', 0, 51, NULL, NULL, NULL, 1, 1, 'IT SUPPORT', 1),
(439, 'ERICO', 'IT04', 'ERICO', 'it04@cruzex.intraer', '', '', '', '', NULL, '', 55, 7, '7d0966cbeb3bf0cea2f4738e38dc010d', 'IT SUPORT', '', 0, 0, NULL, NULL, NULL, 1, 1, 'IT SUPORT', 1),
(440, 'WICHAN', 'CIS080', 'WICHAN', 'cis080@cruzex.intraer', '', '', '', '', NULL, '', 57, 6, '', 'CISS', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(441, 'CIDNEY', 'ANIM54', 'CIDNEY', 'anim54@cruzex.intraer', '', '', '', '36449063', NULL, '', 54, 7, '', 'FORECAST CHIEF', '', 0, 26, NULL, NULL, NULL, 1, 1, 'WEATHER FORECAST', 1),
(442, 'GILBERTO', 'CIS081', 'GILBERTO', 'cis081@cruzex.intraer', '', '', '', '', NULL, '', 57, 7, '', 'ADMINISTRATION CLERK', '', 0, 49, NULL, NULL, NULL, 1, 1, 'CISS', 1),
(443, 'MANGRICH', 'CAOC1111', 'MANGRICH', 'caoc1111@cruzex.intraer', '', '', '', '', NULL, '', 21, 6, '', 'SOO DEPUTY', '', 0, 33, NULL, NULL, NULL, 1, 1, 'CURRENT OPS', 1),
(444, 'ANTONIO JOSE DA SILVA', 'ANIM55', 'DA SILVA', 'anim55@cruzex.intraer', '', '', '', '9062', NULL, '', 54, 12, '', 'FORECAST DEPUTY', '8388840016', 0, 26, NULL, NULL, NULL, 1, 1, 'WEATHER FORECAST', 1),
(445, 'SIDNEY CESAR COELHO ALVES', 'EVAL09', 'SIDNEY', 'eval09@cruzex.intraer', '', '', '', '9170', NULL, '', 38, 5, '', 'OBSERVER', '', 0, 37, NULL, NULL, NULL, 1, 1, 'EVALUATION TEAM', 1),
(447, '', 'EVAL10', 'MARCELO SILVA', 'eval10@cruzex.intraer', '', '', '', '', NULL, '', 38, 5, '', 'OBSERVER', '', 0, 25, NULL, NULL, NULL, 1, 1, 'EVALUATION TEAM', 1),
(448, NULL, 'IT12', NULL, 'it12@cruzex.intraer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '80172feb43996f8e8cd8759b918000e4', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, 1),
(449, 'RODRIGO 2', 'IT60', 'RODRIGO', 'it60@cruzex.intraer', '', '', '', '', NULL, '', 55, 14, '', 'IT SUPPORT', '9011', 0, 20, NULL, NULL, NULL, 1, 1, 'IT SUPPORT', 1),
(450, '', 'CAOC1113', 'VALLE', 'caoc1113@cruzex.intraer', '', '', '', '', NULL, '', 4, 11, '', 'CRC BLUE AUXILIARY', '', 0, 52, NULL, NULL, NULL, 1, 1, 'CRC BLUE', 1),
(451, 'VALLE', 'REAL24', 'VALLE', 'real24@cruzex.intraer', '', '', '', '9103 ou 9105', NULL, '', 20, 7, '', 'FACILITIES CHIEF', '(84) 8895-8823', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE SUPPORT TEAM', 1),
(452, '', 'REAL25', 'MICHEL', 'real25@cruzex.intraer', '', '', '', '', NULL, '', 16, 8, '', 'FORCE PROTECTION DEPUTY', '', 0, 18, NULL, NULL, NULL, 1, 1, 'REAL LIFE FORCE PROTECTION', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_area`
--
-- em uso(#1146 - Table 'cruzex2012.cliente_area' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.cliente_area' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_grupo`
--
-- em uso(#1146 - Table 'cruzex2012.cliente_grupo' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.cliente_grupo' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_perfil`
--
-- em uso(#1146 - Table 'cruzex2012.cliente_perfil' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.cliente_perfil' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_setor`
--
-- em uso(#1146 - Table 'cruzex2012.cliente_setor' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.cliente_setor' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `contador`
--
-- em uso(#1146 - Table 'cruzex2012.contador' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.contador' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `doc`
--
-- em uso(#1146 - Table 'cruzex2012.doc' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.doc' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `docarea`
--
-- em uso(#1146 - Table 'cruzex2012.docarea' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.docarea' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `eval`
--

CREATE TABLE IF NOT EXISTS `eval` (
  `eva_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pai_id` int(10) DEFAULT NULL,
  `eva_data` date DEFAULT NULL,
  `eva_hora` char(5) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`eva_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=237 ;

--
-- Extraindo dados da tabela `eval`
--

INSERT INTO `eval` (`eva_id`, `cli_nome`, `pai_id`, `eva_data`, `eva_hora`, `status`) VALUES
(50, 'Col Pralon', 1, '2012-11-08', '16:53', 1),
(49, 'Lt Col Araujo Lima', 1, '2012-11-07', '23:38', 1),
(40, 'Cap Roque', 1, '2012-11-03', '13:17', 1),
(41, 'Col Schumann', 1, '2012-11-06', '17:43', 1),
(42, 'Maj Pietrani', 1, '2012-11-06', '17:45', 1),
(43, 'Major THONY-LAMBERTI', 6, '2012-11-07', '13:26', 1),
(44, 'Cap Lordelo', 1, '2012-11-07', '19:55', 1),
(45, 'Lt Col FONSECA', 1, '2012-11-07', '20:14', 1),
(46, 'Capt Roque', 1, '2012-11-07', '21:08', 1),
(51, 'LCL BREITENSTEIN', 6, '2012-11-08', '17:48', 1),
(52, 'WG CDR NICHOLAS  CFAC 502', 11, '2012-11-08', '19:55', 1),
(53, 'Capt JASSEY', 6, '2012-11-09', '14:35', 1),
(54, 'WG CDR NICHOLAS', 11, '2012-11-09', '16:09', 1),
(55, 'SQN LDR (MAJ) PARKER', 11, '2012-11-09', '19:42', 1),
(56, 'Cap Rodrigo Freire', 1, '2012-11-12', '15:59', 1),
(57, 'ANIM05 (Lt Col Jones)', 12, '2012-11-12', '16:38', 1),
(58, 'TC MELGAR SHEEN', 7, '2012-11-12', '16:42', 1),
(59, '1Sgt ROSSI', 1, '2012-11-12', '16:50', 1),
(60, 'Lt Col Magalhaes,MV', 1, '2012-11-12', '16:50', 1),
(61, 'Col. Marenco', 9, '2012-11-12', '16:51', 1),
(62, 'LC SAENZ', 7, '2012-11-12', '16:52', 1),
(63, 'Cap Silvia', 1, '2012-11-12', '16:54', 1),
(64, 'CFAC020', 1, '2012-11-12', '16:54', 1),
(109, 'Lt Col Secchin', 1, '2012-11-12', '18:37', 1),
(66, 'anim26 - Cap Av Esteves', 1, '2012-11-12', '16:57', 1),
(67, 'MSgt  VALLE', 1, '2012-11-12', '16:59', 1),
(68, 'Ltcol. Washington W. Moya S.', 4, '2012-11-12', '17:00', 1),
(69, '1T CTA WILTON', 1, '2012-11-12', '17:01', 1),
(70, 'Cp Baranzelli', 1, '2012-11-12', '17:02', 1),
(71, 'Lt Col Melgar', 7, '2012-11-12', '17:11', 1),
(72, '2nd Lieutenant', 1, '2012-11-12', '17:12', 1),
(73, '3S Souza', 1, '2012-11-12', '17:13', 1),
(74, 'Col MARANGONE', 2, '2012-11-12', '17:15', 1),
(75, 'CL IBACACHE (OF-5)', 5, '2012-11-12', '17:16', 1),
(76, '2S HÃ©lder', 1, '2012-11-12', '17:16', 1),
(77, 'cfac500', 1, '2012-11-12', '17:20', 1),
(78, 'Lt Belli', 1, '2012-11-12', '17:20', 1),
(79, 'Cap Cinello.', 1, '2012-11-12', '17:21', 1),
(80, 'Cap LordÃªlo', 1, '2012-11-12', '17:21', 1),
(81, 'MSGT JERÃ”NIMO', 1, '2012-11-12', '17:21', 1),
(82, 'cfac502', 11, '2012-11-12', '17:21', 1),
(110, 'WEB TEST', 1, '2012-11-12', '18:55', 1),
(84, '1Lt Guerin', 1, '2012-11-12', '17:25', 1),
(85, 'CV Anello', 2, '2012-11-12', '17:28', 1),
(86, '1st Lt Kiyohara', 1, '2012-11-12', '17:28', 1),
(87, 'Maj. Wilfredo Fonseca', 10, '2012-11-12', '17:28', 1),
(88, 'Colonel Aguirre', 5, '2012-11-12', '17:29', 1),
(89, 'LtCol Per Dahlbom', 8, '2012-11-12', '17:31', 1),
(90, 'LT COL', 2, '2012-11-12', '17:32', 1),
(91, 'Lt Col Pelourson', 2, '2012-11-12', '17:34', 1),
(92, 'Admin Clerk - Msgt. Porto', 1, '2012-11-12', '17:37', 1),
(93, 'CAP J.CLÃUDIO', 1, '2012-11-12', '17:39', 1),
(94, 'Cap Cardote - anim27', 1, '2012-11-12', '17:42', 1),
(95, 'cvCamerucci', 2, '2012-11-12', '17:43', 1),
(96, '3S RAFAELA', 1, '2012-11-12', '17:46', 1),
(97, 'Col Schaefer', 7, '2012-11-12', '17:48', 1),
(98, 'LT PAULO', 1, '2012-11-12', '17:48', 1),
(99, 'capt Moreira', 1, '2012-11-12', '17:51', 1),
(100, 'Major Auzier', 1, '2012-11-12', '17:56', 1),
(101, 'Cap Preston', 11, '2012-11-12', '17:59', 1),
(102, 'CAP FELTRAN', 1, '2012-11-12', '17:59', 1),
(103, '2T HUMBERTO', 1, '2012-11-12', '18:06', 1),
(104, 'Ten Humberto', 1, '2012-11-12', '18:09', 1),
(105, '2Âº Lieutenant Rachid', 1, '2012-11-12', '18:19', 1),
(106, 'Lt LEANDRO Richard HilÃ¡rio', 1, '2012-11-12', '18:22', 1),
(107, 'Cap Av Esteves -  Anim26', 1, '2012-11-12', '18:25', 1),
(108, '1T FALCAO', 1, '2012-11-12', '18:30', 1),
(111, 'COL RICARDO ALVIAR', 7, '2012-11-12', '18:55', 1),
(112, 'CFAC002', 1, '2012-11-12', '19:02', 1),
(113, 'Maj Laura Laycock', 3, '2012-11-12', '19:05', 1),
(114, 'COL RICARDO ALVIAR', 9, '2012-11-12', '19:31', 1),
(115, 'Capt FÃ¡bio Freixo', 1, '2012-11-12', '19:34', 1),
(116, '3S WATSON', 1, '2012-11-12', '19:37', 1),
(117, 'Capt Adriano', 0, '2012-11-12', '19:58', 1),
(118, 'LT HUGO SILVA', 1, '2012-11-12', '20:01', 1),
(119, 'Cnl Eustaquio', 1, '2012-11-12', '20:14', 1),
(120, 'LT.Jussara', 1, '2012-11-12', '20:14', 1),
(121, 'CDR Lovett', 12, '2012-11-12', '20:25', 1),
(122, 'Mj. Sande', 9, '2012-11-12', '20:38', 1),
(123, 'Mj.Sande', 9, '2012-11-12', '20:43', 1),
(124, 'LT COL TRYON', 7, '2012-11-12', '20:49', 1),
(125, 'Maj. Julio Bardesio', 9, '2012-11-12', '20:54', 1),
(126, 'Mj. ARBULU', 7, '2012-11-13', '11:37', 1),
(127, 'testeweb', 1, '2012-11-13', '11:44', 1),
(128, 'Cap Thomas', 1, '2012-11-13', '11:44', 1),
(129, '2 Ten CTA FÃ¡bio JosÃ© Marques de Oliveira', 1, '2012-11-13', '11:44', 1),
(130, 'cap FABIO HEKEL', 1, '2012-11-13', '11:50', 1),
(131, 'maj cartaya', 10, '2012-11-13', '11:54', 1),
(132, 'Lt. Col. Torres Oneto', 7, '2012-11-13', '12:00', 1),
(133, 'Captain Edlund', 8, '2012-11-13', '12:01', 1),
(134, 'SO DELCIO', 1, '2012-11-13', '12:32', 1),
(135, 'Capt Baroni', 1, '2012-11-13', '12:45', 1),
(136, 'Capt SÃ¡', 1, '2012-11-13', '12:48', 1),
(137, 'MAYOR', 7, '2012-11-13', '12:52', 1),
(138, 'VICE COMODORO LEIVA', 2, '2012-11-13', '12:54', 1),
(139, 'Ltcol SEGERBY', 8, '2012-11-13', '12:58', 1),
(140, '', 0, '2012-11-13', '13:02', 1),
(141, 'MAYOR JESUS FERNANDEZ', 10, '2012-11-13', '13:09', 1),
(142, 'LCOL CELOTTO', 2, '2012-11-13', '13:16', 1),
(143, 'LT COL MAX', 1, '2012-11-13', '13:28', 1),
(144, '2LT WILLIAN', 1, '2012-11-13', '13:37', 1),
(145, 'Tcnl Walter Brun', 2, '2012-11-13', '13:37', 1),
(146, 'Lt Col CAJATY', 1, '2012-11-13', '13:43', 1),
(147, 'LtCol  VILLAGRA', 9, '2012-11-13', '13:44', 1),
(148, 'TC. TREMONT JOSE', 10, '2012-11-13', '13:56', 1),
(149, 'Maj Barrios', 1, '2012-11-13', '14:01', 1),
(150, 'LT COL CELOTTO', 2, '2012-11-13', '14:08', 1),
(151, 'Lt LEMOS', 1, '2012-11-13', '14:18', 1),
(152, 'SUPPORT - AAR/TAT  CAP FRANÃ‡A', 1, '2012-11-13', '14:24', 1),
(153, 'Maj MACHADO', 2, '2012-11-13', '14:25', 1),
(154, 'Col Sanabria', 10, '2012-11-13', '14:35', 1),
(155, 'Defensive Staff / Tcel Royman Hernandez', 10, '2012-11-13', '14:36', 1),
(156, 'MAJOR ARCAUZ', 9, '2012-11-13', '14:42', 1),
(157, 'CV ANA PAULA', 1, '2012-11-13', '14:55', 1),
(158, 'SO BMT VILLAS BOAS', 1, '2012-11-13', '15:11', 1),
(159, 'Cap Magioli', 1, '2012-11-13', '15:17', 1),
(160, 'Maj SOARES', 1, '2012-11-13', '16:09', 1),
(161, 'MAJ M LIMA', 1, '2012-11-13', '16:36', 1),
(162, 'MAJ EDIVALDO', 1, '2012-11-13', '16:41', 1),
(163, 'Col Lorenzo', 1, '2012-11-13', '16:43', 1),
(164, 'Major Johan Brynje', 8, '2012-11-13', '16:48', 1),
(165, 'Col Mann (Of-5)', 5, '2012-11-13', '17:09', 1),
(166, 'Brig Gen Paulo Erico', 1, '2012-11-13', '17:11', 1),
(167, 'Teniente Coronel Robert Rondon', 10, '2012-11-13', '17:13', 1),
(168, 'CB CUNHA', 1, '2012-11-13', '17:28', 1),
(169, 'LT.COL', 5, '2012-11-13', '17:31', 1),
(170, 'TCNEL. LEONARDO JOSE CONTRERAS GONZALEZ', 10, '2012-11-13', '17:31', 1),
(171, 'Lt. Col. Sergio Rojas', 5, '2012-11-13', '17:31', 1),
(172, 'Lt Col Kirkendall', 12, '2012-11-13', '17:33', 1),
(173, 'IT03', 1, '2012-11-13', '17:34', 1),
(174, 'Lt LEANDRO', 1, '2012-11-13', '17:47', 1),
(175, 'Major CHAVEZ', 7, '2012-11-13', '17:49', 1),
(176, 'LT. COL. REYES', 5, '2012-11-13', '17:52', 1),
(177, 'Capt Burton', 11, '2012-11-13', '17:59', 1),
(178, '1ST Lieutenant', 1, '2012-11-13', '18:02', 1),
(179, '1sBCT LUNKES', 1, '2012-11-13', '18:11', 1),
(180, 'Lieutenant MALHEIROS', 1, '2012-11-13', '18:13', 1),
(181, 'Cp FERNANDO', 1, '2012-11-13', '18:18', 1),
(182, 'CAPT OSCAR', 1, '2012-11-13', '18:26', 1),
(183, 'CAP HENRIQUE', 1, '2012-11-13', '18:38', 1),
(184, 'MAJ. RAFAEL RAMIREZ', 10, '2012-11-13', '18:40', 1),
(185, 'CL MANN (Of-5)', 5, '2012-11-13', '19:04', 1),
(186, 'LtCol Francisco Pizarro', 5, '2012-11-13', '19:08', 1),
(187, 'MAJOR GALO ALVAREZ', 4, '2012-11-13', '19:11', 1),
(188, 'Maj Arcauz', 9, '2012-11-13', '19:12', 1),
(189, 'MAJO. GALO ALVAREZ', 4, '2012-11-13', '19:14', 1),
(190, 'Maj Nogueira', 1, '2012-11-13', '19:24', 1),
(191, 'CAP CIDNEY', 1, '2012-11-13', '19:27', 1),
(192, 'Capt FRITZ', 6, '2012-11-13', '19:30', 1),
(193, 'Mayor Diego BRAVO RETA', 2, '2012-11-13', '19:35', 1),
(194, 'Major Eduardo Rocha', 1, '2012-11-13', '19:36', 1),
(195, 'Cap Bastos', 1, '2012-11-13', '19:36', 1),
(196, 'Major Paulo Edson', 1, '2012-11-13', '19:45', 1),
(197, 'Lt Col Giancarlo', 1, '2012-11-13', '19:51', 1),
(198, 'maj. Cabral', 1, '2012-11-13', '19:51', 1),
(199, 'LTC Boisson', 6, '2012-11-13', '19:53', 1),
(200, 'MAJ MANGRICH', 1, '2012-11-13', '19:55', 1),
(201, 'of-5 Eduardo Valle', 1, '2012-11-13', '20:06', 1),
(202, 'CAP AV COSTA JUNIOR', 1, '2012-11-13', '20:07', 1),
(203, 'webteste', 1, '2012-11-13', '20:18', 1),
(204, 'MJ. VILLEGAS CAMPOS', 2, '2012-11-13', '20:20', 1),
(205, 'TESTE_EVAL', 1, '2012-11-13', '21:28', 1),
(206, 'Lt  MACHADO', 1, '2012-11-14', '11:32', 1),
(207, 'Maj Baeta', 1, '2012-11-14', '11:42', 1),
(208, 'LT COL ALEJANDRO BISSO', 2, '2012-11-14', '11:47', 1),
(209, 'anim20', 1, '2012-11-14', '11:59', 1),
(210, 'Defensive Air Ops Staff / TC MENDOZA', 10, '2012-11-14', '12:05', 1),
(211, 'CV DEMIERRE', 2, '2012-11-14', '12:26', 1),
(212, 'MAJ. FREDDY RENDON', 10, '2012-11-14', '12:29', 1),
(213, '(OF-1) ROBERT', 1, '2012-11-14', '12:36', 1),
(214, 'anim16', 1, '2012-11-14', '12:49', 1),
(215, 'Capt Barbosa', 1, '2012-11-14', '12:50', 1),
(216, 'CAPT VILAR', 1, '2012-11-14', '12:52', 1),
(217, 'Maj AndrÃ© Luiz', 1, '2012-11-14', '12:52', 1),
(218, 'TCNEL JUAN RICARDO SOSA CASTRO', 10, '2012-11-14', '12:53', 1),
(219, 'TC. VIRGILIO MARQUEZ', 10, '2012-11-14', '13:05', 1),
(220, 'MAJ LINS', 1, '2012-11-14', '13:10', 1),
(221, 'anim12 Lt Fausto', 1, '2012-11-14', '13:16', 1),
(222, '1T STRAFACCI (OF-1)', 1, '2012-11-14', '13:17', 1),
(223, 'CAPT.  DAVID TAPIA', 4, '2012-11-14', '13:26', 1),
(224, 'anim21', 1, '2012-11-14', '13:29', 1),
(225, 'LEOMAR', 1, '2012-11-14', '13:30', 1),
(226, 'anim18', 1, '2012-11-14', '13:32', 1),
(227, 'ANIM22', 1, '2012-11-14', '13:33', 1),
(228, 'LTCol Gramkow', 1, '2012-11-14', '13:33', 1),
(229, 'CPT WERNKE', 1, '2012-11-14', '13:34', 1),
(230, 'anim15', 1, '2012-11-14', '13:34', 1),
(231, 'or-6', 1, '2012-11-14', '13:44', 1),
(232, 'Maj GLAUCO', 1, '2012-11-14', '14:19', 1),
(233, 'CPT IBARRA', 6, '2012-11-14', '14:47', 1),
(234, 'Lt Col Eric Moraes', 12, '2012-11-14', '14:57', 1),
(235, 'CAP. YEFFERSON CARABALLO', 10, '2012-11-14', '14:57', 1),
(236, 'Capt Romulo', 1, '2012-11-14', '15:18', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalgrupo`
--
-- em uso(#1146 - Table 'cruzex2012.evalgrupo' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.evalgrupo' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalgrupo_evalpergunta`
--
-- em uso(#1146 - Table 'cruzex2012.evalgrupo_evalpergunta' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.evalgrupo_evalpergunta' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalgrupo_evalponto`
--
-- em uso(#1146 - Table 'cruzex2012.evalgrupo_evalponto' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.evalgrupo_evalponto' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalpergunta`
--
-- em uso(#1146 - Table 'cruzex2012.evalpergunta' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.evalpergunta' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalponto`
--
-- em uso(#1146 - Table 'cruzex2012.evalponto' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.evalponto' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalpontuacao`
--
-- em uso(#1146 - Table 'cruzex2012.evalpontuacao' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.evalpontuacao' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalreport`
--
-- em uso(#1146 - Table 'cruzex2012.evalreport' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.evalreport' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalresposta`
--
-- em uso(#1146 - Table 'cruzex2012.evalresposta' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.evalresposta' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalservico`
--
-- em uso(#1146 - Table 'cruzex2012.evalservico' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.evalservico' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `facilidade`
--
-- em uso(#1146 - Table 'cruzex2012.facilidade' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.facilidade' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `facilidadearea`
--
-- em uso(#1146 - Table 'cruzex2012.facilidadearea' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.facilidadearea' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq`
--
-- em uso(#1146 - Table 'cruzex2012.faq' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.faq' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `foto`
--
-- em uso(#1146 - Table 'cruzex2012.foto' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.foto' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupo`
--
-- em uso(#1146 - Table 'cruzex2012.grupo' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.grupo' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `idioma`
--
-- em uso(#1146 - Table 'cruzex2012.idioma' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.idioma' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `intel`
--
-- em uso(#1146 - Table 'cruzex2012.intel' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.intel' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `intelarea`
--
-- em uso(#1146 - Table 'cruzex2012.intelarea' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.intelarea' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `local`
--
-- em uso(#1146 - Table 'cruzex2012.local' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.local' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `meteoro`
--
-- em uso(#1146 - Table 'cruzex2012.meteoro' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.meteoro' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `meteoroarea`
--
-- em uso(#1146 - Table 'cruzex2012.meteoroarea' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.meteoroarea' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `meteorocor`
--
-- em uso(#1146 - Table 'cruzex2012.meteorocor' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.meteorocor' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `meteorostatus`
--
-- em uso(#1146 - Table 'cruzex2012.meteorostatus' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.meteorostatus' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--
-- em uso(#1146 - Table 'cruzex2012.noticia' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.noticia' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `notseg`
--
-- em uso(#1146 - Table 'cruzex2012.notseg' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.notseg' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `om`
--
-- em uso(#1146 - Table 'cruzex2012.om' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.om' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagina`
--
-- em uso(#1146 - Table 'cruzex2012.pagina' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.pagina' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginabotao`
--
-- em uso(#1146 - Table 'cruzex2012.paginabotao' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.paginabotao' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginatipo`
--
-- em uso(#1146 - Table 'cruzex2012.paginatipo' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.paginatipo' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginatipo_paginabotao`
--
-- em uso(#1146 - Table 'cruzex2012.paginatipo_paginabotao' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.paginatipo_paginabotao' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--
-- em uso(#1146 - Table 'cruzex2012.pais' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.pais' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--
-- em uso(#1146 - Table 'cruzex2012.perfil' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.perfil' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil_pagina`
--
-- em uso(#1146 - Table 'cruzex2012.perfil_pagina' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.perfil_pagina' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `posto`
--
-- em uso(#1146 - Table 'cruzex2012.posto' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.posto' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto`
--
-- em uso(#1146 - Table 'cruzex2012.projeto' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.projeto' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `relprev`
--
-- em uso(#1146 - Table 'cruzex2012.relprev' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.relprev' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--
-- em uso(#1146 - Table 'cruzex2012.setor' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.setor' doesn't exist)

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--
-- em uso(#1146 - Table 'cruzex2012.status' doesn't exist)
-- Error reading data: (#1146 - Table 'cruzex2012.status' doesn't exist)
--
-- Base de Dados: `escala`
--
CREATE DATABASE IF NOT EXISTS `escala` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `escala`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acao`
--

CREATE TABLE IF NOT EXISTS `acao` (
  `aca_id` int(10) NOT NULL AUTO_INCREMENT,
  `aca_status` int(10) NOT NULL DEFAULT '1',
  `oco_id` int(10) NOT NULL,
  `aca_msg` text NOT NULL,
  `aca_hora` time NOT NULL,
  `aca_data` date NOT NULL,
  `aca_solucionador` int(10) DEFAULT NULL,
  PRIMARY KEY (`aca_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `acao`
--

INSERT INTO `acao` (`aca_id`, `aca_status`, `oco_id`, `aca_msg`, `aca_hora`, `aca_data`, `aca_solucionador`) VALUES
(1, 1, 1, 'ABERTO', '19:00:00', '2014-08-19', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `chave`
--

CREATE TABLE IF NOT EXISTS `chave` (
  `cha_id` int(10) NOT NULL AUTO_INCREMENT,
  `cha_localidade` varchar(255) NOT NULL,
  `cha_nome` varchar(20) NOT NULL,
  PRIMARY KEY (`cha_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `chave`
--

INSERT INTO `chave` (`cha_id`, `cha_localidade`, `cha_nome`) VALUES
(1, 'PORTÃƒO CCA/DTI', '222C'),
(2, 'SALA DO CMT', '002'),
(3, 'SEÃ‡ÃƒO DE IMPLEMENTAÃ‡ÃƒO', ' 108-A'),
(4, 'SIM-FORMS', '108-B'),
(5, 'SALA DE TESTE', '111A');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE IF NOT EXISTS `documentos` (
  `doc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doc_nome` varchar(255) DEFAULT NULL,
  `doc_tipo` int(10) DEFAULT '1',
  `doc_descricao` text,
  `doc_url` varchar(255) NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `documentos`
--

INSERT INTO `documentos` (`doc_id`, `doc_nome`, `doc_tipo`, `doc_descricao`, `doc_url`) VALUES
(1, 'NPA DO SGT DE DIA', 2, '', 'midia/doc/npaservicosgtdedia.pdf'),
(2, 'NPA DOS SENTINELAS', 1, 'NPA DOS SENTINELAS DE SERVIÃ‡O Ã€ PONTA DO GALEÃƒO', 'midia/doc/npaservicosgtdedia.pdf'),
(3, 'ESCALA NOVEMBRO', 1, 'Show ', 'localhost/documentos'),
(4, 'andre BICHA', 0, 'andre bichinha', 'wwww'),
(5, 'NPA SENTINELAS', 0, '', 'xxx');

-- --------------------------------------------------------

--
-- Estrutura da tabela `material`
--

CREATE TABLE IF NOT EXISTS `material` (
  `mat_id` int(10) NOT NULL AUTO_INCREMENT,
  `mat_descricao` varchar(255) NOT NULL,
  `mat_quantidade` int(10) NOT NULL,
  PRIMARY KEY (`mat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `material`
--

INSERT INTO `material` (`mat_id`, `mat_descricao`, `mat_quantidade`) VALUES
(1, 'CADEIRA BRANCA 3x4', 6),
(2, 'MESA MDF VELHA', 1),
(3, 'NOTEBOOK POSITIVO', 1),
(4, 'notebook', 5),
(5, 'computador', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `militar`
--

CREATE TABLE IF NOT EXISTS `militar` (
  `mil_id` int(10) NOT NULL AUTO_INCREMENT,
  `mil_login` varchar(255) NOT NULL,
  `mil_senha` varchar(45) NOT NULL,
  `mil_nome` varchar(255) NOT NULL,
  `mil_perfil` int(10) NOT NULL DEFAULT '3',
  `mil_ramal` int(10) unsigned DEFAULT NULL,
  `mil_email` varchar(255) DEFAULT NULL,
  `mil_guerra` varchar(255) NOT NULL,
  `pos_id` int(2) NOT NULL DEFAULT '18',
  `mil_setor` varchar(255) NOT NULL,
  PRIMARY KEY (`mil_id`),
  KEY `mil_posto` (`pos_id`),
  KEY `pos_id` (`pos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `militar`
--

INSERT INTO `militar` (`mil_id`, `mil_login`, `mil_senha`, `mil_nome`, `mil_perfil`, `mil_ramal`, `mil_email`, `mil_guerra`, `pos_id`, `mil_setor`) VALUES
(1, 'maria', '12345678', 'Maria das Dores', 0, 2232, 'dasdores@ccarj.intraer', 'Das Dores', 18, 'transporte'),
(2, 'pedro', 'c4ca4238a0b923820dcc509a6f75849b', 'Pedro Artur Linhares', 0, 111, 'linharespall@aer.mil.br', 'Linhares', 3, 'infraestrutura'),
(3, 'fulanofdt', '123456', 'fulano de tal', 0, 222, 'fulano@email.com', 'fulano', 1, 'transporte'),
(4, 'fulanofdt', '123456', 'fulano de tal', 0, 222, 'fulano@email.com', 'fulano', 18, 'transporte'),
(5, 'jordaovpj', '123456', 'VINICIUS PRADO JORDAO', 0, 7826, 'jordaovpj@aer.mil.br', 'JORDAO', 14, 'infraestrutura'),
(6, 'jaceguay', '123456', 'jaceguay de magalhÃ£es', 0, 2201, 'jaceguayjm@ccarj.intraer', 'jaceguay', 5, 'infraestrutura'),
(7, 'ALEXARP', '12345678', 'ALEX RIBEIRO PEREIRA', 0, 1123, 'ALEXARP@CCARJ.INTRAER', 'ALEX', 1, 'transporte'),
(8, 'GEORGEGOS', '', 'george oliveira sena', 0, 222, 'georgegos@aer.mil.br', 'george', 14, 'transporte'),
(9, 'marcelommc', '123456', 'MARCELO MARTINS CONCEIÃ‡ÃƒO', 0, 2279, 'marcellommc@aer.mil.br', 'MARCELO', 0, 'infraestrutura'),
(10, 'loetscherll', '123456', 'PAULO LOETSCHER', 0, 1122, 'paulopl@aer.mil.br', 'PAULO', 14, 'infraestrutura'),
(12, '', '', '', 0, 0, '', '', 1, 'Selecione'),
(13, 'teste', '111', 'teste dos santos', 0, 111222, 'teste@aer.mil.br', 'teste', 3, 'transporte'),
(14, 'munizlrm', '123456', 'leonardo ribeiro muniz', 0, 0, '', 'muniz', 14, 'Selecione'),
(15, 'raphaelrsa', '123456', 'raphael almeida', 0, 0, '', 'raphael', 13, 'Selecione');

-- --------------------------------------------------------

--
-- Estrutura da tabela `militar_chave`
--

CREATE TABLE IF NOT EXISTS `militar_chave` (
  `cha_id` int(10) NOT NULL,
  `ser_id` int(10) NOT NULL,
  `mil_id_retirada` int(10) NOT NULL,
  `cha_data_retirada` date NOT NULL,
  `cha_hora_retirada` time NOT NULL,
  `mil_id_devolucao` int(10) DEFAULT NULL,
  `cha_data_devolucao` date DEFAULT NULL,
  `cha_hora_devolucao` time DEFAULT NULL,
  PRIMARY KEY (`cha_id`,`ser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `militar_chave`
--

INSERT INTO `militar_chave` (`cha_id`, `ser_id`, `mil_id_retirada`, `cha_data_retirada`, `cha_hora_retirada`, `mil_id_devolucao`, `cha_data_devolucao`, `cha_hora_devolucao`) VALUES
(1, 1, 1, '2014-08-19', '10:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocorrencia`
--

CREATE TABLE IF NOT EXISTS `ocorrencia` (
  `oco_id` int(10) NOT NULL AUTO_INCREMENT,
  `ser_id` int(10) NOT NULL,
  `oco_titulo` varchar(255) NOT NULL,
  `oco_descricao` text NOT NULL,
  `oco_data` date NOT NULL,
  `oco_hora` time NOT NULL,
  `oco_prioridade` int(10) NOT NULL DEFAULT '2',
  `oco_setor` int(10) NOT NULL COMMENT '1 - MANUTENÇÃO, 2 - GARAGEM, 3 - ADMINISTRATIVO',
  PRIMARY KEY (`oco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `ocorrencia`
--

INSERT INTO `ocorrencia` (`oco_id`, `ser_id`, `oco_titulo`, `oco_descricao`, `oco_data`, `oco_hora`, `oco_prioridade`, `oco_setor`) VALUES
(1, 1, 'LAMPADA QUEIMADA', 'LAMPADA QUEIMADA NA SALA DO CMT', '2014-08-19', '19:00:00', 1, 1),
(2, 0, 'PORTA TRANCADA', 'A PORTA DO CEL ESTA TRANCADA.', '0000-00-00', '00:00:00', 2, 0),
(3, 0, 'PROFESSOR ATRASADO', 'VIADO!!', '0000-00-00', '00:00:00', 2, 0),
(4, 0, 'ww', 'ww', '0000-00-00', '00:00:00', 2, 0),
(5, 0, 'teste', 'descricao', '0000-00-00', '00:00:00', 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posto`
--

CREATE TABLE IF NOT EXISTS `posto` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_nome` varchar(20) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Extraindo dados da tabela `posto`
--

INSERT INTO `posto` (`pos_id`, `pos_nome`) VALUES
(1, 'TEN BRIG'),
(2, 'MAJ BRIG'),
(3, 'BRIG'),
(4, 'CEL'),
(5, 'TEN CEL'),
(6, 'MAJ'),
(7, 'CAP'),
(8, '1 TEN'),
(9, '2 TEN'),
(10, 'ASP'),
(11, 'SO'),
(12, '1 SGT'),
(13, '2 SGT'),
(14, '3 SGT'),
(15, 'CB'),
(16, 'S1'),
(17, 'S2'),
(18, 'CIVIL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE IF NOT EXISTS `servico` (
  `ser_id` int(10) NOT NULL AUTO_INCREMENT,
  `ser_data` date NOT NULL,
  PRIMARY KEY (`ser_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`ser_id`, `ser_data`) VALUES
(1, '2014-08-19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico_material`
--

CREATE TABLE IF NOT EXISTS `servico_material` (
  `ser_id` int(10) NOT NULL,
  `mat_id` int(10) NOT NULL,
  PRIMARY KEY (`ser_id`,`mat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servico_material`
--

INSERT INTO `servico_material` (`ser_id`, `mat_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico_militar`
--

CREATE TABLE IF NOT EXISTS `servico_militar` (
  `ser_id` int(10) NOT NULL,
  `mil_id` int(10) NOT NULL,
  `mil_funcao` varchar(255) NOT NULL,
  PRIMARY KEY (`ser_id`,`mil_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servico_militar`
--

INSERT INTO `servico_militar` (`ser_id`, `mil_id`, `mil_funcao`) VALUES
(1, 2, 'SGT DE DIA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `viatura`
--

CREATE TABLE IF NOT EXISTS `viatura` (
  `via_id` int(10) NOT NULL AUTO_INCREMENT,
  `via_modelo` varchar(255) NOT NULL,
  `via_placa` varchar(20) NOT NULL,
  PRIMARY KEY (`via_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `viatura`
--

INSERT INTO `viatura` (`via_id`, `via_modelo`, `via_placa`) VALUES
(1, 'Ford Focus', 'LBW 9999'),
(2, 'COROLA', 'KYW 0102'),
(3, 'FIAT UNO', 'LIY5001'),
(4, 'palio', 'dre7076'),
(5, 'CELTA', 'LRP3728');

-- --------------------------------------------------------

--
-- Estrutura da tabela `viatura_servico`
--

CREATE TABLE IF NOT EXISTS `viatura_servico` (
  `via_id` int(10) NOT NULL,
  `ser_id` int(10) NOT NULL,
  PRIMARY KEY (`via_id`,`ser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `viatura_servico`
--

INSERT INTO `viatura_servico` (`via_id`, `ser_id`) VALUES
(1, 1);
--
-- Base de Dados: `escalaint`
--
CREATE DATABASE IF NOT EXISTS `escalaint` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `escalaint`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acao`
--

CREATE TABLE IF NOT EXISTS `acao` (
  `aca_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cha_sta_id` int(10) unsigned NOT NULL,
  `cha_id` int(10) unsigned NOT NULL DEFAULT '1',
  `aca_msg` text NOT NULL,
  `aca_hora` char(5) NOT NULL,
  `aca_data` date NOT NULL,
  `aca_helpdesk` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `aca_solucionador` int(10) DEFAULT NULL,
  PRIMARY KEY (`aca_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Extraindo dados da tabela `acao`
--

INSERT INTO `acao` (`aca_id`, `cha_sta_id`, `cha_id`, `aca_msg`, `aca_hora`, `aca_data`, `aca_helpdesk`, `status`, `aca_solucionador`) VALUES
(16, 1, 1, 'teste1', '15:27', '2013-10-22', 1, 1, NULL),
(17, 1, 2, 'Abertura de chamado', '17:22', '2013-10-22', 1, 1, NULL),
(18, 0, 2, 'Abertura de chamado', '17:32', '2013-10-22', 1, 1, NULL),
(19, 2, 2, 'Abertura de chamado', '17:37', '2013-10-22', 1, 1, NULL),
(20, 1, 3, 'Abertura de chamado', '14:25', '2013-10-26', 1144, 1, NULL),
(21, 1, 4, 'Abertura de chamado', '14:28', '2013-10-26', 1144, 1, NULL),
(22, 1, 3, 'Abertura de chamado', '14:35', '2013-10-26', 1144, 1, NULL),
(23, 1, 3, 'escrita', '14:36', '2013-10-26', 1144, 1, NULL),
(24, 1, 3, 'escrita', '14:36', '2013-10-26', 1144, 1, NULL),
(25, 1, 3, 'escrita', '14:38', '2013-10-26', 1144, 1, NULL),
(26, 1, 5, 'Abertura de chamado', '15:53', '2013-10-26', 1161, 1, NULL),
(27, 2, 5, 'Aguardando alguma coisa', '17:19', '2013-10-26', 1173, 1, 0),
(28, 1, 6, 'Abertura de chamado', '17:22', '2013-10-26', 1161, 1, NULL),
(29, 1, 1, 'Abertura de chamado', '10:36', '2013-10-28', 555, 1, NULL),
(30, 1, 2, 'Abertura de chamado', '10:38', '2013-10-28', 555, 1, NULL),
(31, 1, 3, 'Abertura de chamado', '10:38', '2013-10-28', 1168, 1, NULL),
(32, 2, 2, 'Encaminhado ao Sgt Alex.', '10:43', '2013-10-28', 1168, 1, 0),
(33, 1, 4, 'Abertura de chamado', '10:49', '2013-10-28', 555, 1, NULL),
(34, 1, 5, 'Abertura de chamado', '10:54', '2013-10-28', 1161, 1, NULL),
(35, 1, 6, 'Abertura de chamado', '10:57', '2013-10-28', 555, 1, NULL),
(36, 1, 7, 'Abertura de chamado', '10:58', '2013-10-28', 555, 1, NULL),
(37, 2, 1, 'Encaminhado Ã  equipe de lÃ³gica para soluÃ§Ã£o.', '10:59', '2013-10-28', 1158, 1, 0),
(38, 1, 8, 'Abertura de chamado', '11:01', '2013-10-28', 555, 1, NULL),
(39, 2, 3, 'Encaminhado ao Cap LuÃ­s ClÃ¡udio', '11:03', '2013-10-28', 1168, 1, 0),
(40, 2, 4, '', '11:05', '2013-10-28', 1168, 1, 0),
(41, 3, 1, 'Acesso autorizado. O usuÃ¡rio deve reiniciar o navegador. 2S Jennifer', '11:11', '2013-10-28', 1168, 1, 0),
(42, 2, 3, '', '11:13', '2013-10-28', 1161, 1, 0),
(43, 1, 9, 'Abertura de chamado', '11:15', '2013-10-28', 1174, 1, NULL),
(44, 3, 4, 'A pane foi sanada. Favor reinicar o navegador  e usar a nova senha.', '11:16', '2013-10-28', 1168, 1, 0),
(45, 3, 2, 'Resolvido pelo Sgt Alex.', '11:17', '2013-10-28', 1168, 1, 0),
(46, 3, 5, '', '11:19', '2013-10-28', 1168, 1, 0),
(47, 2, 6, 'Encaminhado Ã  equipe de faciliddades da BANT.', '11:21', '2013-10-28', 1168, 1, 0),
(48, 1, 10, 'Abertura de chamado', '11:25', '2013-10-28', 555, 1, NULL),
(49, 2, 9, 'Encaminho Ã  equipe de lÃ³gica.', '11:26', '2013-10-28', 1168, 1, 1164),
(50, 1, 11, 'Abertura de chamado', '11:28', '2013-10-28', 555, 1, NULL),
(51, 2, 11, 'lampada queimada!!', '22:41', '2014-03-24', 1, 1, 0),
(52, 1, 12, 'Abertura de chamado', '12:36', '2014-09-09', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aeronave`
--

CREATE TABLE IF NOT EXISTS `aeronave` (
  `aer_id` int(10) NOT NULL AUTO_INCREMENT,
  `aer_nome` varchar(255) NOT NULL,
  `sta_id` int(1) DEFAULT '1',
  PRIMARY KEY (`aer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Extraindo dados da tabela `aeronave`
--

INSERT INTO `aeronave` (`aer_id`, `aer_nome`, `sta_id`) VALUES
(1, 'A1 - 0001', 0),
(2, 'A2 - 0002', 0),
(3, 'C - 130 01 (BRA)', 1),
(4, 'C - 130 02 (BRA)', 1),
(5, 'C - 130 01 (COL)', 1),
(6, 'CC - 130J 01 (CAN)', 1),
(7, 'CC - 130J 02 (CAN)', 1),
(8, 'C- 105 01 (BRA)', 1),
(9, 'C - 105 02 (BRA)', 1),
(10, 'H - 1H 01 (BRA-SAR Only)', 1),
(11, 'H - 60L 01 (BRA)', 1),
(12, 'H - 60L 02 (BRA)', 1),
(13, 'H - 60L 03 (BRA)', 1),
(14, 'H - 60L 04 (BRA)', 1),
(15, 'AH - 2 01 (BRA)', 1),
(16, 'AH - 2 02 (BRA)', 1),
(17, 'AH - 2 03 (BRA)', 1),
(18, 'AH - 2 04 (BRA)', 1),
(19, 'F - 2000 01 (BRA)', 1),
(20, 'F - 2000 02 (BRA)', 1),
(21, 'F - 2000 03 (BRA)', 1),
(22, 'F - 2000 04 (BRA)', 1),
(23, 'F - 5M 01 (BRA)', 1),
(24, 'F - 5M 02 (BRA)', 1),
(25, 'F - 5M 03 (BRA)', 1),
(26, 'F - 5M 04 (BRA)', 1),
(27, 'F - 5M 05 (BRA)', 1),
(28, 'F - 5M 06 (BRA)', 1),
(29, 'F - 5M 07 (BRA)', 1),
(30, 'F - 5M 08 (BRA)', 1),
(31, 'F - 5M 09 (BRA)', 1),
(32, 'F - 5M 10 (BRA)', 1),
(33, 'F - 5M 11 (BRA)', 1),
(34, 'F - 5M 12 (BRA)', 1),
(35, 'F - 5M 13 (BRA)', 1),
(36, 'F - 5M 14 (BRA)', 1),
(37, 'A - 1 01 (BRA)', 1),
(38, 'A - 1 02 (BRA)', 1),
(39, 'A - 1 03 (BRA)', 1),
(40, 'A - 1 04 (BRA)', 1),
(41, 'A - 1 05 (BRA)', 1),
(42, 'A - 1 06 (BRA)', 1),
(43, 'A - 1 07 (BRA)', 1),
(44, 'RA - 1 01 (BRA)', 1),
(45, 'RA - 1 02 (BRA)', 1),
(46, 'RA - 1 03 (BRA)', 1),
(47, 'A - 29 01 (BRA)', 1),
(48, 'A - 29 02 (BRA)', 1),
(49, 'A - 29 03 (BRA)', 1),
(50, 'A - 29 04 (BRA)', 1),
(51, 'A - 29 05 (BRA)', 1),
(52, 'A - 4 01 (ARG)', 1),
(53, 'A - 4 02 (ARG)', 1),
(54, 'A - 4 03 (ARG)', 1),
(55, 'A - 4 04 (ARG)', 1),
(56, 'A - 4 05 (ARG)', 1),
(57, 'A - 4 06 (ARG)', 1),
(58, 'F -16 01 (CHI)', 1),
(59, 'F -16 02 (CHI)', 1),
(60, 'F -16 03 (CHI)', 1),
(61, 'F -16 04 (CHI)', 1),
(62, 'F -16 05 (CHI)', 1),
(63, 'F -16 06 (CHI)', 1),
(64, 'A - 37 01 (COL)', 1),
(65, 'A - 37 02 (COL)', 1),
(66, 'A - 37 03 (COL)', 1),
(67, 'A - 37 04 (COL)', 1),
(68, 'A - 37 05 (COL)', 1),
(69, 'A - 37 06 (COL)', 1),
(70, 'A - 29 01 (ECU)', 1),
(71, 'A - 29 02 (ECU)', 1),
(72, 'A - 29 03 (ECU)', 1),
(73, 'F - 16 01 (USA)', 1),
(74, 'F - 16 02 (USA)', 1),
(75, 'F - 16 03 (USA)', 1),
(76, 'F - 16 04 (USA)', 1),
(77, 'F - 16 05 (USA)', 1),
(78, 'F - 16 06 (USA)', 1),
(79, 'A - 37 01 (URU)', 1),
(80, 'A - 37 02 (URU)', 1),
(81, 'A - 37 03 (URU)', 1),
(82, 'IA - 58 01 (URU)', 1),
(83, 'IA - 58 02 (URU)', 1),
(84, 'IA - 58 03 (URU)', 1),
(85, 'F - 16 01 (VEN)', 1),
(86, 'F - 16 02 (VEN)', 1),
(87, 'F - 16 03 (VEN)', 1),
(88, 'F - 16 04 (VEN)', 1),
(89, 'F - 16 05 (VEN)', 1),
(90, 'SC - 105 01 (BRA-SAR Only)', 1),
(91, 'KC - 130 01 (BRA)', 1),
(92, 'E - 99 01 (BRA)', 1),
(93, 'E - 99 02 (BRA)', 1),
(94, 'KC - 130 01 (ARG)', 1),
(95, 'KC - 135 01 (CHI)', 1),
(96, 'KC - 767 01 (COL)', 1),
(97, 'KC - 137 01 (COL)', 1),
(98, 'KC - 135 01 (USA)', 1),
(99, 'KC - 135 02 (USA)', 1),
(100, 'H - 34 01 (BRA-SAR Only)', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo`
--

CREATE TABLE IF NOT EXISTS `arquivo` (
  `arq_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doc_id` int(10) unsigned NOT NULL,
  `arq_url` varchar(255) NOT NULL,
  `arq_nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`arq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade`
--

CREATE TABLE IF NOT EXISTS `atividade` (
  `ati_id` int(10) NOT NULL AUTO_INCREMENT,
  `ati_nome` varchar(255) NOT NULL,
  `ati_modelo` varchar(255) DEFAULT NULL,
  `sta_id` int(1) DEFAULT '1',
  PRIMARY KEY (`ati_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Extraindo dados da tabela `atividade`
--

INSERT INTO `atividade` (`ati_id`, `ati_nome`, `ati_modelo`, `sta_id`) VALUES
(7, 'Power Unit 28 VDC Combustion', '', 1),
(8, 'Power Unit 28,5 VDC and 115 VCA Combustion', 'Hobart 60G20', 1),
(9, 'Power Unit 28,5 VDC Electric', 'Hobart GPU400', 1),
(10, 'Power Unit 115 VDC Electric', '', 1),
(11, 'Power Unit (Bleed Air)', 'GPF 391/75', 1),
(12, 'Tractor', 'Agrale 4100', 1),
(13, 'Trator', 'Agrale 4200', 1),
(14, 'Trator', 'Agrale 4230', 1),
(15, 'Tow tractor', 'SMLP-400    22000LB', 1),
(16, 'Tow tractor', 'SM340D-5    5000LB', 1),
(17, 'Tractor', '3 pallets', 1),
(18, 'Jack 3 ton', '', 1),
(19, 'Forklift', '2,5 ton', 1),
(20, 'Forklift', '7 ton', 1),
(21, 'Dolly', '', 1),
(22, 'Loader', '(AIRBUS 320 or B-707)', 1),
(23, 'Pallet', '', 1),
(24, 'Ladder', '(AIRBUS 320 or B-707)', 1),
(25, 'Runway Sweeper', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cha_arquivo`
--

CREATE TABLE IF NOT EXISTS `cha_arquivo` (
  `cha_arq_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cha_id` int(10) unsigned NOT NULL,
  `cha_arq_nome` varchar(255) NOT NULL,
  `cha_arq_url` varchar(255) NOT NULL,
  PRIMARY KEY (`cha_arq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cha_status`
--

CREATE TABLE IF NOT EXISTS `cha_status` (
  `cha_sta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cha_sta_nome` varchar(50) NOT NULL,
  `cha_sta_cor` varchar(10) DEFAULT NULL,
  `sta_id` int(1) DEFAULT '1',
  PRIMARY KEY (`cha_sta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB' AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `cha_status`
--

INSERT INTO `cha_status` (`cha_sta_id`, `cha_sta_nome`, `cha_sta_cor`, `sta_id`) VALUES
(1, 'Aberto', 'FF0000', 1),
(2, 'Em Atendimento', 'FFFF00', 1),
(3, 'Fechado', '009900', 1),
(4, 'Reaberto', 'FFCD03', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamado`
--

CREATE TABLE IF NOT EXISTS `chamado` (
  `cha_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cli_id` int(10) unsigned NOT NULL,
  `set_id` int(10) unsigned DEFAULT '0',
  `cha_nome` varchar(255) NOT NULL,
  `cha_msg` text NOT NULL,
  `cha_data` date NOT NULL,
  `cha_hora` char(5) NOT NULL,
  `cha_status` int(10) unsigned DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `pri_id` int(10) unsigned DEFAULT '3',
  `cli_afetado` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cha_id`),
  UNIQUE KEY `cha_id` (`cha_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `chamado`
--

INSERT INTO `chamado` (`cha_id`, `cli_id`, `set_id`, `cha_nome`, `cha_msg`, `cha_data`, `cha_hora`, `cha_status`, `status`, `pri_id`, `cli_afetado`) VALUES
(1, 555, 3, 'Intraer', 'HÃ¡ a necessidade de acesso Ã  rede intraer para acesso ao SIGADAER e email funcional.', '2013-10-28', '10:36', 3, 1, 3, 555),
(2, 555, 10, 'UsuÃ¡rio', 'ao abrir um chamado no helpdesk, apareceu como se eu fosse o cap jordÃ£o. Nos dados de cadastro estÃ¡ meu nome correto, cap dantas.', '2013-10-28', '10:38', 3, 1, 3, 555),
(3, 1168, 2, 'RÃ©gua', 'Ten Cel Valverde solicita a colocaÃ§Ã£o de rÃ©gua para ligar os notebooks na sala AIR LIFT (1/4).', '2013-10-28', '10:38', 2, 1, 3, NULL),
(4, 555, 10, 'LOGIN', 'nÃ£o Ã© possivel mudar a senha do painel de controle. ela fica sempre de 1 a 8.', '2013-10-28', '10:49', 3, 1, 3, 555),
(5, 1161, 10, 'O chamado criado pelo sistema esta com usuÃ¡rio de outra pessoal', 'teste de chamado.', '2013-10-28', '10:54', 3, 1, 0, 1161),
(6, 555, 9, 'MATERIAL NECESSÃRIO PARA O VOO', 'INFORMO-VOS QUE A SALA F-5 (AIR UNITS) NÃƒO ATENDE Ã€S NECESSIDADES OPERACIONAIS. FALTA:\r\n- UMA MESA PARA A ESTAÃ‡AO DE DEBRIEFING DO F-5 (2 MONITORES, 2 DESKTOPS) COM 8 CADEIRAS;\r\n- UMA MESA 2mx1m PARA O SISTEMA DE PLANEJAMENTO DO F-5; E\r\n- UMA MESA PARA O LAPTOP DE CARREGAMENTO DE MISSÃƒO.\r\n', '2013-10-28', '10:57', 2, 1, 0, 555),
(7, 555, 9, 'NECESSIDADE TEMPORÃRIA DE SALA', 'SOLICITO A UTILIZAÃ‡ÃƒO DA SALA A-1 (AIR UNITS) DURANTE A SEMANA PRÃ‰ CRUZEX, EM VIRTUDE DO GRANDE VOLUME DE VOOS NESSA SEMANA PELAS UNIDADES DE F-5.', '2013-10-28', '10:58', 1, 1, 0, 555),
(8, 555, 9, 'RANCHO', 'SOLICITO INFORMAÃ‡OES SOBRE OS HORÃRIOS DE RANCHO, BEM COMO A FORMA QUE SERÃ FEITA A INDENIZAÃ‡ÃƒO (VALORES E A QUESTÃƒO COMISSIONADOS/DIÃRIAS)', '2013-10-28', '11:01', 1, 1, 0, 555),
(9, 1174, 3, 'Acesso Ã  internet/intraer', 'solicito Acesso Ã  internet/intraer para o usuÃ¡rio ciss170. sala: helpdesk 1/4', '2013-10-28', '11:15', 2, 1, 3, 1174),
(10, 555, 4, 'INTRAER', 'HÃ A NECESSIDADE DE PELO MENOS UM PONTO DE REDE LOGICA NA SALA F-5 (AIR UNITS), PARA QUE SE ACESSE A INTRAER COM OS COMPUTADORES PRÃ“PIOS DAS UNIDADES AÃ‰REAS.', '2013-10-28', '11:25', 1, 1, 0, 555),
(11, 555, 13, 'LOGIN NO PAINEL DE CONTROLE DA PAGINA CRUZEX', 'ABRI UM CHAMADO POIS NAO Ã‰ POSSIVEL MUDAR A SENHA DO LOGIN NO PAINEL DE CONTROLE DA PAGINA DA CRUZEX, PORÃ‰M O CHAMADO FOI ENCERRADO E AINDA NAO Ã‰ POSSIVEL ESSA MUDANÃ‡A.', '2013-10-28', '11:28', 2, 1, 3, 555),
(12, 1, 9, 'teste', 'teste de ocorrencia', '2014-09-09', '12:36', 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ciss`
--

CREATE TABLE IF NOT EXISTS `ciss` (
  `cis_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cis_are_id` int(10) unsigned NOT NULL,
  `cis_ini` date NOT NULL,
  `cis_fim` date DEFAULT NULL,
  `cis_msg` text,
  `cis_horaini` char(5) CHARACTER SET latin1 DEFAULT NULL,
  `cis_horafim` char(5) CHARACTER SET latin1 DEFAULT NULL,
  `sta_id` int(10) unsigned NOT NULL,
  `cis_data` date NOT NULL,
  `cis_hora` char(5) CHARACTER SET latin1 NOT NULL,
  `status` int(1) DEFAULT '1',
  `cli_id` int(10) DEFAULT NULL,
  `cis_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`cis_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Extraindo dados da tabela `ciss`
--

INSERT INTO `ciss` (`cis_id`, `cis_are_id`, `cis_ini`, `cis_fim`, `cis_msg`, `cis_horaini`, `cis_horafim`, `sta_id`, `cis_data`, `cis_hora`, `status`, `cli_id`, `cis_url`) VALUES
(4, 71, '2013-10-26', '2013-10-26', 'AVAILABLE', '16:32', '16:32', 1, '2013-10-26', '16:32', 0, 1340, ''),
(5, 59, '2013-10-26', '2013-10-26', 'AVAILABLE', '16:33', '16:33', 1, '2013-10-26', '16:33', 1, 1340, ''),
(6, 67, '2013-10-26', '2013-10-26', 'AVAILABLE', '16:33', '16:33', 1, '2013-10-26', '16:33', 0, 1340, ''),
(7, 60, '2013-10-26', '2013-10-26', 'AVAILABLE', '16:33', '16:33', 1, '2013-10-26', '16:33', 1, 1340, ''),
(8, 63, '2013-10-26', '2013-10-26', 'AVAILABLE\r\n', '16:33', '16:33', 1, '2013-10-26', '16:34', 1, 1340, ''),
(9, 66, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:34', '16:34', 1, '2013-10-26', '16:34', 1, 1340, ''),
(10, 61, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:34', '16:34', 1, '2013-10-26', '16:34', 1, 1340, ''),
(11, 65, '2013-10-26', '2013-10-26', 'AVAILABLE', '16:34', '16:34', 1, '2013-10-26', '16:35', 1, 1340, ''),
(12, 64, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:35', '16:35', 1, '2013-10-26', '16:35', 1, 1340, ''),
(13, 62, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:35', '16:35', 1, '2013-10-26', '16:35', 1, 1340, ''),
(14, 44, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:35', '16:35', 1, '2013-10-26', '16:35', 1, 1340, ''),
(15, 45, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:36', '16:36', 1, '2013-10-26', '16:37', 1, 1340, ''),
(16, 47, '2013-10-26', '2013-10-26', 'AVAILABLE', '16:37', '16:37', 1, '2013-10-26', '16:38', 0, 1340, ''),
(17, 47, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:38', '16:38', 1, '2013-10-26', '16:38', 1, 1340, ''),
(18, 46, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:38', '16:38', 1, '2013-10-26', '16:38', 1, 1340, ''),
(19, 54, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:38', '16:38', 1, '2013-10-26', '16:39', 1, 1340, ''),
(20, 55, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:39', '16:39', 1, '2013-10-26', '16:39', 1, 1340, ''),
(21, 56, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:40', '16:40', 1, '2013-10-26', '16:40', 1, 1340, ''),
(22, 57, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:40', '16:40', 1, '2013-10-26', '16:40', 1, 1340, ''),
(23, 58, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:41', '16:41', 1, '2013-10-26', '16:41', 1, 1340, ''),
(24, 43, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:41', '16:41', 1, '2013-10-26', '16:41', 1, 1340, ''),
(25, 42, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:41', '16:41', 1, '2013-10-26', '16:41', 1, 1340, ''),
(26, 53, '2013-10-26', '2013-10-30', 'AWACS U/S', '16:41', '16:41', 2, '2013-10-26', '16:43', 0, 1340, ''),
(27, 48, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:43', '16:43', 1, '2013-10-26', '16:44', 1, 1340, ''),
(28, 52, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:44', '16:44', 1, '2013-10-26', '16:44', 1, 1340, ''),
(29, 50, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:44', '16:44', 1, '2013-10-26', '16:44', 1, 1340, ''),
(30, 49, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:44', '16:44', 1, '2013-10-26', '16:44', 1, 1340, ''),
(31, 51, '2013-10-26', '2013-10-26', 'AVAILABLE', '16:44', '16:44', 1, '2013-10-26', '16:45', 1, 1340, ''),
(32, 70, '2013-10-26', '2013-10-26', 'AVAILABLE', '16:45', '16:45', 1, '2013-10-26', '16:45', 1, 1340, ''),
(33, 68, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:45', '16:45', 1, '2013-10-26', '16:45', 1, 1340, ''),
(34, 71, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:45', '16:45', 1, '2013-10-26', '16:45', 1, 1340, ''),
(35, 69, '2013-10-26', '2013-10-27', 'AVAILABLE', '16:45', '16:45', 1, '2013-10-26', '16:46', 1, 1340, ''),
(36, 67, '2013-10-26', '2013-10-30', 'AWACS U/S', '16:54', '16:54', 3, '2013-10-26', '16:55', 1, 1340, ''),
(37, 53, '2013-10-26', '2013-10-30', 'AWACS U/S', '16:55', '16:55', 3, '2013-10-26', '16:55', 1, 1340, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cissarea`
--

CREATE TABLE IF NOT EXISTS `cissarea` (
  `cis_are_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cis_are_nome` varchar(255) NOT NULL,
  `cis_are_id2` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`cis_are_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Extraindo dados da tabela `cissarea`
--

INSERT INTO `cissarea` (`cis_are_id`, `cis_are_nome`, `cis_are_id2`, `status`) VALUES
(36, 'V/UHF COMM TEST', 0, 1),
(37, 'IT SYSTEMS', 0, 1),
(38, 'TELEPHONY TEST', 0, 1),
(39, 'DACOM TEST', 0, 1),
(40, 'RADAR SYSTEMS TEST', 0, 1),
(41, 'VIDEO CONFERENCING TEST', 0, 1),
(42, 'OCA', 39, 1),
(43, 'DCA', 39, 1),
(44, 'CRUZEX NET', 37, 1),
(45, 'INTERNET', 37, 1),
(46, 'POMA', 37, 1),
(47, 'PMA', 37, 1),
(48, 'CAICÃ“', 40, 1),
(49, 'PETROLINA', 40, 1),
(50, 'NATAL', 40, 1),
(51, 'RECIFE', 40, 1),
(52, 'FORTALEZA', 40, 1),
(53, 'AWACS', 40, 1),
(54, 'RTCAER', 38, 1),
(55, 'TF-1', 38, 1),
(56, 'TF-3', 38, 1),
(57, 'TF-4', 38, 1),
(58, 'VOIP', 38, 1),
(59, 'ASSÃš SITE', 36, 1),
(60, 'CAICÃ“ SITE', 36, 1),
(61, 'PAU DOS FERROS SITE', 36, 1),
(62, 'SOUSA SITE', 36, 1),
(63, 'JUAZEIRO SITE', 36, 1),
(64, 'SÃƒO JOSÃ‰ DO EGITO SITE', 36, 1),
(65, 'RECIFE SITE', 36, 1),
(66, 'NATAL SITE', 36, 1),
(67, 'AWACS RELAY', 36, 1),
(68, 'BRIEFING AUDITORIUM', 41, 1),
(69, 'SHOT VALIDATION DEBRIEF', 41, 1),
(70, 'CRC', 41, 1),
(71, 'RECIFE AFB', 41, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cli_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(255) DEFAULT NULL,
  `cli_code` varchar(20) NOT NULL,
  `cli_guerra` varchar(255) DEFAULT NULL,
  `cli_email` varchar(255) DEFAULT NULL,
  `cli_ramal` varchar(200) DEFAULT NULL,
  `cli_rtc` varchar(200) DEFAULT NULL,
  `cli_tf3` varchar(200) DEFAULT NULL,
  `cli_tf4` varchar(200) DEFAULT NULL,
  `cli_tf5` varchar(200) DEFAULT NULL,
  `cli_siscomis` varchar(200) DEFAULT NULL,
  `loc_id` int(10) DEFAULT NULL,
  `pos_id` int(10) DEFAULT NULL,
  `cli_senha` varchar(200) NOT NULL,
  `cli_funcao` varchar(255) DEFAULT NULL,
  `cli_tel` varchar(200) DEFAULT NULL,
  `om_id` int(10) DEFAULT NULL,
  `cli_comando` int(10) DEFAULT NULL,
  `cli_secao` varchar(255) DEFAULT NULL,
  `cli_emailinternet` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `pai_id` int(10) DEFAULT '1',
  `cli_ramo` varchar(255) DEFAULT NULL,
  `cli_ok` int(1) NOT NULL DEFAULT '1',
  `per_id` int(10) DEFAULT '2',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cli_id`, `cli_nome`, `cli_code`, `cli_guerra`, `cli_email`, `cli_ramal`, `cli_rtc`, `cli_tf3`, `cli_tf4`, `cli_tf5`, `cli_siscomis`, `loc_id`, `pos_id`, `cli_senha`, `cli_funcao`, `cli_tel`, `om_id`, `cli_comando`, `cli_secao`, `cli_emailinternet`, `status`, `pai_id`, `cli_ramo`, `cli_ok`, `per_id`) VALUES
(1, 'ADMIN', 'ADMIN', '', 'ADMIN@CRUZEX.INTRAER', '', '', '', '', NULL, '', 0, 0, '25d55ad283aa400af464c76d713c07ad', '', '', 0, NULL, NULL, NULL, 1, 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_area`
--

CREATE TABLE IF NOT EXISTS `cliente_area` (
  `cli_id` int(10) unsigned NOT NULL,
  `are_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cli_id`,`are_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_grupo`
--

CREATE TABLE IF NOT EXISTS `cliente_grupo` (
  `cli_id` int(10) unsigned NOT NULL,
  `gru_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cli_id`,`gru_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_perfil`
--

CREATE TABLE IF NOT EXISTS `cliente_perfil` (
  `cli_id` int(10) unsigned NOT NULL,
  `per_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cli_id`,`per_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente_perfil`
--

INSERT INTO `cliente_perfil` (`cli_id`, `per_id`) VALUES
(1, 1),
(1, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_setor`
--

CREATE TABLE IF NOT EXISTS `cliente_setor` (
  `cli_id` int(10) unsigned NOT NULL,
  `set_id` int(10) unsigned NOT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`cli_id`,`set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contador`
--

CREATE TABLE IF NOT EXISTS `contador` (
  `con_id` int(19) unsigned NOT NULL AUTO_INCREMENT,
  `con_data` date NOT NULL,
  `con_hora` char(5) CHARACTER SET latin1 NOT NULL,
  `cli_id` int(10) NOT NULL,
  `con_ip` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=428 ;

--
-- Extraindo dados da tabela `contador`
--

INSERT INTO `contador` (`con_id`, `con_data`, `con_hora`, `cli_id`, `con_ip`) VALUES
(1, '2013-09-16', '16:00', 1, '127.0.0.1'),
(2, '2013-09-16', '16:02', 1, '127.0.0.1'),
(3, '2013-09-16', '16:02', 1, '127.0.0.1'),
(4, '2013-09-16', '16:03', 1, '127.0.0.1'),
(5, '2013-09-16', '16:03', 1, '127.0.0.1'),
(6, '2013-09-16', '16:04', 1, '127.0.0.1'),
(7, '2013-09-16', '16:04', 1, '127.0.0.1'),
(8, '2013-09-16', '16:04', 1, '127.0.0.1'),
(9, '2013-09-16', '16:06', 1, '127.0.0.1'),
(10, '2013-09-16', '16:10', 0, '127.0.0.1'),
(11, '2013-09-16', '16:11', 0, '127.0.0.1'),
(12, '2013-09-16', '16:16', 0, '127.0.0.1'),
(13, '2013-09-17', '22:42', 0, '127.0.0.1'),
(14, '2013-09-18', '16:44', 0, '127.0.0.1'),
(15, '2013-09-19', '20:16', 0, '127.0.0.1'),
(16, '2013-09-24', '11:47', 0, '127.0.0.1'),
(17, '2013-09-24', '12:21', 0, '127.0.0.1'),
(18, '2013-09-24', '17:02', 0, '127.0.0.1'),
(19, '2013-10-14', '11:20', 0, '::1'),
(20, '2013-10-14', '12:28', 0, '::1'),
(21, '2013-10-14', '14:12', 0, '::1'),
(22, '2013-10-14', '16:46', 0, '::1'),
(23, '2013-10-14', '17:22', 0, '::1'),
(24, '2013-10-15', '08:31', 0, '::1'),
(25, '2013-10-15', '09:34', 0, '::1'),
(26, '2013-10-15', '10:20', 0, '::1'),
(27, '2013-10-15', '10:23', 0, '77.77.77.28'),
(28, '2013-10-15', '10:25', 0, '77.77.77.28'),
(29, '2013-10-15', '10:33', 0, '::1'),
(30, '2013-10-15', '10:50', 0, '::1'),
(31, '2013-10-15', '12:25', 0, '::1'),
(32, '2013-10-15', '13:05', 0, '::1'),
(33, '2013-10-15', '13:05', 0, '::1'),
(34, '2013-10-15', '13:06', 0, '::1'),
(35, '2013-10-15', '13:08', 0, '::1'),
(36, '2013-10-15', '13:10', 0, '::1'),
(37, '2013-10-15', '13:13', 0, '::1'),
(38, '2013-10-15', '13:14', 0, '::1'),
(39, '2013-10-15', '13:15', 0, '::1'),
(40, '2013-10-15', '13:32', 0, '::1'),
(41, '2013-10-15', '13:35', 0, '::1'),
(42, '2013-10-15', '13:57', 0, '::1'),
(43, '2013-10-15', '14:19', 0, '77.77.77.28'),
(44, '2013-10-15', '16:06', 0, '77.77.77.28'),
(45, '2013-10-15', '16:52', 0, '77.77.77.28'),
(46, '2013-10-15', '17:35', 0, '77.77.77.28'),
(47, '2013-10-16', '09:14', 0, '::1'),
(48, '2013-10-16', '09:15', 0, '77.77.77.28'),
(49, '2013-10-16', '10:36', 0, '77.77.77.28'),
(50, '2013-10-16', '10:43', 0, '::1'),
(51, '2013-10-16', '11:41', 0, '::1'),
(52, '2013-10-16', '14:14', 0, '::1'),
(53, '2013-10-16', '14:35', 0, '77.77.77.28'),
(54, '2013-10-16', '15:51', 0, '77.77.77.28'),
(55, '2013-10-16', '16:04', 0, '::1'),
(56, '2013-10-16', '16:07', 0, '77.77.77.28'),
(57, '2013-10-16', '16:12', 0, '::1'),
(58, '2013-10-17', '09:10', 0, '::1'),
(59, '2013-10-17', '11:03', 0, '::1'),
(60, '2013-10-17', '11:48', 0, '::1'),
(61, '2013-10-17', '14:12', 0, '::1'),
(62, '2013-10-17', '14:29', 0, '::1'),
(63, '2013-10-17', '14:32', 0, '::1'),
(64, '2013-10-17', '15:28', 0, '::1'),
(65, '2013-10-17', '17:06', 0, '::1'),
(66, '2013-10-18', '08:04', 0, '::1'),
(67, '2013-10-18', '08:07', 0, '::1'),
(68, '2013-10-18', '08:09', 0, '::1'),
(69, '2013-10-18', '08:13', 0, '::1'),
(70, '2013-10-18', '08:14', 0, '::1'),
(71, '2013-10-18', '08:27', 0, '::1'),
(72, '2013-10-18', '08:30', 0, '::1'),
(73, '2013-10-18', '08:33', 0, '::1'),
(74, '2013-10-18', '08:37', 0, '::1'),
(75, '2013-10-18', '08:38', 0, '::1'),
(76, '2013-10-18', '08:42', 0, '::1'),
(77, '2013-10-18', '09:04', 0, '::1'),
(78, '2013-10-18', '09:08', 0, '77.77.77.28'),
(79, '2013-10-18', '09:12', 0, '::1'),
(80, '2013-10-18', '09:15', 0, '::1'),
(81, '2013-10-18', '09:18', 0, '77.77.77.28'),
(82, '2013-10-18', '09:24', 0, '::1'),
(83, '2013-10-18', '09:37', 0, '::1'),
(84, '2013-10-18', '09:46', 0, '77.77.77.153'),
(85, '2013-10-18', '10:03', 0, '::1'),
(86, '2013-10-18', '10:23', 0, '77.77.77.28'),
(87, '2013-10-18', '10:31', 0, '77.77.77.28'),
(88, '2013-10-18', '10:43', 0, '77.77.77.153'),
(89, '2013-10-18', '12:42', 0, '::1'),
(90, '2013-10-18', '12:49', 0, '77.77.77.153'),
(91, '2013-10-18', '13:25', 0, '77.77.77.28'),
(92, '2013-10-18', '14:47', 0, '::1'),
(93, '2013-10-18', '14:50', 0, '77.77.77.28'),
(94, '2013-10-18', '15:23', 0, '77.77.77.28'),
(95, '2013-10-18', '15:25', 0, '::1'),
(96, '2013-10-18', '16:30', 0, '::1'),
(97, '2013-10-18', '17:30', 0, '::1'),
(98, '2013-10-18', '17:42', 0, '::1'),
(99, '2013-10-19', '08:11', 0, '::1'),
(100, '2013-10-19', '08:24', 0, '::1'),
(101, '2013-10-19', '09:24', 0, '::1'),
(102, '2013-10-19', '09:28', 0, '77.77.77.214'),
(103, '2013-10-19', '09:28', 0, '::1'),
(104, '2013-10-19', '10:00', 0, '::1'),
(105, '2013-10-19', '11:15', 0, '::1'),
(106, '2013-10-19', '12:37', 0, '::1'),
(107, '2013-10-19', '13:24', 0, '::1'),
(108, '2013-10-19', '13:29', 0, '::1'),
(109, '2013-10-19', '13:30', 0, '::1'),
(110, '2013-10-19', '15:18', 0, '::1'),
(111, '2013-10-19', '15:27', 0, '::1'),
(112, '2013-10-21', '10:08', 0, '::1'),
(113, '2013-10-21', '10:24', 0, '77.77.77.214'),
(114, '2013-10-21', '10:39', 0, '::1'),
(115, '2013-10-21', '10:59', 0, '::1'),
(116, '2013-10-21', '11:20', 0, '::1'),
(117, '2013-10-21', '11:32', 0, '::1'),
(118, '2013-10-21', '12:09', 0, '::1'),
(119, '2013-10-21', '13:18', 0, '::1'),
(120, '2013-10-21', '14:14', 0, '::1'),
(121, '2013-10-21', '14:58', 0, '::1'),
(122, '2013-10-21', '15:01', 0, '::1'),
(123, '2013-10-21', '16:02', 0, '::1'),
(124, '2013-10-21', '16:20', 0, '::1'),
(125, '2013-10-21', '17:39', 0, '::1'),
(126, '2013-10-21', '18:15', 0, '::1'),
(127, '2013-10-21', '18:20', 0, '::1'),
(128, '2013-10-22', '09:15', 0, '::1'),
(129, '2013-10-22', '09:44', 0, '::1'),
(130, '2013-10-22', '09:54', 0, '::1'),
(131, '2013-10-22', '13:43', 0, '::1'),
(132, '2013-10-22', '16:48', 0, '192.168.30.122'),
(133, '2013-10-22', '16:54', 0, '192.168.30.122'),
(134, '2013-10-22', '16:59', 0, '192.168.21.155'),
(135, '2013-10-22', '17:13', 0, '192.168.21.159'),
(136, '2013-10-22', '17:13', 0, '192.168.21.157'),
(137, '2013-10-22', '17:17', 0, '192.168.21.160'),
(138, '2013-10-22', '17:21', 0, '192.168.21.155'),
(139, '2013-10-22', '18:19', 0, '192.168.21.155'),
(140, '2013-10-22', '18:21', 0, '192.168.30.122'),
(141, '2013-10-22', '18:23', 0, '192.168.21.155'),
(142, '2013-10-23', '09:43', 0, '192.168.21.160'),
(143, '2013-10-23', '09:45', 0, '192.168.21.159'),
(144, '2013-10-23', '11:17', 0, '192.168.21.155'),
(145, '2013-10-23', '11:17', 0, '192.168.21.157'),
(146, '2013-10-23', '11:25', 0, '192.168.21.160'),
(147, '2013-10-23', '11:43', 0, '192.168.21.159'),
(148, '2013-10-23', '11:48', 0, '192.168.30.122'),
(149, '2013-10-23', '11:48', 0, '192.168.21.157'),
(150, '2013-10-23', '13:37', 0, '192.168.21.155'),
(151, '2013-10-23', '13:44', 0, '192.168.21.160'),
(152, '2013-10-23', '13:56', 0, '192.168.21.159'),
(153, '2013-10-23', '13:57', 0, '192.168.21.157'),
(154, '2013-10-23', '14:19', 0, '192.168.30.122'),
(155, '2013-10-23', '14:38', 0, '192.168.21.160'),
(156, '2013-10-23', '15:11', 0, '192.168.21.155'),
(157, '2013-10-23', '15:35', 0, '192.168.30.121'),
(158, '2013-10-23', '15:59', 0, '192.168.30.122'),
(159, '2013-10-23', '16:57', 0, '192.168.30.122'),
(160, '2013-10-23', '17:30', 0, '192.168.30.122'),
(161, '2013-10-23', '18:43', 0, '192.168.21.155'),
(162, '2013-10-23', '18:43', 0, '192.168.21.157'),
(163, '2013-10-23', '18:43', 0, '192.168.21.159'),
(164, '2013-10-23', '18:43', 0, '192.168.30.121'),
(165, '2013-10-24', '09:07', 0, '192.168.30.122'),
(166, '2013-10-24', '09:07', 0, '192.168.30.121'),
(167, '2013-10-24', '09:30', 0, '192.168.30.122'),
(168, '2013-10-24', '09:33', 0, '192.168.30.122'),
(169, '2013-10-24', '09:35', 0, '192.168.21.157'),
(170, '2013-10-24', '09:44', 0, '192.168.21.157'),
(171, '2013-10-24', '09:45', 0, '192.168.30.121'),
(172, '2013-10-24', '09:53', 0, '192.168.30.122'),
(173, '2013-10-24', '09:56', 0, '192.168.30.121'),
(174, '2013-10-24', '09:57', 0, '192.168.30.122'),
(175, '2013-10-24', '10:00', 0, '192.168.30.122'),
(176, '2013-10-24', '10:00', 0, '192.168.30.122'),
(177, '2013-10-24', '10:13', 0, '192.168.30.122'),
(178, '2013-10-24', '10:30', 0, '192.168.30.122'),
(179, '2013-10-24', '10:46', 0, '192.168.21.157'),
(180, '2013-10-24', '11:02', 0, '192.168.30.122'),
(181, '2013-10-24', '11:09', 0, '192.168.21.155'),
(182, '2013-10-24', '11:24', 0, '192.168.21.155'),
(183, '2013-10-24', '11:32', 0, '192.168.30.122'),
(184, '2013-10-24', '11:36', 0, '192.168.21.157'),
(185, '2013-10-24', '11:40', 0, '192.168.30.121'),
(186, '2013-10-24', '11:46', 0, '192.168.30.122'),
(187, '2013-10-24', '12:02', 0, '192.168.21.157'),
(188, '2013-10-24', '13:52', 0, '192.168.30.122'),
(189, '2013-10-24', '14:17', 0, '192.168.30.121'),
(190, '2013-10-24', '14:19', 0, '192.168.30.122'),
(191, '2013-10-24', '14:27', 0, '192.168.30.122'),
(192, '2013-10-24', '14:35', 0, '192.168.21.157'),
(193, '2013-10-24', '14:39', 0, '192.168.30.122'),
(194, '2013-10-24', '14:45', 0, '192.168.21.157'),
(195, '2013-10-24', '14:46', 0, '192.168.21.155'),
(196, '2013-10-24', '14:50', 0, '192.168.21.157'),
(197, '2013-10-24', '15:13', 0, '192.168.30.122'),
(198, '2013-10-24', '15:21', 0, '192.168.21.157'),
(199, '2013-10-24', '15:26', 0, '192.168.30.122'),
(200, '2013-10-24', '15:35', 0, '192.168.30.122'),
(201, '2013-10-24', '15:38', 0, '192.168.30.122'),
(202, '2013-10-24', '15:48', 0, '192.168.30.122'),
(203, '2013-10-24', '15:50', 0, '192.168.30.122'),
(204, '2013-10-24', '15:52', 0, '192.168.30.122'),
(205, '2013-10-24', '16:08', 0, '192.168.30.122'),
(206, '2013-10-24', '16:14', 0, '192.168.30.122'),
(207, '2013-10-24', '16:17', 0, '192.168.30.122'),
(208, '2013-10-24', '16:27', 0, '192.168.30.122'),
(209, '2013-10-25', '09:42', 0, '192.168.21.160'),
(210, '2013-10-25', '10:08', 0, '192.168.30.122'),
(211, '2013-10-25', '10:23', 0, '192.168.21.157'),
(212, '2013-10-25', '10:33', 0, '192.168.21.155'),
(213, '2013-10-25', '11:17', 0, '192.168.21.157'),
(214, '2013-10-25', '11:48', 0, '192.168.21.160'),
(215, '2013-10-25', '11:53', 0, '192.168.30.122'),
(216, '2013-10-25', '13:51', 0, '192.168.30.122'),
(217, '2013-10-25', '15:13', 0, '192.168.30.121'),
(218, '2013-10-25', '16:49', 0, '192.168.30.122'),
(219, '2013-10-25', '16:50', 0, '192.168.30.122'),
(220, '2013-10-25', '16:55', 0, '192.168.30.122'),
(221, '2013-10-25', '16:55', 0, '192.168.21.155'),
(222, '2013-10-25', '16:57', 0, '192.168.30.122'),
(223, '2013-10-25', '17:02', 0, '192.168.30.121'),
(224, '2013-10-25', '17:02', 0, '192.168.30.122'),
(225, '2013-10-25', '17:13', 0, '192.168.21.159'),
(226, '2013-10-25', '17:13', 0, '192.168.30.121'),
(227, '2013-10-25', '17:16', 0, '192.168.30.121'),
(228, '2013-10-25', '17:17', 0, '192.168.30.121'),
(229, '2013-10-25', '17:17', 0, '192.168.21.159'),
(230, '2013-10-25', '17:21', 0, '192.168.30.121'),
(231, '2013-10-25', '17:23', 0, '192.168.30.121'),
(232, '2013-10-25', '17:25', 0, '192.168.30.121'),
(233, '2013-10-25', '17:25', 0, '192.168.21.159'),
(234, '2013-10-25', '17:25', 0, '192.168.30.121'),
(235, '2013-10-25', '17:26', 0, '192.168.30.121'),
(236, '2013-10-25', '17:32', 0, '192.168.30.121'),
(237, '2013-10-25', '17:33', 0, '192.168.30.122'),
(238, '2013-10-25', '17:35', 0, '192.168.30.121'),
(239, '2013-10-25', '17:35', 0, '192.168.30.121'),
(240, '2013-10-25', '17:36', 0, '192.168.21.111'),
(241, '2013-10-25', '17:38', 0, '192.168.30.121'),
(242, '2013-10-25', '17:39', 0, '192.168.30.122'),
(243, '2013-10-25', '17:42', 0, '192.168.30.122'),
(244, '2013-10-25', '17:44', 0, '192.168.30.121'),
(245, '2013-10-25', '17:45', 0, '192.168.30.121'),
(246, '2013-10-25', '17:49', 0, '192.168.30.121'),
(247, '2013-10-25', '17:50', 0, '192.168.30.121'),
(248, '2013-10-25', '17:51', 0, '192.168.30.121'),
(249, '2013-10-25', '17:52', 0, '192.168.30.121'),
(250, '2013-10-25', '17:53', 0, '192.168.30.121'),
(251, '2013-10-25', '17:54', 0, '192.168.30.121'),
(252, '2013-10-25', '17:55', 0, '192.168.30.121'),
(253, '2013-10-25', '18:02', 0, '192.168.30.121'),
(254, '2013-10-25', '18:33', 0, '192.168.21.144'),
(255, '2013-10-25', '18:50', 0, '192.168.30.121'),
(256, '2013-10-26', '09:08', 0, '192.168.30.122'),
(257, '2013-10-26', '09:08', 0, '192.168.30.122'),
(258, '2013-10-26', '09:57', 0, '192.168.30.122'),
(259, '2013-10-26', '09:58', 0, '192.168.30.121'),
(260, '2013-10-26', '10:03', 0, '192.168.30.121'),
(261, '2013-10-26', '10:05', 0, '192.168.30.121'),
(262, '2013-10-26', '10:32', 0, '192.168.30.122'),
(263, '2013-10-26', '10:32', 0, '192.168.30.121'),
(264, '2013-10-26', '10:39', 0, '192.168.30.121'),
(265, '2013-10-26', '10:40', 0, '192.168.30.121'),
(266, '2013-10-26', '10:40', 0, '192.168.30.122'),
(267, '2013-10-26', '10:42', 0, '192.168.30.121'),
(268, '2013-10-26', '10:42', 0, '192.168.30.121'),
(269, '2013-10-26', '10:42', 0, '192.168.30.121'),
(270, '2013-10-26', '10:43', 0, '192.168.30.122'),
(271, '2013-10-26', '10:43', 0, '192.168.30.121'),
(272, '2013-10-26', '10:44', 0, '192.168.30.121'),
(273, '2013-10-26', '10:47', 0, '192.168.30.121'),
(274, '2013-10-26', '10:54', 0, '192.168.30.121'),
(275, '2013-10-26', '11:00', 0, '192.168.30.121'),
(276, '2013-10-26', '11:02', 0, '192.168.30.121'),
(277, '2013-10-26', '11:02', 0, '192.168.30.121'),
(278, '2013-10-26', '11:04', 0, '192.168.30.121'),
(279, '2013-10-26', '11:05', 0, '192.168.30.121'),
(280, '2013-10-26', '11:06', 0, '192.168.30.121'),
(281, '2013-10-26', '11:11', 0, '192.168.21.159'),
(282, '2013-10-26', '11:11', 0, '192.168.21.159'),
(283, '2013-10-26', '11:13', 0, '192.168.21.159'),
(284, '2013-10-26', '11:14', 0, '192.168.21.159'),
(285, '2013-10-26', '11:15', 0, '192.168.21.159'),
(286, '2013-10-26', '11:16', 0, '192.168.21.159'),
(287, '2013-10-26', '11:16', 0, '192.168.21.159'),
(288, '2013-10-26', '11:17', 0, '192.168.21.159'),
(289, '2013-10-26', '11:17', 0, '192.168.21.159'),
(290, '2013-10-26', '11:18', 0, '192.168.21.159'),
(291, '2013-10-26', '11:18', 0, '192.168.21.159'),
(292, '2013-10-26', '11:20', 0, '192.168.21.159'),
(293, '2013-10-26', '11:21', 0, '192.168.21.159'),
(294, '2013-10-26', '11:23', 0, '192.168.21.159'),
(295, '2013-10-26', '11:23', 0, '192.168.21.159'),
(296, '2013-10-26', '11:24', 0, '192.168.21.159'),
(297, '2013-10-26', '11:26', 0, '192.168.21.159'),
(298, '2013-10-26', '11:29', 0, '192.168.21.159'),
(299, '2013-10-26', '11:30', 0, '192.168.21.159'),
(300, '2013-10-26', '11:31', 0, '192.168.21.159'),
(301, '2013-10-26', '11:31', 0, '192.168.21.159'),
(302, '2013-10-26', '11:32', 0, '192.168.21.159'),
(303, '2013-10-26', '11:34', 0, '192.168.21.159'),
(304, '2013-10-26', '11:35', 0, '192.168.21.159'),
(305, '2013-10-26', '11:35', 0, '192.168.21.159'),
(306, '2013-10-26', '11:36', 0, '192.168.21.159'),
(307, '2013-10-26', '11:37', 0, '192.168.21.159'),
(308, '2013-10-26', '11:37', 0, '192.168.21.159'),
(309, '2013-10-26', '11:38', 0, '192.168.21.159'),
(310, '2013-10-26', '11:39', 0, '192.168.21.159'),
(311, '2013-10-26', '11:39', 0, '192.168.21.159'),
(312, '2013-10-26', '11:42', 0, '192.168.30.121'),
(313, '2013-10-26', '11:49', 0, '192.168.30.122'),
(314, '2013-10-26', '13:05', 0, '192.168.30.122'),
(315, '2013-10-26', '13:47', 0, '192.168.30.121'),
(316, '2013-10-26', '14:03', 0, '192.168.21.160'),
(317, '2013-10-26', '14:04', 0, '192.168.30.121'),
(318, '2013-10-26', '14:07', 0, '192.168.21.155'),
(319, '2013-10-26', '14:08', 0, '192.168.21.155'),
(320, '2013-10-26', '14:08', 0, '192.168.21.160'),
(321, '2013-10-26', '14:09', 0, '192.168.30.121'),
(322, '2013-10-26', '14:24', 0, '192.168.21.157'),
(323, '2013-10-26', '14:44', 0, '192.168.21.155'),
(324, '2013-10-26', '14:47', 0, '192.168.30.122'),
(325, '2013-10-26', '14:51', 0, '10.68.252.73'),
(326, '2013-10-26', '16:07', 0, '192.168.30.122'),
(327, '2013-10-26', '16:10', 0, '192.168.30.122'),
(328, '2013-10-26', '16:13', 0, '192.168.30.121'),
(329, '2013-10-26', '16:13', 0, '10.68.252.73'),
(330, '2013-10-26', '16:14', 0, '192.168.30.121'),
(331, '2013-10-26', '16:16', 0, '192.168.30.122'),
(332, '2013-10-26', '16:19', 0, '192.168.30.121'),
(333, '2013-10-26', '16:21', 0, '192.168.30.121'),
(334, '2013-10-26', '16:29', 0, '10.68.252.73'),
(335, '2013-10-26', '16:30', 0, '192.168.30.121'),
(336, '2013-10-26', '16:40', 0, '10.68.252.73'),
(337, '2013-10-26', '16:41', 0, '10.68.252.70'),
(338, '2013-10-26', '16:54', 0, '10.68.252.73'),
(339, '2013-10-26', '17:10', 0, '192.168.30.172'),
(340, '2013-10-26', '17:10', 0, '192.168.30.172'),
(341, '2013-10-26', '17:16', 0, '192.168.30.121'),
(342, '2013-10-26', '17:52', 0, '192.168.21.155'),
(343, '2013-10-26', '18:11', 0, '192.168.21.157'),
(344, '2013-10-26', '18:23', 0, '192.168.21.157'),
(345, '2013-10-28', '06:01', 0, '::1'),
(346, '2013-10-28', '06:39', 0, '::1'),
(347, '2013-10-28', '07:09', 0, '::1'),
(348, '2013-10-28', '07:31', 0, '::1'),
(349, '2013-10-28', '07:52', 0, '::1'),
(350, '2013-10-28', '07:53', 0, '::1'),
(351, '2013-10-28', '09:22', 0, '192.168.21.160'),
(352, '2013-10-28', '09:27', 0, '192.168.21.157'),
(353, '2013-10-28', '09:35', 0, '192.168.21.48'),
(354, '2013-10-28', '09:39', 0, '192.168.30.186'),
(355, '2013-10-28', '10:41', 0, '::1'),
(356, '2013-10-28', '10:45', 0, '::1'),
(357, '2013-10-28', '10:48', 0, '::1'),
(358, '2013-10-28', '09:51', 0, '192.168.30.122'),
(359, '2013-10-28', '09:53', 0, '192.168.30.122'),
(360, '2013-10-28', '09:57', 0, '192.168.21.160'),
(361, '2013-10-28', '10:58', 0, '::1'),
(362, '2013-10-28', '09:59', 0, '192.168.30.186'),
(363, '2013-10-28', '09:59', 0, '192.168.21.160'),
(364, '2013-10-28', '10:12', 0, '192.168.30.122'),
(365, '2013-10-28', '10:19', 0, '192.168.21.160'),
(366, '2013-10-28', '10:20', 0, '192.168.30.122'),
(367, '2013-10-28', '10:20', 0, '192.168.21.144'),
(368, '2013-10-28', '10:21', 0, '192.168.30.186'),
(369, '2013-10-28', '10:23', 0, '192.168.21.159'),
(370, '2013-10-28', '10:25', 0, '192.168.30.122'),
(371, '2013-10-28', '10:25', 0, '192.168.21.12'),
(372, '2013-10-28', '10:25', 0, '192.168.22.106'),
(373, '2013-10-28', '10:26', 0, '192.168.30.122'),
(374, '2013-10-28', '10:26', 0, '192.168.21.160'),
(375, '2013-10-28', '10:26', 0, '192.168.30.122'),
(376, '2013-10-28', '10:30', 0, '192.168.21.116'),
(377, '2013-10-28', '10:31', 0, '192.168.21.155'),
(378, '2013-10-28', '10:33', 0, '192.168.22.119'),
(379, '2013-10-28', '10:34', 0, '192.168.21.116'),
(380, '2013-10-28', '10:38', 0, '192.168.22.106'),
(381, '2013-10-28', '10:44', 0, '192.168.21.159'),
(382, '2013-10-28', '10:46', 0, '192.168.30.185'),
(383, '2013-10-28', '10:47', 0, '192.168.22.106'),
(384, '2013-10-28', '10:47', 0, '192.168.21.157'),
(385, '2013-10-28', '10:47', 0, '192.168.21.116'),
(386, '2013-10-28', '10:48', 0, '192.168.22.119'),
(387, '2013-10-28', '10:49', 0, '192.168.21.157'),
(388, '2013-10-28', '10:50', 0, '192.168.22.119'),
(389, '2013-10-28', '10:51', 0, '192.168.21.159'),
(390, '2013-10-28', '10:52', 0, '192.168.21.157'),
(391, '2013-10-28', '10:57', 0, '192.168.21.115'),
(392, '2013-10-28', '10:59', 0, '192.168.20.231'),
(393, '2013-10-28', '11:02', 0, '192.168.21.116'),
(394, '2013-10-28', '11:05', 0, '192.168.21.117'),
(395, '2013-10-28', '11:06', 0, '192.168.21.159'),
(396, '2013-10-28', '11:06', 0, '192.168.20.231'),
(397, '2013-10-28', '11:07', 0, '192.168.30.177'),
(398, '2013-10-28', '11:07', 0, '192.168.30.177'),
(399, '2013-10-28', '11:09', 0, '192.168.30.122'),
(400, '2013-10-28', '11:13', 0, '192.168.21.12'),
(401, '2013-10-28', '11:15', 0, '192.168.30.186'),
(402, '2013-10-28', '11:16', 0, '192.168.30.186'),
(403, '2013-10-28', '11:18', 0, '192.168.30.186'),
(404, '2013-10-28', '11:22', 0, '192.168.30.185'),
(405, '2013-10-28', '11:22', 0, '192.168.20.231'),
(406, '2013-10-28', '11:22', 0, '192.168.21.116'),
(407, '2013-10-28', '11:23', 0, '192.168.21.116'),
(408, '2013-10-28', '11:23', 0, '192.168.21.116'),
(409, '2014-03-18', '18:50', 1, '127.0.0.1'),
(410, '2014-03-18', '20:53', 1, '127.0.0.1'),
(411, '2014-03-18', '20:55', 1, '127.0.0.1'),
(412, '2014-03-18', '21:02', 1, '127.0.0.1'),
(413, '2014-03-18', '21:12', 1, '127.0.0.1'),
(414, '2014-03-18', '21:13', 1, '127.0.0.1'),
(415, '2014-03-18', '21:19', 1, '127.0.0.1'),
(416, '2014-03-24', '22:39', 1, '127.0.0.1'),
(417, '2014-03-24', '23:14', 1, '127.0.0.1'),
(418, '2014-03-24', '23:24', 1, '127.0.0.1'),
(419, '2014-08-14', '21:41', 1, '127.0.0.1'),
(420, '2014-08-14', '21:56', 1, '127.0.0.1'),
(421, '2014-09-02', '01:26', 1, '127.0.0.1'),
(422, '2014-09-02', '11:51', 1, '127.0.0.1'),
(423, '2014-09-03', '18:44', 1, '127.0.0.1'),
(424, '2014-09-09', '12:30', 1, '127.0.0.1'),
(425, '2014-09-25', '21:58', 1, '127.0.0.1'),
(426, '2014-10-01', '11:58', 1, '127.0.0.1'),
(427, '2014-10-02', '21:51', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `doc`
--

CREATE TABLE IF NOT EXISTS `doc` (
  `doc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doc_nome` varchar(255) NOT NULL,
  `doc_msg` text,
  `doc_url` varchar(255) DEFAULT NULL,
  `doc_site` varchar(255) DEFAULT NULL,
  `sta_id` int(1) NOT NULL DEFAULT '1',
  `doc_are_id` int(10) unsigned NOT NULL,
  `doc_data` date NOT NULL,
  `doc_hora` char(5) NOT NULL,
  PRIMARY KEY (`doc_id`),
  KEY `doc_are_id` (`doc_are_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `doc`
--

INSERT INTO `doc` (`doc_id`, `doc_nome`, `doc_msg`, `doc_url`, `doc_site`, `sta_id`, `doc_are_id`, `doc_data`, `doc_hora`) VALUES
(1, 'Testando1', '', '', 'AA.CA', 0, 1, '2013-10-19', '17:05'),
(2, 'teste de doc 1', '', 'midia/doc/anvcruzex2013.ppt', '', 1, 2, '2013-10-21', '11:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `docarea`
--

CREATE TABLE IF NOT EXISTS `docarea` (
  `doc_are_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doc_are_nome` varchar(255) NOT NULL,
  `doc_are_id2` int(11) DEFAULT NULL,
  `doc_tip_id` int(10) DEFAULT NULL,
  `sta_id` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`doc_are_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `docarea`
--

INSERT INTO `docarea` (`doc_are_id`, `doc_are_nome`, `doc_are_id2`, `doc_tip_id`, `sta_id`) VALUES
(1, 'Teste2', 0, NULL, 0),
(2, 'Documentos do COMGAR', 0, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `doctipo`
--

CREATE TABLE IF NOT EXISTS `doctipo` (
  `doc_tip_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doc_tip_nome` varchar(255) NOT NULL,
  `sta_id` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`doc_tip_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `doctipo`
--

INSERT INTO `doctipo` (`doc_tip_id`, `doc_tip_nome`, `sta_id`) VALUES
(1, 'EXIN', 1),
(2, 'SPIN', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `eval`
--

CREATE TABLE IF NOT EXISTS `eval` (
  `eva_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(255) DEFAULT NULL,
  `pai_id` int(10) DEFAULT NULL,
  `eva_data` date DEFAULT NULL,
  `eva_hora` char(5) CHARACTER SET latin1 DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`eva_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Extraindo dados da tabela `eval`
--

INSERT INTO `eval` (`eva_id`, `cli_nome`, `pai_id`, `eva_data`, `eva_hora`, `status`) VALUES
(37, 'alex', 1, '2012-11-02', '21:18', 0),
(38, 'alex1', 1, '2012-11-02', '21:37', 0),
(39, 'alex 10', 1, '2012-11-02', '22:19', 0),
(40, '', 0, '2013-10-28', '11:13', 0),
(41, 'CL EVAL001', 1, '2013-10-28', '11:16', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalgrupo`
--

CREATE TABLE IF NOT EXISTS `evalgrupo` (
  `eva_gru_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eva_gru_nome` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`eva_gru_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Extraindo dados da tabela `evalgrupo`
--

INSERT INTO `evalgrupo` (`eva_gru_id`, `eva_gru_nome`, `status`) VALUES
(1, 'DIREX', 0),
(2, 'ANIMATION', 0),
(3, 'CFACC', 0),
(4, 'CAOC', 0),
(5, 'MEDIA/CMV', 0),
(6, 'A-2', 0),
(7, 'CISS', 0),
(8, 'REAL LIFE', 0),
(9, 'A-3', 0),
(10, 'A-4', 0),
(11, 'A-5', 0),
(12, 'A-6', 0),
(13, 'A-9', 0),
(14, 'CJRCC', 0),
(15, 'CFAC COS', 0),
(16, 'COC', 0),
(17, 'TASK BRANCH', 0),
(18, 'CISS/ICC/WAR GAME', 0),
(19, 'EVALUATION', 0),
(20, 'GBAD', 0),
(21, 'SPACE CELL', 0),
(22, 'CRC', 0),
(23, 'LEGAD', 0),
(24, 'INFO FLOW', 0),
(25, 'OTHERS (STAFF, SUPPORT, ETC)', 0),
(26, 'fr', 0),
(32, 'AFBNT', 1),
(33, 'AIR UNITS - GROUND', 1),
(34, 'AIR UNITS - PILOT', 1),
(35, 'CISS', 1),
(36, 'CMV', 1),
(37, 'CONTR', 1),
(38, 'CUR', 1),
(39, 'DYEXDIR', 1),
(40, 'EVAL', 1),
(41, 'EXDIR', 1),
(42, 'FORCE', 1),
(43, 'PLANS', 1),
(44, 'REAL', 1),
(45, 'SAFETY', 1),
(46, 'SAR', 1),
(47, 'SHOT', 1),
(48, 'SUPP', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalgrupo_evalpergunta`
--

CREATE TABLE IF NOT EXISTS `evalgrupo_evalpergunta` (
  `eva_gru_id` int(10) unsigned NOT NULL,
  `eva_per_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eva_gru_id`,`eva_per_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `evalgrupo_evalpergunta`
--

INSERT INTO `evalgrupo_evalpergunta` (`eva_gru_id`, `eva_per_id`) VALUES
(1, 1),
(2, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(34, 2),
(34, 3),
(34, 4),
(34, 5),
(34, 6),
(35, 2),
(35, 3),
(35, 4),
(35, 5),
(35, 6),
(36, 2),
(36, 3),
(36, 4),
(36, 5),
(36, 6),
(37, 2),
(37, 3),
(37, 4),
(37, 5),
(37, 6),
(38, 2),
(38, 3),
(38, 4),
(38, 5),
(38, 6),
(39, 2),
(39, 3),
(39, 4),
(39, 5),
(39, 6),
(40, 2),
(40, 3),
(40, 4),
(40, 5),
(40, 6),
(41, 2),
(41, 3),
(41, 4),
(41, 5),
(41, 6),
(42, 2),
(42, 3),
(42, 4),
(42, 5),
(42, 6),
(43, 2),
(43, 3),
(43, 4),
(43, 5),
(43, 6),
(44, 2),
(44, 3),
(44, 4),
(44, 5),
(44, 6),
(45, 2),
(45, 3),
(45, 4),
(45, 5),
(45, 6),
(46, 2),
(46, 3),
(46, 4),
(46, 5),
(46, 6),
(47, 2),
(47, 3),
(47, 4),
(47, 5),
(47, 6),
(48, 2),
(48, 3),
(48, 4),
(48, 5),
(48, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalgrupo_evalponto`
--

CREATE TABLE IF NOT EXISTS `evalgrupo_evalponto` (
  `eva_gru_id` int(10) unsigned NOT NULL,
  `eva_pon_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eva_gru_id`,`eva_pon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `evalgrupo_evalponto`
--

INSERT INTO `evalgrupo_evalponto` (`eva_gru_id`, `eva_pon_id`) VALUES
(1, 1),
(1, 34),
(2, 1),
(2, 34),
(3, 1),
(3, 34),
(4, 1),
(4, 34),
(5, 1),
(5, 5),
(5, 34),
(6, 1),
(6, 5),
(6, 34),
(9, 34),
(10, 34),
(11, 34),
(12, 34),
(13, 34),
(14, 34),
(15, 34),
(16, 34),
(17, 34),
(18, 34),
(19, 34),
(20, 34),
(21, 34),
(22, 34),
(23, 34),
(24, 34),
(25, 34),
(32, 2),
(32, 3),
(32, 4),
(32, 35),
(32, 36),
(32, 37),
(33, 2),
(33, 3),
(33, 4),
(33, 35),
(33, 36),
(33, 37),
(34, 2),
(34, 3),
(34, 4),
(34, 35),
(34, 36),
(34, 37),
(35, 2),
(35, 3),
(35, 4),
(35, 35),
(35, 36),
(35, 37),
(36, 2),
(36, 3),
(36, 4),
(36, 35),
(36, 36),
(36, 37),
(37, 2),
(37, 3),
(37, 4),
(37, 35),
(37, 36),
(37, 37),
(38, 2),
(38, 3),
(38, 4),
(38, 35),
(38, 36),
(38, 37),
(39, 2),
(39, 3),
(39, 4),
(39, 35),
(39, 36),
(39, 37),
(40, 2),
(40, 3),
(40, 4),
(40, 35),
(40, 36),
(40, 37),
(41, 2),
(41, 3),
(41, 4),
(41, 35),
(41, 36),
(41, 37),
(42, 2),
(42, 3),
(42, 4),
(42, 35),
(42, 36),
(42, 37),
(43, 2),
(43, 3),
(43, 4),
(43, 35),
(43, 36),
(43, 37),
(44, 2),
(44, 3),
(44, 4),
(44, 35),
(44, 36),
(44, 37),
(45, 2),
(45, 3),
(45, 4),
(45, 35),
(45, 36),
(45, 37),
(46, 2),
(46, 3),
(46, 4),
(46, 35),
(46, 36),
(46, 37),
(47, 2),
(47, 3),
(47, 4),
(47, 35),
(47, 36),
(47, 37),
(48, 2),
(48, 3),
(48, 4),
(48, 35),
(48, 36),
(48, 37);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalpergunta`
--

CREATE TABLE IF NOT EXISTS `evalpergunta` (
  `eva_per_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eva_per_nome` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`eva_per_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `evalpergunta`
--

INSERT INTO `evalpergunta` (`eva_per_id`, `eva_per_nome`, `status`) VALUES
(2, 'Your prior experience in CRUZEX or similar exercises/operations:', 1),
(3, 'Positive aspects of the exercise:', 1),
(4, 'Negative aspects of the exercise:', 1),
(5, 'Suggestions to improve CRUZEX in the future:', 1),
(6, 'Considering your experience, select one or more areas and make your observations:', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalponto`
--

CREATE TABLE IF NOT EXISTS `evalponto` (
  `eva_pon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eva_pon_nome` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`eva_pon_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Extraindo dados da tabela `evalponto`
--

INSERT INTO `evalponto` (`eva_pon_id`, `eva_pon_nome`, `status`) VALUES
(2, 'GENERAL OVERVIEW', 1),
(3, 'REAL LIFE SUPPORT', 1),
(4, 'LEVEL OF KNOWLEDGE', 1),
(5, 'INCREASED KNOWLEDGE OF COMBAT', 0),
(35, 'CIS (Communication and Information Systems)', 1),
(36, 'CFAC Training', 1),
(37, 'DOCUMENTATION AND DOCTRINE', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalpontuacao`
--

CREATE TABLE IF NOT EXISTS `evalpontuacao` (
  `eva_ser_id` int(10) unsigned NOT NULL,
  `eva_pon_id` int(10) unsigned NOT NULL,
  `eva_id` int(10) unsigned NOT NULL,
  `eva_pon_valor` int(1) unsigned NOT NULL,
  `eva_gru_id` int(10) unsigned NOT NULL,
  `eva_pontuacao_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`eva_pontuacao_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1221 ;

--
-- Extraindo dados da tabela `evalpontuacao`
--

INSERT INTO `evalpontuacao` (`eva_ser_id`, `eva_pon_id`, `eva_id`, `eva_pon_valor`, `eva_gru_id`, `eva_pontuacao_id`) VALUES
(38, 2, 37, 1, 2, 829),
(78, 2, 37, 2, 2, 830),
(45, 2, 37, 0, 2, 831),
(56, 2, 37, 0, 2, 832),
(57, 2, 37, 0, 2, 833),
(58, 2, 37, 0, 2, 834),
(59, 2, 37, 0, 2, 835),
(60, 2, 37, 0, 2, 836),
(48, 2, 37, 0, 2, 837),
(79, 2, 37, 0, 2, 838),
(80, 2, 37, 0, 2, 839),
(81, 2, 37, 0, 2, 840),
(62, 2, 37, 0, 2, 841),
(63, 2, 37, 0, 2, 842),
(64, 2, 37, 0, 2, 843),
(65, 2, 37, 0, 2, 844),
(66, 2, 37, 0, 2, 845),
(67, 2, 37, 0, 2, 846),
(68, 2, 37, 0, 2, 847),
(69, 2, 37, 0, 2, 848),
(70, 2, 37, 0, 2, 849),
(71, 2, 37, 0, 2, 850),
(38, 3, 37, 1, 2, 851),
(78, 3, 37, 2, 2, 852),
(45, 3, 37, 0, 2, 853),
(56, 3, 37, 0, 2, 854),
(57, 3, 37, 0, 2, 855),
(58, 3, 37, 0, 2, 856),
(59, 3, 37, 0, 2, 857),
(60, 3, 37, 0, 2, 858),
(48, 3, 37, 0, 2, 859),
(79, 3, 37, 0, 2, 860),
(80, 3, 37, 0, 2, 861),
(81, 3, 37, 0, 2, 862),
(62, 3, 37, 0, 2, 863),
(63, 3, 37, 0, 2, 864),
(64, 3, 37, 0, 2, 865),
(65, 3, 37, 0, 2, 866),
(66, 3, 37, 0, 2, 867),
(67, 3, 37, 0, 2, 868),
(68, 3, 37, 0, 2, 869),
(69, 3, 37, 0, 2, 870),
(70, 3, 37, 0, 2, 871),
(71, 3, 37, 0, 2, 872),
(38, 4, 37, 1, 2, 873),
(78, 4, 37, 2, 2, 874),
(45, 4, 37, 0, 2, 875),
(56, 4, 37, 0, 2, 876),
(57, 4, 37, 0, 2, 877),
(58, 4, 37, 0, 2, 878),
(59, 4, 37, 0, 2, 879),
(60, 4, 37, 0, 2, 880),
(48, 4, 37, 0, 2, 881),
(79, 4, 37, 0, 2, 882),
(80, 4, 37, 0, 2, 883),
(81, 4, 37, 0, 2, 884),
(62, 4, 37, 0, 2, 885),
(63, 4, 37, 0, 2, 886),
(64, 4, 37, 0, 2, 887),
(65, 4, 37, 0, 2, 888),
(66, 4, 37, 0, 2, 889),
(67, 4, 37, 0, 2, 890),
(68, 4, 37, 0, 2, 891),
(69, 4, 37, 0, 2, 892),
(70, 4, 37, 0, 2, 893),
(71, 4, 37, 0, 2, 894),
(38, 34, 37, 1, 2, 895),
(78, 34, 37, 2, 2, 896),
(45, 34, 37, 0, 2, 897),
(56, 34, 37, 0, 2, 898),
(57, 34, 37, 0, 2, 899),
(58, 34, 37, 0, 2, 900),
(59, 34, 37, 0, 2, 901),
(60, 34, 37, 0, 2, 902),
(48, 34, 37, 0, 2, 903),
(79, 34, 37, 0, 2, 904),
(80, 34, 37, 0, 2, 905),
(81, 34, 37, 0, 2, 906),
(62, 34, 37, 0, 2, 907),
(63, 34, 37, 0, 2, 908),
(64, 34, 37, 0, 2, 909),
(65, 34, 37, 0, 2, 910),
(66, 34, 37, 0, 2, 911),
(67, 34, 37, 0, 2, 912),
(68, 34, 37, 0, 2, 913),
(69, 34, 37, 0, 2, 914),
(70, 34, 37, 0, 2, 915),
(71, 34, 37, 0, 2, 916),
(38, 35, 37, 1, 2, 917),
(78, 35, 37, 2, 2, 918),
(45, 35, 37, 0, 2, 919),
(56, 35, 37, 0, 2, 920),
(57, 35, 37, 0, 2, 921),
(58, 35, 37, 0, 2, 922),
(59, 35, 37, 0, 2, 923),
(60, 35, 37, 0, 2, 924),
(48, 35, 37, 0, 2, 925),
(79, 35, 37, 0, 2, 926),
(80, 35, 37, 0, 2, 927),
(81, 35, 37, 0, 2, 928),
(62, 35, 37, 0, 2, 929),
(63, 35, 37, 0, 2, 930),
(64, 35, 37, 0, 2, 931),
(65, 35, 37, 0, 2, 932),
(66, 35, 37, 0, 2, 933),
(67, 35, 37, 0, 2, 934),
(68, 35, 37, 0, 2, 935),
(69, 35, 37, 0, 2, 936),
(70, 35, 37, 0, 2, 937),
(71, 35, 37, 0, 2, 938),
(38, 2, 38, 1, 3, 939),
(78, 2, 38, 2, 3, 940),
(45, 2, 38, 5, 3, 941),
(56, 2, 38, 5, 3, 942),
(57, 2, 38, 6, 3, 943),
(58, 2, 38, 6, 3, 944),
(59, 2, 38, 7, 3, 945),
(60, 2, 38, 7, 3, 946),
(48, 2, 38, 8, 3, 947),
(79, 2, 38, 8, 3, 948),
(80, 2, 38, 9, 3, 949),
(81, 2, 38, 9, 3, 950),
(62, 2, 38, 10, 3, 951),
(63, 2, 38, 10, 3, 952),
(64, 2, 38, 1, 3, 953),
(65, 2, 38, 2, 3, 954),
(66, 2, 38, 1, 3, 955),
(67, 2, 38, 2, 3, 956),
(68, 2, 38, 3, 3, 957),
(69, 2, 38, 4, 3, 958),
(70, 2, 38, 3, 3, 959),
(71, 2, 38, 3, 3, 960),
(72, 2, 38, 1, 3, 961),
(73, 2, 38, 2, 3, 962),
(74, 2, 38, 3, 3, 963),
(75, 2, 38, 1, 3, 964),
(76, 2, 38, 2, 3, 965),
(77, 2, 38, 5, 3, 966),
(38, 3, 38, 1, 3, 967),
(78, 3, 38, 2, 3, 968),
(45, 3, 38, 5, 3, 969),
(56, 3, 38, 5, 3, 970),
(57, 3, 38, 6, 3, 971),
(58, 3, 38, 6, 3, 972),
(59, 3, 38, 7, 3, 973),
(60, 3, 38, 7, 3, 974),
(48, 3, 38, 8, 3, 975),
(79, 3, 38, 8, 3, 976),
(80, 3, 38, 9, 3, 977),
(81, 3, 38, 9, 3, 978),
(62, 3, 38, 10, 3, 979),
(63, 3, 38, 10, 3, 980),
(64, 3, 38, 1, 3, 981),
(65, 3, 38, 2, 3, 982),
(66, 3, 38, 1, 3, 983),
(67, 3, 38, 2, 3, 984),
(68, 3, 38, 3, 3, 985),
(69, 3, 38, 4, 3, 986),
(70, 3, 38, 3, 3, 987),
(71, 3, 38, 3, 3, 988),
(72, 3, 38, 1, 3, 989),
(73, 3, 38, 2, 3, 990),
(74, 3, 38, 3, 3, 991),
(75, 3, 38, 1, 3, 992),
(76, 3, 38, 2, 3, 993),
(77, 3, 38, 5, 3, 994),
(38, 4, 38, 1, 3, 995),
(78, 4, 38, 2, 3, 996),
(45, 4, 38, 5, 3, 997),
(56, 4, 38, 5, 3, 998),
(57, 4, 38, 6, 3, 999),
(58, 4, 38, 6, 3, 1000),
(59, 4, 38, 7, 3, 1001),
(60, 4, 38, 7, 3, 1002),
(48, 4, 38, 8, 3, 1003),
(79, 4, 38, 8, 3, 1004),
(80, 4, 38, 9, 3, 1005),
(81, 4, 38, 9, 3, 1006),
(62, 4, 38, 10, 3, 1007),
(63, 4, 38, 10, 3, 1008),
(64, 4, 38, 1, 3, 1009),
(65, 4, 38, 2, 3, 1010),
(66, 4, 38, 1, 3, 1011),
(67, 4, 38, 2, 3, 1012),
(68, 4, 38, 3, 3, 1013),
(69, 4, 38, 4, 3, 1014),
(70, 4, 38, 3, 3, 1015),
(71, 4, 38, 3, 3, 1016),
(72, 4, 38, 1, 3, 1017),
(73, 4, 38, 2, 3, 1018),
(74, 4, 38, 3, 3, 1019),
(75, 4, 38, 1, 3, 1020),
(76, 4, 38, 2, 3, 1021),
(77, 4, 38, 5, 3, 1022),
(38, 34, 38, 1, 3, 1023),
(78, 34, 38, 2, 3, 1024),
(45, 34, 38, 5, 3, 1025),
(56, 34, 38, 5, 3, 1026),
(57, 34, 38, 6, 3, 1027),
(58, 34, 38, 6, 3, 1028),
(59, 34, 38, 7, 3, 1029),
(60, 34, 38, 7, 3, 1030),
(48, 34, 38, 8, 3, 1031),
(79, 34, 38, 8, 3, 1032),
(80, 34, 38, 9, 3, 1033),
(81, 34, 38, 9, 3, 1034),
(62, 34, 38, 10, 3, 1035),
(63, 34, 38, 10, 3, 1036),
(64, 34, 38, 1, 3, 1037),
(65, 34, 38, 2, 3, 1038),
(66, 34, 38, 1, 3, 1039),
(67, 34, 38, 2, 3, 1040),
(68, 34, 38, 3, 3, 1041),
(69, 34, 38, 4, 3, 1042),
(70, 34, 38, 3, 3, 1043),
(71, 34, 38, 3, 3, 1044),
(72, 34, 38, 1, 3, 1045),
(73, 34, 38, 2, 3, 1046),
(74, 34, 38, 3, 3, 1047),
(75, 34, 38, 1, 3, 1048),
(76, 34, 38, 2, 3, 1049),
(77, 34, 38, 5, 3, 1050),
(38, 35, 38, 1, 3, 1051),
(78, 35, 38, 2, 3, 1052),
(45, 35, 38, 5, 3, 1053),
(56, 35, 38, 5, 3, 1054),
(57, 35, 38, 6, 3, 1055),
(58, 35, 38, 6, 3, 1056),
(59, 35, 38, 7, 3, 1057),
(60, 35, 38, 7, 3, 1058),
(48, 35, 38, 8, 3, 1059),
(79, 35, 38, 8, 3, 1060),
(80, 35, 38, 9, 3, 1061),
(81, 35, 38, 9, 3, 1062),
(62, 35, 38, 10, 3, 1063),
(63, 35, 38, 10, 3, 1064),
(64, 35, 38, 1, 3, 1065),
(65, 35, 38, 2, 3, 1066),
(66, 35, 38, 1, 3, 1067),
(67, 35, 38, 2, 3, 1068),
(68, 35, 38, 3, 3, 1069),
(69, 35, 38, 4, 3, 1070),
(70, 35, 38, 3, 3, 1071),
(71, 35, 38, 3, 3, 1072),
(72, 35, 38, 1, 3, 1073),
(73, 35, 38, 2, 3, 1074),
(74, 35, 38, 3, 3, 1075),
(75, 35, 38, 1, 3, 1076),
(76, 35, 38, 2, 3, 1077),
(77, 35, 38, 5, 3, 1078),
(38, 36, 38, 1, 3, 1079),
(78, 36, 38, 2, 3, 1080),
(45, 36, 38, 5, 3, 1081),
(56, 36, 38, 5, 3, 1082),
(57, 36, 38, 6, 3, 1083),
(58, 36, 38, 6, 3, 1084),
(59, 36, 38, 7, 3, 1085),
(60, 36, 38, 7, 3, 1086),
(48, 36, 38, 8, 3, 1087),
(79, 36, 38, 8, 3, 1088),
(80, 36, 38, 9, 3, 1089),
(81, 36, 38, 9, 3, 1090),
(62, 36, 38, 10, 3, 1091),
(63, 36, 38, 10, 3, 1092),
(64, 36, 38, 1, 3, 1093),
(65, 36, 38, 2, 3, 1094),
(66, 36, 38, 1, 3, 1095),
(67, 36, 38, 2, 3, 1096),
(68, 36, 38, 3, 3, 1097),
(69, 36, 38, 4, 3, 1098),
(70, 36, 38, 3, 3, 1099),
(71, 36, 38, 3, 3, 1100),
(72, 36, 38, 1, 3, 1101),
(73, 36, 38, 2, 3, 1102),
(74, 36, 38, 3, 3, 1103),
(75, 36, 38, 1, 3, 1104),
(76, 36, 38, 2, 3, 1105),
(77, 36, 38, 5, 3, 1106),
(38, 2, 41, 3, 40, 1107),
(78, 2, 41, 0, 40, 1108),
(45, 2, 41, 3, 40, 1109),
(56, 2, 41, 4, 40, 1110),
(57, 2, 41, 3, 40, 1111),
(58, 2, 41, 4, 40, 1112),
(59, 2, 41, 3, 40, 1113),
(60, 2, 41, 4, 40, 1114),
(80, 2, 41, 2, 40, 1115),
(81, 2, 41, 3, 40, 1116),
(66, 2, 41, 3, 40, 1117),
(67, 2, 41, 2, 40, 1118),
(68, 2, 41, 3, 40, 1119),
(69, 2, 41, 2, 40, 1120),
(70, 2, 41, 3, 40, 1121),
(71, 2, 41, 2, 40, 1122),
(73, 2, 41, 2, 40, 1123),
(77, 2, 41, 3, 40, 1124),
(82, 2, 41, 3, 40, 1125),
(38, 3, 41, 3, 40, 1126),
(78, 3, 41, 0, 40, 1127),
(45, 3, 41, 3, 40, 1128),
(56, 3, 41, 4, 40, 1129),
(57, 3, 41, 3, 40, 1130),
(58, 3, 41, 4, 40, 1131),
(59, 3, 41, 3, 40, 1132),
(60, 3, 41, 4, 40, 1133),
(80, 3, 41, 2, 40, 1134),
(81, 3, 41, 3, 40, 1135),
(66, 3, 41, 3, 40, 1136),
(67, 3, 41, 2, 40, 1137),
(68, 3, 41, 3, 40, 1138),
(69, 3, 41, 2, 40, 1139),
(70, 3, 41, 3, 40, 1140),
(71, 3, 41, 2, 40, 1141),
(73, 3, 41, 2, 40, 1142),
(77, 3, 41, 3, 40, 1143),
(82, 3, 41, 3, 40, 1144),
(38, 4, 41, 3, 40, 1145),
(78, 4, 41, 0, 40, 1146),
(45, 4, 41, 3, 40, 1147),
(56, 4, 41, 4, 40, 1148),
(57, 4, 41, 3, 40, 1149),
(58, 4, 41, 4, 40, 1150),
(59, 4, 41, 3, 40, 1151),
(60, 4, 41, 4, 40, 1152),
(80, 4, 41, 2, 40, 1153),
(81, 4, 41, 3, 40, 1154),
(66, 4, 41, 3, 40, 1155),
(67, 4, 41, 2, 40, 1156),
(68, 4, 41, 3, 40, 1157),
(69, 4, 41, 2, 40, 1158),
(70, 4, 41, 3, 40, 1159),
(71, 4, 41, 2, 40, 1160),
(73, 4, 41, 2, 40, 1161),
(77, 4, 41, 3, 40, 1162),
(82, 4, 41, 3, 40, 1163),
(38, 35, 41, 3, 40, 1164),
(78, 35, 41, 0, 40, 1165),
(45, 35, 41, 3, 40, 1166),
(56, 35, 41, 4, 40, 1167),
(57, 35, 41, 3, 40, 1168),
(58, 35, 41, 4, 40, 1169),
(59, 35, 41, 3, 40, 1170),
(60, 35, 41, 4, 40, 1171),
(80, 35, 41, 2, 40, 1172),
(81, 35, 41, 3, 40, 1173),
(66, 35, 41, 3, 40, 1174),
(67, 35, 41, 2, 40, 1175),
(68, 35, 41, 3, 40, 1176),
(69, 35, 41, 2, 40, 1177),
(70, 35, 41, 3, 40, 1178),
(71, 35, 41, 2, 40, 1179),
(73, 35, 41, 2, 40, 1180),
(77, 35, 41, 3, 40, 1181),
(82, 35, 41, 3, 40, 1182),
(38, 36, 41, 3, 40, 1183),
(78, 36, 41, 0, 40, 1184),
(45, 36, 41, 3, 40, 1185),
(56, 36, 41, 4, 40, 1186),
(57, 36, 41, 3, 40, 1187),
(58, 36, 41, 4, 40, 1188),
(59, 36, 41, 3, 40, 1189),
(60, 36, 41, 4, 40, 1190),
(80, 36, 41, 2, 40, 1191),
(81, 36, 41, 3, 40, 1192),
(66, 36, 41, 3, 40, 1193),
(67, 36, 41, 2, 40, 1194),
(68, 36, 41, 3, 40, 1195),
(69, 36, 41, 2, 40, 1196),
(70, 36, 41, 3, 40, 1197),
(71, 36, 41, 2, 40, 1198),
(73, 36, 41, 2, 40, 1199),
(77, 36, 41, 3, 40, 1200),
(82, 36, 41, 3, 40, 1201),
(38, 37, 41, 3, 40, 1202),
(78, 37, 41, 0, 40, 1203),
(45, 37, 41, 3, 40, 1204),
(56, 37, 41, 4, 40, 1205),
(57, 37, 41, 3, 40, 1206),
(58, 37, 41, 4, 40, 1207),
(59, 37, 41, 3, 40, 1208),
(60, 37, 41, 4, 40, 1209),
(80, 37, 41, 2, 40, 1210),
(81, 37, 41, 3, 40, 1211),
(66, 37, 41, 3, 40, 1212),
(67, 37, 41, 2, 40, 1213),
(68, 37, 41, 3, 40, 1214),
(69, 37, 41, 2, 40, 1215),
(70, 37, 41, 3, 40, 1216),
(71, 37, 41, 2, 40, 1217),
(73, 37, 41, 2, 40, 1218),
(77, 37, 41, 3, 40, 1219),
(82, 37, 41, 3, 40, 1220);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalreport`
--

CREATE TABLE IF NOT EXISTS `evalreport` (
  `eva_rep_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eva_rep_msg` longtext NOT NULL,
  `eva_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eva_rep_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `evalreport`
--

INSERT INTO `evalreport` (`eva_rep_id`, `eva_rep_msg`, `eva_id`) VALUES
(4, 'eeee', 0),
(5, '11111111111111', 39),
(7, '', 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalresposta`
--

CREATE TABLE IF NOT EXISTS `evalresposta` (
  `eva_gru_id` int(10) NOT NULL,
  `eva_per_id` int(10) NOT NULL,
  `eva_id` int(10) NOT NULL,
  `eva_res_valor` text NOT NULL,
  PRIMARY KEY (`eva_gru_id`,`eva_per_id`,`eva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `evalresposta`
--

INSERT INTO `evalresposta` (`eva_gru_id`, `eva_per_id`, `eva_id`, `eva_res_valor`) VALUES
(2, 2, 37, 'w'),
(2, 3, 37, 'e'),
(2, 4, 37, 'rt'),
(2, 5, 37, 't'),
(2, 6, 37, 'yty'),
(3, 2, 38, 'teste 1'),
(3, 3, 38, 'teste 2'),
(3, 4, 38, 'teste 3'),
(3, 5, 38, 'teste 5'),
(3, 6, 38, 'teste 6'),
(40, 2, 41, 'lasdkjsda'),
(40, 3, 41, 'asdjs'),
(40, 4, 41, 'sadja;skdk'),
(40, 5, 41, 'asdasjlkd'),
(40, 6, 41, 'sadjasd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evalservico`
--

CREATE TABLE IF NOT EXISTS `evalservico` (
  `eva_ser_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eva_ser_nome` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `eva_pon_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eva_ser_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Extraindo dados da tabela `evalservico`
--

INSERT INTO `evalservico` (`eva_ser_id`, `eva_ser_nome`, `status`, `eva_pon_id`) VALUES
(12, 'DIREX Facilities', 1, 10),
(13, 'Security', 1, 10),
(14, 'CISS Internet / LAN', 1, 10),
(15, 'Welfare Support', 1, 10),
(16, 'Level of the Exercise', 1, 11),
(17, 'CJTF Work', 1, 11),
(18, 'JFAC Work', 1, 11),
(19, 'Intelligence Support', 1, 11),
(20, 'Weather', 1, 11),
(21, 'Safety', 1, 11),
(22, 'Planning System', 1, 11),
(23, 'Arrival / Improcessing / Inbrief', 1, 12),
(24, 'Transportation (Operactional Area)', 1, 12),
(25, 'Your own Capability', 1, 13),
(26, 'Your hability to perform the process', 1, 13),
(27, 'Your hability in Allied Ops', 1, 13),
(28, 'CJTF Facilities', 1, 14),
(29, 'Security', 1, 14),
(30, 'CISS Internet / LAN', 1, 14),
(31, 'Welfare Support', 1, 14),
(32, 'STAFF Coordination', 1, 15),
(33, 'EXCOC Coordination', 1, 15),
(34, 'DIREX Facilities', 0, 1),
(35, 'Security', 0, 1),
(36, 'CISS Internet / LAN', 0, 1),
(37, 'Welfare Support', 0, 1),
(38, 'Level of the Exercise', 1, 2),
(39, 'CJTF Work', 0, 2),
(40, 'JFAC Work', 0, 2),
(41, 'Intelligence Support', 0, 2),
(42, 'Weather', 0, 2),
(43, 'Safety', 0, 2),
(44, 'Planning System (ICC/War Game FENIX)', 0, 2),
(45, 'Arrival / Improcessing / Inbrief', 0, 3),
(46, 'Transportation (Operactional Area)', 0, 3),
(47, 'Your own Capability', 0, 4),
(48, 'Your hability to perform C2 processes BEFORE Cruzex 2012', 0, 4),
(49, 'Your hability in Allied Ops', 0, 3),
(50, 'CJTF Facilities', 0, 3),
(51, 'Security', 0, 4),
(52, 'CISS Internet / LAN (Local Area Network) / e-mail', 0, 3),
(53, 'Welfare Support', 0, 4),
(54, 'STAFF Coordination', 0, 5),
(55, 'EXCOC Coordination', 0, 5),
(56, 'FLIGHT SUPPORT', 1, 3),
(57, 'Initial Identification (badges)', 0, 3),
(58, 'Lodging', 0, 3),
(59, 'AIRBASE SUPPORT (security, meals, welfare, accessibilty and medical facilities)', 1, 3),
(60, 'Liaison Officers', 0, 3),
(61, 'Your hability to work within a combined exercise/operation', 0, 4),
(62, 'Battle Rhythm', 1, 34),
(63, 'Free Weekend (s)', 1, 34),
(64, 'Daily Working Hours', 1, 34),
(65, '"I had enough time to assimilate most of the lessons learned DURING the exercise"', 1, 34),
(66, 'Internet', 0, 35),
(67, 'LAN (Local Area Network)', 0, 35),
(68, 'Web Site', 0, 35),
(69, 'e-mail Express', 0, 35),
(70, 'CIS SUPPORT (chat, email, internet, LAN, Titan System and web site)', 1, 35),
(71, 'TITÃƒ System', 0, 35),
(72, 'Planning System (ICC/War Game FENIX)', 0, 36),
(73, 'Intelligence Support', 1, 36),
(74, 'CAOC Coordination', 0, 36),
(75, 'C2 Process', 0, 36),
(76, 'CFAC Meetings', 0, 36),
(77, 'Team Work within your cell', 1, 36),
(78, 'Planning Conferences and Meetings - IPC, FPC', 1, 2),
(79, 'Your hability to perform C2 processes AFTER Cruzex 2012', 0, 4),
(80, 'BEFORE CRUZEX 2013', 1, 4),
(81, 'AFTER CRUZEX 2013', 1, 4),
(82, 'EXIN AND SPINS', 1, 37),
(83, 'ACTIONS AGAINST YOUR DOCTRINE', 1, 37);

-- --------------------------------------------------------

--
-- Estrutura da tabela `facilidade`
--

CREATE TABLE IF NOT EXISTS `facilidade` (
  `fac_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fac_nome` varchar(255) NOT NULL,
  `fac_msg` text,
  `fac_url` varchar(255) DEFAULT NULL,
  `fac_site` varchar(255) DEFAULT NULL,
  `sta_id` int(1) DEFAULT '1',
  `are_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`fac_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `facilidade`
--

INSERT INTO `facilidade` (`fac_id`, `fac_nome`, `fac_msg`, `fac_url`, `fac_site`, `sta_id`, `are_id`) VALUES
(3, 'Teste3', '', '', 'www.olh.com', 1, 0),
(4, 'Teste4', '', '', 'www.olh.com', 0, 8),
(5, 'Teste', '', '', 'www.olh.com', 0, 2),
(6, 'Teste2', '', 'midia/facilidade/capturadetelade2013_10_1913_16_16.png', '', 0, 6),
(7, 'Teste45', '', '', 'r', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `facilidadearea`
--

CREATE TABLE IF NOT EXISTS `facilidadearea` (
  `fac_are_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fac_are_nome` varchar(255) NOT NULL,
  `sta_id` int(1) DEFAULT '1',
  PRIMARY KEY (`fac_are_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `facilidadearea`
--

INSERT INTO `facilidadearea` (`fac_are_id`, `fac_are_nome`, `sta_id`) VALUES
(2, 'Briefings', 1),
(3, 'Network Maps', 0),
(4, 'Printers Maps', 0),
(5, 'Helpdesk Maps', 0),
(6, 'Maps', 1),
(8, 'Natal AFB - Facilities Handbook', 1),
(10, 'Teste', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `faq_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faq_nome` varchar(255) NOT NULL,
  `faq_url` varchar(255) NOT NULL,
  `faq_msg` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `gru_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gru_nome` varchar(200) DEFAULT NULL,
  `gru_id2` int(10) unsigned DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`gru_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- Extraindo dados da tabela `grupo`
--

INSERT INTO `grupo` (`gru_id`, `gru_nome`, `gru_id2`, `status`) VALUES
(60, 'EXDIR', 0, 0),
(61, 'DEPUTY EXDIR', 60, 0),
(62, 'EXERCISE CONTROL GROUP', 60, 0),
(63, 'EVALUATION', 0, 0),
(64, 'SEGURANÃ‡A', 0, 1),
(65, 'PLANS CELL', 64, 0),
(66, 'CURRENT OPS', 64, 0),
(67, 'GARAGEM', 0, 1),
(68, 'COMAO SUPPORT', 64, 0),
(69, 'MATERIAL', 64, 0),
(70, 'SAR', 64, 0),
(71, 'FLIGHT SAFETY', 0, 0),
(72, 'SERVIÃ‡OS GERAIS', 0, 1),
(73, 'FAE 2 - AIR UNITS', 72, 0),
(74, 'FAE 3 - AIR UNITS', 72, 0),
(75, 'FAE 5 - AIR UNITS', 72, 0),
(76, 'REAL LIFE', 0, 0),
(77, 'LOGISTICS', 76, 0),
(78, 'IT / ATC/COMM', 76, 0),
(79, 'FORCE PROTECTION', 76, 0),
(80, 'GARAGEM', 0, 0),
(81, 'SETOR DE PESSOAL', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `helpdeskprioridade`
--

CREATE TABLE IF NOT EXISTS `helpdeskprioridade` (
  `pri_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pri_nome` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `pri_cor` varchar(20) DEFAULT NULL,
  KEY `pri_id` (`pri_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `helpdeskprioridade`
--

INSERT INTO `helpdeskprioridade` (`pri_id`, `pri_nome`, `status`, `pri_cor`) VALUES
(1, '1 - Urgente', 1, 'FF0000'),
(2, '2 - Alta', 1, 'FF801F'),
(3, '3 - Normal', 1, '00CC66'),
(4, 'Normal/Baixa', 0, 'FFCC66'),
(5, '4 - Baixa', 1, 'C2C2C2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `idioma`
--

CREATE TABLE IF NOT EXISTS `idioma` (
  `idi_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idi_nome` varchar(100) NOT NULL,
  `idi_valor1` varchar(255) DEFAULT NULL,
  `idi_valor2` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `idi_valor3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=490 ;

--
-- Extraindo dados da tabela `idioma`
--

INSERT INTO `idioma` (`idi_id`, `idi_nome`, `idi_valor1`, `idi_valor2`, `status`, `idi_valor3`) VALUES
(1, 't_principal', 'Principal', 'Home', 1, 'Principal'),
(2, 't_facilidades', 'Facilidades', 'Facilities', 1, 'Comodidades'),
(3, 't_meteorologia', 'Meteorologia', 'Meteorology', 1, 'MeteorologÃ­a'),
(4, 't_listtel', 'Lista telefÃ´nica', 'Phonebook', 1, 'Directorio'),
(5, 't_documentos', 'Documentos', 'Documents', 1, 'Documentos'),
(6, 't_inteligencia', 'InteligÃªncia', 'Intelligence', 0, 'Inteligencia'),
(7, 't_noticias', 'NotÃ­cias', 'News', 1, 'Noticias'),
(8, 't_chamado', 'Chamado', 'Request', 1, 'Llamado'),
(9, 't_local', 'LocalizaÃ§Ã£o', 'Location', 1, 'UbicaciÃ³n'),
(10, 't_pais', 'PaÃ­s', 'Country', 1, 'PaÃ­s'),
(11, 't_nome', 'Nome', 'Name', 1, 'Nombre'),
(12, 't_posto', 'Posto', 'Rank', 1, 'Patente'),
(13, 't_om', 'OrganizaÃ§Ã£o', 'Organization', 1, 'OrganizaciÃ³n'),
(14, 't_usuario', 'UsuÃ¡rio', 'User', 1, 'Usuario'),
(15, 't_status', 'Status', 'Status', 1, 'Estado'),
(30, 't_statuscha', 'Status do Chamado', 'Call Status', 1, 'Estado Llamado'),
(31, 't_setor', 'Ãrea de AtuaÃ§Ã£o', 'Performance Area', 1, 'Ãrea de Conocimiento'),
(33, 't_dataini', 'Data de InÃ­cio', 'Start date', 1, 'Fecha de Inicio'),
(34, 't_datater', 'Data de TÃ©rmino', 'End date', 1, 'Fecha de finalizaciÃ³n'),
(37, 't_quest', 'QuestionÃ¡rio', 'Questionnaire', 1, 'Cuestionario'),
(39, 't_administracao', 'AdministraÃ§Ã£o', 'Administration', 1, 'AdministraciÃ³n'),
(40, 't_prod', 'Produtos operacionais', 'Operations Products', 1, 'Productos operativo'),
(41, 't_visu', 'Visualizar Todos', 'View All', 1, 'Ver Todos'),
(42, 't_abrir', 'Abrir Chamado', 'Open the request', 1, 'Abra la llamado'),
(43, 't_fechar', 'Fechar chamado', 'Close call', 1, 'Cerrar Llamado'),
(44, 't_ult_doc', 'Ãšltimos Documentos', 'Last Documents', 1, 'Ãšltimos Documentos'),
(45, 't_arvo_doc', 'Ãrvore de documentos', 'Tree of documents', 1, 'Estructura del documento'),
(46, 't_listcha', 'Lista de Chamados', 'List Called', 1, 'Llamado lista'),
(47, 't_nomegue', 'Nome de guerra', 'Tag name', 1, 'Nombre Guerra'),
(48, 't_dadoscada', 'Dados Cadastrais', 'Cadastral Data', 1, 'Datos Catastrales'),
(49, 't_data', 'Data', 'Date', 1, 'Fecha'),
(50, 't_hora', 'Hora', 'Hour', 1, 'Tiempo'),
(51, 't_desc', 'DescriÃ§Ã£o do Chamado', 'Description of the Request', 1, 'DescripciÃ³n de la Llamado'),
(52, 't_painel', 'Painel de Controle', 'Control Painel', 1, 'Panel de control'),
(53, 't_sair', 'Sair do Sistema', 'Exit  System', 1, 'Salir del Sistema'),
(54, 't_page', 'PÃ¡gina do ExercÃ­cio', 'Exercise Page', 1, 'Inicio Ejercicio'),
(55, 't_pagext', 'PÃ¡gina Externa', 'External Page', 1, 'PÃ¡gina Externa'),
(56, 't_pageadm', 'PÃ¡gina Administrativa', 'Administrative Page', 1, 'PÃ¡gina Administrativo'),
(57, 't_sai', 'Sair', 'Exit', 1, 'Salida'),
(58, 't_campo', 'Campos ObrigatÃ³rios', 'Required Fields', 1, 'Los campos necesarios'),
(59, 't_fun', 'FunÃ§Ã£o', 'Function', 1, 'FunciÃ³n'),
(60, 't_fone', 'Telefone', 'Phone', 1, 'TelÃ©fono'),
(61, 't_ram', 'Ramal', 'Telephone extension', 1, 'TelÃ©fono extensiÃ³n'),
(62, 't_sen', 'Senha', 'Password', 1, 'ContraseÃ±a'),
(63, 't_tit', 'TÃ­tulo', 'Title', 1, 'TÃ­tulo'),
(64, 't_ingles', 'InglÃªs', 'English', 1, 'InglÃ©s'),
(65, 't_portugues', 'PortuguÃªs', 'Portuguese', 1, 'PortuguÃ©s'),
(66, 't_titcon', 'TÃ­tulo e ConteÃºdo', 'Title and Contents', 1, 'TÃ­tulo y contenido'),
(67, 't_salvar', 'Salvar', 'Save', 1, 'Guardar'),
(68, 't_voltar', 'Voltar', 'Return', 1, 'Volver'),
(69, 't_incluir', 'Incluir', 'Include', 1, 'Incluir'),
(70, 't_excluir', 'Excluir', 'Delete', 1, 'Eliminar'),
(71, 't_deseja', 'VocÃª realmente deseja sair do sistema?', 'Do you really want to exit the system ?', 1, 'Â¿De verdad quieres dejar el sistema?'),
(72, 't_conectar', 'Conectar', 'Connect', 1, 'Conectar'),
(73, 't_entrar', 'Entrar', 'Enter', 1, 'Entrar'),
(74, 't_pag_exercicio', 'PÃ¡gina do ExercÃ­cio', 'Home Exercise', 1, 'Inicio Ejercicio'),
(75, 't_pag_servico', 'PÃ¡gina de ServiÃ§os', 'Services Page', 1, 'Servicios de la pÃ¡gina'),
(76, 't_item', 'Itens', 'Items', 0, 'ArtÃ­culos'),
(77, 't_cor', 'Cores', 'Colors', 1, 'Colores'),
(78, 't_fenix', 'FÃªnix', 'Phoenix', 1, 'FÃªnix'),
(79, 't_detacha', 'Detalhes do Chamado', 'Request details', 1, 'Detalles del llamado'),
(80, 't_deta', 'Detalhes', 'Details', 1, 'Detalles'),
(81, 't_facilidade', 'Facilidades', 'Facilities', 1, 'Comodidades'),
(82, 't_atual', 'Atualizar AÃ§Ãµes', 'Upgrade Actions', 1, 'Actualizar las acciones'),
(83, 't_hist', 'HistÃ³rico', 'History', 1, 'Historia'),
(84, 't_fech', 'Fechar', 'Close', 1, 'Cerrar'),
(85, 't_impri', 'Imprimir', 'Print', 1, 'Imprimir'),
(86, 't_salvalt', 'Salvar AlteraÃ§Ãµes', 'Save Changes', 1, 'Guardar cambios'),
(87, 't_atudados', 'Atualizar Dados Cadastrais', 'Update cadastral data', 1, 'Actualizar los datos catastrales'),
(88, 't_saiadm', 'Sair da Ãrea Administrativa', 'Exit of Administrative Area', 1, 'Salir Ãrea Administrativa'),
(89, 't_acao', 'AÃ§Ã£o', 'Action', 1, 'AcciÃ³n'),
(90, 't_numecha', 'NÃºmero do Chamado', 'Call Number', 1, 'NÃºmero llamado'),
(91, 't_atualiza', 'AtualizaÃ§Ã£o', 'Update', 1, 'Actualizar'),
(92, 't_sejabem', 'Seja Bem Vindo!', 'Welcome!', 1, 'Bienvenido!!'),
(93, 't_manha', 'ManhÃ£', 'Morning', 1, 'MaÃ±ana'),
(94, 't_tarde', 'Tarde', 'Afternoon', 1, 'Tarde'),
(95, 't_erro_conexao_ldap', 'ERRO!!! NÃ£o foi possÃ­vel se conectar com a base de dados do LDAP!', 'ERROR!! Unable to connect to database LDAP!', 1, 'ERROR! No se pudo conectar a la base de datos LDAP!'),
(96, 't_noite', 'Noite', 'Night', 1, 'Noche'),
(97, 't_login_incorreto', 'ERRO! Login incorreto!', 'ERROR! Login incorrect!', 1, 'ERROR! Login incorrecto'),
(98, 't_acesso_negado', 'ERRO!!! Acesso negado Ã  pÃ¡gina solicitada!', 'ERROR!! Denied access to the requested page!', 1, 'ERROR!! Les niega el acceso a la pÃ¡gina solicitada!'),
(99, 't_excluir_definitivamente', 'Excluir Definitivamente', 'Delete Forever', 1, 'Eliminar para Siempre'),
(100, 't_recuperar_item', 'Recuperar Item', 'Recover Item', 1, 'Recuperar elemento'),
(101, 't_atualizar_idiomas', 'Atualizar todos os idiomas', 'Update all languages', 1, 'Actualizar todos los idiomas'),
(102, 't_bra', 'Brasil', 'Brazil', 1, 'Brasil'),
(103, 't_edita', 'Editar', 'Edit', 1, 'Editar'),
(104, 't_busca', 'Buscar', 'Search', 1, 'Buscar'),
(105, 't_detahelp', 'Detalhes do Chamado Helpdesk', 'Request Details Helpdesk', 1, 'Detalles del llamado Helpdesk'),
(106, 't_grupo_atuacao', 'Grupo de AtuaÃ§Ã£o', 'Action Group', 1, 'Grupo de AcciÃ³n'),
(107, 't_nome_guerra_full', 'Nome de Guerra ou Nome Completo', 'Full name or Tag name', 1, 'Nombre Completo o el Nombre de Guerra'),
(108, 't_grupo', 'Grupo', 'Group', 1, 'Grupo'),
(109, 't_espanhol', 'Espanhol', 'Spanish', 1, 'EspaÃ±ol'),
(110, 't_realizar_pesquisa', 'Realizar pesquisa', 'Conduct Research', 1, 'Realizar pesquisa'),
(111, 't_selecionar_dados_pesquisa', 'Favor selecionar os dados abaixo para a realizaÃ§Ã£o da pesquisa', 'Please select the data below to the research', 1, 'Seleccione los siguientes datos para la investigaciÃ³n'),
(112, 't_tabela_pontuacao', '(10-9) Excelente (8-7) Muito bom (6-5) Bom (4-3) Precisa melhorar (2-1) InsatisfatÃ³rio (N/A) NÃ£o aplicÃ¡vel', '(10-9) Excellent (8-7) Very Good (6-5) Good (4-3) Need improvement (2-1) Not satisfactory (N/A) Not applicable', 1, '(10-9) Excelente (8-7) Muy Bueno (6-5) Bueno (4-3) Necesidad de mejorar (2-1) Poco satisfactorio (N/A) No aplicable'),
(113, 't_pontuacao', 'PontuaÃ§Ã£o', 'Evaluation Score', 1, 'Puntuacion'),
(114, 't_resposta', 'Resposta', 'Answer', 1, 'Responder'),
(115, 't_pergunta', 'Pergunta', 'Question', 1, 'Pregunta'),
(116, 't_selecione_grupo', 'Selecione o grupo!', 'Select your group!', 1, 'Seleccionar el grupo!'),
(117, 't_detaciss', 'Detalhes Ciss', 'Ciss Details', 1, 'Ciss Detalle'),
(118, 't_relalize', 'Realize o Download do Documento', 'Perform the Download Document', 1, 'Realice el documento Descargar'),
(119, 't_ramo', 'Ramo', 'Branch', 1, 'Ramo'),
(120, 't_detadoc', 'Detalhes de Documento', 'Documents details', 1, 'Detalles del Documento'),
(121, 't_detaintel', 'Detalhes de Documento da InteligÃªncia', 'Details of Document Intelligence', 1, 'Detalles del documento de la Inteligencia'),
(122, 't_inesp', 'Inesp', 'Spin', 1, 'Inesp'),
(123, 't_alteradosu', 'Alterado com Sucesso!', 'Successfully Changed!', 1, 'Cambiado con Ã‰xito!'),
(124, 't_infcode', 'ERRO!! Informe o seu CODE!', 'ERROR! Tell your CODE!', 1, 'ERROR! Dile a tu cÃ³digo!'),
(125, 't_infonome', 'ERRO!! Informe o seu nome!', 'ERROR! Tell your name!', 1, 'ERROR! DÃ­gale a su nombre!'),
(126, 't_infoloc', 'ERRO! Selecione a localizaÃ§Ã£o !', 'ERROR! Select the location!', 1, 'ERROR! Seleccione la ubicaciÃ³n!'),
(127, 't_segvoo', 'SeguranÃ§a de Voo', 'Flight Safety', 1, 'Seguridad de Vuelo'),
(128, 't_selecione_pontuacao', 'Selecione a PontuaÃ§Ã£o', 'Select Score', 1, 'Seleccione Score'),
(129, 't_erro_info_titulo', 'ERRO!!! Informe o titulo!', 'ERROR!!! Tell your title!', 1, 'ERROR!!! Introduzca el tÃ­tulo'),
(130, 't_erro_info_desc', 'ERRO!!! Informe a descriÃ§Ã£o!', 'ERROR!!! Enter the description!', 1, 'ERROR!!! Introduzca la descripciÃ³n!'),
(131, 't_confirmar_pesquisa', 'Confirmar pesquisa', 'Confirm search', 1, 'Confirme bÃºsqueda'),
(132, 't_fazer_nova_pesquisa', 'Fazer nova pesquisa', 'New search', 1, 'Nueva bÃºsqueda'),
(133, 't_erro_select_item', 'ERRO!!! Selecione pelo menos um item!', 'ERROR!! Select at least one item!', 1, 'ERROR! Seleccione al menos un artÃ­culo!'),
(134, 't_documento_arvore', 'Ãrvore de documentos', 'Documents tree', 1, 'Estructura del documento'),
(135, 't_documento_lista', 'Lista de Documentos', 'List of documents', 1, 'Lista de documentos'),
(136, 't_desabilitado', 'Desabilitado com sucesso!', 'Successfully Disabled!', 1, 'Inhabilitado satisfactoriamente!'),
(137, 't_deletado', 'Deletado com sucesso!', 'Successfully deleted!', 1, 'Eliminado con Ã©xito!'),
(138, 't_recuperado', 'Recuperado com sucesso!', 'Successfully recovered!', 1, 'Recuperado con Ã©xito!'),
(139, 't_posto_nome', 'Posto e Nome', 'Rank and Tag Name', 1, 'Nombre y Patente'),
(140, 't_proximo', 'PrÃ³ximo', 'Next', 1, 'PrÃ³ximo'),
(141, 't_intel_arvore', 'Intel Ãrvore', 'Tree Intel', 1, 'Intel Ãrbol'),
(142, 't_intel_lista', 'Intel Lista de Documentos', 'Intel List', 1, 'Intel Lista de Documentos'),
(143, 't_pesquisa_realizada_sucesso', 'Pesquisa realizada com sucesso', 'Research conducted successfully', 1, 'Las investigaciones realizadas con Ã©xito'),
(144, 't_erro_usuario_realizou_pesquisa', 'ERRO!! O usuÃ¡rio jÃ¡ realizou a pesquisa!', 'ERROR!! The user has already done the research!', 1, 'ERROR! El usuario ya ha hecho la investigaciÃ³n!'),
(145, 't_faq', 'DÃºvidas frequentes', 'FAQ (Frequently Asked Questions)', 1, 'Preguntas mÃ¡s frecuentes'),
(146, 't_nomecompleto', 'Nome Completo', 'Full Name', 1, 'Nombre Completo'),
(147, 't_selecione_perfil', 'Selecione o perfil!', 'Select the profile!', 1, 'Seleccione el perfil!'),
(148, 't_inserido_sucesso', 'Inserido com sucesso!', 'Successfully inserted!', 1, 'Insertado con Ã©xito!'),
(149, 't_erro_usucadastrado', 'ERRO!!! O usuÃ¡rio com o CODE informado jÃ¡ esta cadastrado!', 'ERROR!! The user with the CODE informed already registered!', 1, 'ERROR! El usuario con el CÃ“DIGO informado registrado ya!'),
(150, 't_erro_tamanho_arq', 'Erro! Verifique o tamanho do arquivo!', 'Error! Check the file size!', 1, 'Error! Compruebe el tamaÃ±o del archivo!'),
(151, 't_erro_item_inserido', 'ERRO!!! O item jÃ¡ foi inserido anteriormente!', 'ERROR!! The item has been previously entered!', 1, 'ERROR! El artÃ­culo ha sido introducido previamente!'),
(152, 't_erro_area_atuacao', 'ERRO!!! Informe a Ã¡Ârea de atuaÃ§Ã£o!', 'ERROR!! Tell your area of â€‹â€‹expertise!', 1, 'ERROR! Seleccione su Ã¡rea de especializaciÃ³n!'),
(153, 't_erro_data_ini', 'ERRO!!! Informe a data de inÃ­cio!', 'ERROR! Enter the start date!', 1, 'ERROR! Introduzca la fecha de inicio!'),
(154, 't_erro_hora_ini', 'ERRO!!! Informe a hora de inÃ­Â­cio!', 'ERROR!! Enter the time at the onset!', 1, 'ERROR! Introduzca la hora en el inicio!'),
(155, 't_erro_select_status', 'ERRO!!! Selecione o status!', 'ERROR!! Select the status!', 1, 'ERROR! Seleccione el estado!'),
(156, 't_imediato_report', 'RelatÃ³rio Imediato da AvaliaÃ§Ã£o', 'Immediate Evaluation Report', 1, 'RelatÃ³rio Imediato do Evaluation'),
(157, 't_clique_aqui', 'Clique aqui', 'Click here', 1, 'Haga clic aquÃ­'),
(158, 't_imediato_report_msg', 'Favor escrever suas observaÃ§Ãµes e comentÃ¡rios', 'Please forward your observations / comments', 1, 'Por favor escriba sus observaciones y comentarios'),
(159, 't_info_membro', 'ERRO!!! Informe o Membro do ExercÃ­Â­cio!', 'ERROR!! Tell your Member of the exercise!', 1, 'ERROR! DÃ­gale a su Miembro del ejercicio!'),
(160, 't_erro_nome_guerra', 'ERRO!!! Informe o nome de guerra!', 'ERROR!! Enter the tag name!', 1, 'ERROR! Introduzca el nombre de la guerra!'),
(161, 't_erro_selecione_perfil', 'ERRO!!! Selecione um perfil!', 'ERROR!! Select a profile!', 1, 'ERROR! Seleccione un perfil!'),
(162, 't_erro_select_grupo', 'ERRO!!! Selecione o grupo!', 'ERROR!! Select the group!', 1, 'ERROR! Seleccione el grupo!'),
(163, 't_erro_select_arquivo', 'ERRO!!! Selecione o arquivo!', 'ERROR!! Select the file!', 1, 'ERROR! Seleccione el archivo!'),
(173, 't_idioma', 'Idioma', 'Language', 1, 'Idioma'),
(175, 't_idioma_editar', 'Idioma :: Editar', 'Language :: Edit', 1, 'Idioma :: Editar'),
(176, 't_paginas', 'PÃ¡ginas', 'Pages', 1, 'PÃ¡ginas'),
(177, 't_paginas_alterar', 'PÃ¡ginas :: Editar', 'Pages :: Edit', 1, 'PÃ¡ginas :: Editar'),
(178, 't_menus_incluir', 'Menus :: Incluir', 'Menus :: Include', 1, 'MenÃºs :: Incluir'),
(179, 't_menus', 'Menus', 'Menus', 1, 'MenÃºs'),
(180, 't_botoes_lixeira', 'BotÃµes :: Lixeira', 'Buttons :: Trash', 1, 'Botones :: Papelera'),
(181, 't_clientes', 'Manning', 'Manning', 1, 'Manning'),
(182, 't_clientes_atualizar', 'Manning :: Atualizar', 'Manning :: Update', 1, 'Manning :: Actualizar'),
(183, 't_clientes_lixeira', 'Manning :: Lixeira', 'Manning :: Trash', 1, 'Manning :: Papelera'),
(184, 't_dadosdoprojeto', 'Dados do Projeto', 'Project Data', 1, 'Datos del Proyecto'),
(185, 't_dadosdousuario', 'Dados do usuÃ¡rio', 'User data', 1, 'Los datos de usuario'),
(187, 't_helpdesk', 'Helpdesk', 'Helpdesk', 1, 'Helpdesk'),
(188, 't_helpdesk_alterar', 'Helpdesk :: Editar', 'Helpdesk :: Edit', 1, 'Helpdesk :: Editar'),
(189, 't_helpdesk_incluir', 'Helpdesk :: Incluir', 'Helpdesk :: Include', 1, 'Helpdesk :: Incluir'),
(190, 't_ciss', 'CISS', 'CISS', 1, 'CISS'),
(191, 't_ciss_incluir', 'CISS :: INCLUIR', 'CISS :: INCLUDE', 1, 'CISS :: INCLUIR'),
(192, 't_ciss_editar', 'CISS :: EDITAR', 'CISS :: EDIT', 1, 'CISS :: EDITAR'),
(193, 't_ciss_Ãrea', 'CISS :: ÃREA', 'CISS :: AREA', 1, 'CISS :: ÃREA'),
(194, 't_ciss_Ãrea_incluir', 'CISS :: ÃREA :: INCLUIR', 'CISS :: AREA :: INCLUDE', 1, 'CISS :: ÃREA ::INCLUIR'),
(195, 't_ciss_Ãrea_editar', 'CISS :: ÃREA :: EDITAR', 'CISS :: AREA :: EDIT', 1, 'CISS :: ÃREA :: EDITAR'),
(196, 't_ciss_status', 'CISS :: STATUS', 'CISS :: STATUS', 1, 'CISS :: ESTADO'),
(197, 't_ciss_status_incluir', 'CISS :: STATUS :: INCLUIR', 'CISS :: STATUS :: INCLUDE', 1, 'CISS :: ESTADO :: INCLUIR'),
(198, 't_ciss_status_editar', 'CISS :: STATUS :: EDITAR', 'CISS :: STATUS :: EDIT', 1, 'CISS :: ESTADO :: EDITAR'),
(199, 't_paginas_incluir', 'PÃ¡ginas : Incluir', 'Pages : Include', 1, 'PÃ¡ginas : Incluir'),
(202, 't_paineldecontrole', 'Painel de Controle', 'Control Painel', 1, 'Panel de control'),
(212, 't_perfil', 'Perfil', 'Profile', 1, 'Perfil'),
(213, 't_perfil_lixeira', 'Perfil :: Lixeira', 'Profile :: Trash', 1, 'Perfil :: Papelera'),
(214, 't_perfildeacesso_alterar', 'Perfil de acesso :: Editar', 'Access Profile :: Edit', 1, 'Perfil de acceso :: Editar'),
(215, 't_perfil_alterar', 'Perfil :: Editar', 'Profile :: Edit', 1, 'Perfil :: Editar'),
(216, 't_perfil_incluir', 'Perfil :: Incluir', 'Profile :: Include', 1, 'Perfil :: Incluir'),
(217, 't_botoes', 'BotÃµes', 'Buttons', 1, 'Botones'),
(218, 't_botoes_editar', 'BotÃµes :: Editar', 'Buttons :: Edit', 1, 'Botones :: Editar'),
(219, 't_botoes_incluir', 'BotÃµes :: Incluir', 'Buttons :: Include', 1, 'Botones :: Incluir'),
(220, 't_tipodepaginas', 'Tipo de PÃ¡ginas', 'Type of pages', 1, 'Tipo de PÃ¡ginas'),
(221, 't_tipodepaginas_alterar', 'Tipo de PÃ¡ginas :: Alterar', 'Type of pages :: Alter', 1, 'Tipo de PÃ¡ginas :: Cambiar'),
(222, 't_tiposdepaginas_lixeira', 'Tipos de pÃ¡ginas :: Lixeira', 'Types of pages :: Trash', 1, 'Tipos de pÃ¡ginas :: Papelera'),
(223, 't_tipodepaginas_incluir', 'Tipo de PÃ¡ginas :: Incluir', 'Type of pages :: Include', 1, 'Tipo de PÃ¡ginas :: Incluir'),
(225, 't_item_lixeira', 'Item :: Lixeira', 'Item :: Lixeira', 0, 'Item :: Lixeira'),
(227, 't_itensdemenu', 'Itens de menu', 'Menu Items', 1, 'ArtÃ­culos del menÃº'),
(228, 't_itemdemenu_lixeira', 'Item de menu :: Lixeira', 'Item de menu :: Lixeira', 0, 'Item de menu :: Lixeira'),
(230, 't_itensdemenu_lixeira', 'Itens de menu :: Lixeira', 'Menu Items :: Trash', 1, 'ArtÃ­culos del menÃº :: Papelera'),
(231, 't_itensdemenu_alterar', 'Itens de menu :: Editar', 'Menu Items :: Edit', 1, 'ArtÃ­culos del menÃº :: Editar'),
(232, 't_inteligencia_incluir', 'InteligÃªncia :: Incluir', 'InteligÃªncia :: Incluir', 0, 'InteligÃªncia :: Incluir'),
(233, 't_inteligencia_editar', 'InteligÃªncia :: Editar', 'InteligÃªncia :: Editar', 0, 'InteligÃªncia :: Editar'),
(234, 't_itensdemenu_incluir', 'Itens de menu :: Incluir', 'Menu Items :: Include', 1, 'ArtÃ­culos del menÃº :: Incluir'),
(235, 't_menus_alterar', 'Menus :: Editar', 'Menus :: Edit', 1, 'MenÃºs :: Editar'),
(236, 't_avaliacao', 'AvaliaÃ§Ã£o', 'Evaluation', 1, 'EvaluaciÃ³n'),
(237, 't_inteligencia_Ãrea', 'InteligÃªncia :: Ãrea', 'Intelligence :: Area', 1, 'Inteligencia :: Ãrea'),
(238, 't_inteligencia_Ãrea_incluir', 'InteligÃªncia :: Ãrea :: Incluir', 'Intelligence :: Area :: Include', 1, 'Inteligencia :: Ãrea :: Incluir'),
(239, 't_inteligencia_Ãrea_editar', 'InteligÃªncia :: Ãrea :: Editar', 'Intelligence :: Area :: Edit', 1, 'Inteligencia :: Ãrea :: Editar'),
(240, 't_documentos_incluir', 'Documentos :: Incluir', 'Documents :: Include', 1, 'Documentos :: Incluir'),
(241, 't_documentos_editar', 'Documentos :: Editar', 'Documents :: Edit', 1, 'Documentos :: Editar'),
(242, 't_documentos_Ãrea', 'Documentos :: Ãrea', 'Documents :: Area', 1, 'Documentos :: Ãrea'),
(243, 't_documentos_Ãrea_incluir', 'Documentos :: Ãrea :: Incluir', 'Documents :: Area :: Include', 1, 'Documentos :: Ãrea :: Incluir'),
(244, 't_documentos_Ãrea_Ãrea', 'Documentos :: Ãrea :: Ãrea', 'Documents :: Area :: Area', 1, 'Documentos :: Ãrea :: Ãrea'),
(245, 't_documentos_Ãrea_editar', 'Documentos :: Ãrea :: Editar', 'Documents :: Area :: Edit', 1, 'Documentos :: Ãrea :: Editar'),
(246, 't_facilidades_incluir', 'Facilidades :: Incluir', 'Facilities :: Include', 1, 'Comodidades :: Incluir'),
(247, 't_facilidades_editar', 'Facilidades :: Editar', 'Facilities :: Edit', 1, 'Comodidades :: Editar'),
(248, 't_manning', 'Manning', 'Manning', 1, 'Manning'),
(249, 't_facilidades_Ãrea', 'Facilidades :: Ãrea', 'Facilities :: Area', 1, 'Comodidades :: Ãrea'),
(250, 't_facilidades_Ãrea_incluir', 'Facilidades :: Ãrea :: Incluir', 'Facilities :: Area :: Include', 1, 'Comodidades :: Ãrea :: Incluir'),
(251, 't_facilidades_Ãrea_editar', 'Facilidades :: Ãrea :: Editar', 'Facilities :: Area :: Edit', 1, 'Comodidades :: Ãrea :: Editar'),
(252, 't_manning_editar', 'Manning :: Editar', 'Manning :: Edit', 1, 'Manning :: Editar'),
(253, 't_manning_lixeira', 'Manning :: Lixeira', 'Manning :: Trash', 1, 'Manning :: Papelera'),
(254, 't_meteorologia_incluir', 'Meteorologia :: Incluir', 'Meteorology :: Include', 1, 'MeteorologÃ­a :: Incluir'),
(255, 't_meteorologia_editar', 'Meteorologia :: Editar', 'Meteorology :: Edit', 1, 'MeteorologÃ­a :: Editar'),
(256, 't_meteorologia_Ãrea', 'Meteorologia :: Ãrea', 'Meteorology :: Area', 1, 'MeteorologÃ­a :: Ãrea'),
(257, 't_meteorologia_Ãrea_incluir', 'Meteorologia :: Ãrea :: Incluir', 'Meteorology :: Area :: Include', 1, 'MeteorologÃ­a :: Ãrea :: Incluir'),
(258, 't_meteorologia_Ãrea_editar', 'Meteorologia :: Ãrea :: Editar', 'Meteorology :: Area :: Edit', 1, 'MeteorologÃ­a :: Ãrea :: Editar'),
(259, 't_setordeatuacao', 'Setor de atuaÃ§Ã£o', 'Business Sector', 1, 'Sector de actividad'),
(260, 't_setordeatuacao_alterar', 'Setor de atuaÃ§Ã£o :: Alterar', 'Business Sector :: Alter', 1, 'Sector de actividad :: Cambiar'),
(261, 't_setordeatuacao_incluir', 'Setor de AtuaÃ§Ã£o :: Incluir', 'Business Sector :: Include', 1, 'Sector de actividad :: Incluir'),
(262, 't_statusdechamados', 'Status de Chamados', 'Status of Request', 1, 'Estado Llamado'),
(263, 't_statusdechamados_alterar', 'Status de Chamados :: Alterar', 'Status of Request :: Alter', 1, 'Estado Llamado :: Cambiar'),
(264, 't_om_incluir', 'Om :: Incluir', 'Om :: Include', 1, 'Om :: Incluir'),
(265, 't_om_alterar', 'Om :: Editar', 'Om :: Edit', 1, 'Om :: Editar'),
(266, 't_pais_incluir', 'PaÃ­s :: Incluir', 'Country :: Include', 1, 'PaÃ­s :: Incluir'),
(267, 't_pais_alterar', 'PaÃ­s :: Editar', 'Country :: Edit', 1, 'PaÃ­s :: Editar'),
(268, 't_posto_incluir', 'Posto :: Incluir', 'Rank :: Include', 1, 'Patente :: Incluir'),
(269, 't_posto_alterar', 'Posto :: Editar', 'Rank :: Edit', 1, 'Patente :: Editar'),
(270, 't_local_incluir', 'Local :: Incluir', 'Place :: Include', 1, 'Local :: Incluir'),
(271, 't_local_editar', 'Local :: Editar', 'Place :: Edit', 1, 'Local :: Editar'),
(272, 't_seguranca', 'SeguranÃ§a', 'Force Protection', 1, 'Seguridad'),
(273, 't_operacional', 'Operacional', 'Operational', 1, 'Operacional'),
(274, 't_grupos', 'Grupos', 'Groups', 1, 'Grupos'),
(275, 't_grupos_incluir', 'Grupos :: Incluir', 'Groups :: Include', 1, 'Grupos :: Incluir'),
(276, 't_grupos_editar', 'Grupos :: Editar', 'Groups :: Edit', 1, 'Grupos :: Editar'),
(277, 't_chat', 'Chat', 'Chat', 1, 'Chat'),
(278, 't_sairdosistema', 'Sair do sistema', 'Exit  System', 1, 'Salir del Sistema'),
(279, 't_poma', 'POMA', 'POMA', 1, 'POMA'),
(280, 't_manninglist', 'Manning Lista', 'Manning List', 1, 'Manning Lista'),
(281, 't_paginaprincipal', 'PÃ¡gina Principal', 'Principal Page', 1, 'PÃ¡gina Principal'),
(282, 't_avaliacao_grupos', 'AvaliaÃ§Ã£o :: Grupos', 'Evaluation :: Groups', 1, 'EvaluaciÃ³n :: Grupos'),
(283, 't_avaliacao_grupos_editar', 'AvaliaÃ§Ã£o :: Grupos :: Editar', 'Evaluation :: Groups :: Edit', 1, 'EvaluaciÃ³n :: Grupos :: Editar'),
(284, 't_avaliacao_grupos_incluir', 'AvaliaÃ§Ã£o :: Grupos :: Incluir', 'Evaluation :: Groups :: Include', 1, 'EvaluaciÃ³n :: Grupos :: Incluir'),
(285, 't_avaliacao_perguntas', 'AvaliaÃ§Ã£o :: Perguntas', 'Evaluation :: Questions', 1, 'EvaluaciÃ³n :: Preguntas'),
(286, 't_avaliacao_perguntas_editar', 'AvaliaÃ§Ã£o :: Perguntas :: Editar', 'Evaluation :: Questions :: Edit', 1, 'EvaluaciÃ³n :: Preguntas :: Editar'),
(287, 't_avaliacao_perguntas_incluir', 'AvaliaÃ§Ã£o :: Perguntas :: Incluir', 'Evalutation :: Questions :: Include', 1, 'EvaluaciÃ³n :: Preguntas :: Incluir'),
(288, 't_avaliacao_pontos', 'AvaliaÃ§Ã£o :: Pontos', 'Evaluation :: Score', 1, 'EvaluaciÃ³n :: Puntuacion'),
(289, 't_avaliacao_pontos_editar', 'AvaliaÃ§Ã£o :: Pontos :: Editar', 'Evaluation :: Score :: Edit', 1, 'EvaluaciÃ³n :: Puntuacion :: Editar'),
(290, 't_avaliacao_pontos_incluir', 'AvaliaÃ§Ã£o :: Pontos :: Incluir', 'Evaluation :: Score :: Include', 1, 'EvaluaciÃ³n :: Puntuacion :: Incluir'),
(291, 't_avaliacao_servicos', 'AvaliaÃ§Ã£o :: ServiÃ§os', 'Evaluation :: Services', 1, 'EvaluaciÃ³n :: Servicios'),
(292, 't_avaliacao_servicos_editar', 'AvaliaÃ§Ã£o :: ServiÃ§os :: Editar', 'Evaluation :: Services :: Edit', 1, 'EvaluaciÃ³n :: Servicios :: Editar'),
(293, 't_avaliacao_servicos_incluir', 'AvaliaÃ§Ã£o :: ServiÃ§os :: Incluir', 'Evaluation :: Services :: Include', 1, 'EvaluaciÃ³n :: Servicios :: Incluir'),
(294, 't_avaliacao_incluir', 'AvaliaÃ§Ã£o :: Incluir', 'Evaluation :: Include', 1, 'EvaluaciÃ³n :: Incluir'),
(295, 't_segurancadevoo', 'SeguranÃ§a de Voo', 'Flight Safety', 1, 'Seguridad de Vuelo'),
(296, 't_relprev', 'Relprev', 'Relprev', 1, 'Relprev'),
(297, 't_menus_lixeira', 'Menus :: Lixeira', 'Menus :: Trash', 1, 'MenÃºs :: Papelera'),
(298, 't_seguranca_incluir', 'SeguranÃ§a :: Incluir', 'Force Protection :: Include', 1, 'Seguridad :: Incluir'),
(299, 't_seguranca_editar', 'SeguranÃ§a :: Editar', 'Force Protection :: Edit', 1, 'Seguridad :: Editar'),
(300, 't_helpdesk_administracao', 'Helpdesk :: AdministraÃ§Ã£o', 'Helpdesk :: Administration', 1, 'Helpdesk :: AdministraciÃ³n'),
(301, 't_helpdesk_administracao_incluir', 'Helpdesk :: AdministraÃ§Ã£o :: Incluir', 'Helpdesk :: Administration :: Include', 1, 'Helpdesk :: AdministraciÃ³n :: Incluir'),
(302, 't_helpdesk_administracao_editar', 'Helpdesk :: AdministraÃ§Ã£o :: Editar', 'Helpdesk :: Administration :: Edit', 1, 'Helpdesk :: AdministraciÃ³n :: Editar'),
(303, 't_helpdesk_Ãrea_incluir', 'Helpdesk :: Ãrea :: Incluir', 'Helpdesk :: Area :: Include', 1, 'Helpdesk :: Ãrea :: Incluir'),
(304, 't_helpdesk_Ãrea', 'Helpdesk :: Ãrea', 'Helpdesk :: Area', 1, 'Helpdesk :: Ãrea'),
(305, 't_helpdesk_Ãrea_editar', 'Helpdesk :: Ãrea :: Editar', 'Helpdesk :: Area :: Edit', 1, 'Helpdesk :: Ãrea :: Editar'),
(306, 't_helpdesk_perfil', 'Helpdesk :: Perfil', 'Helpdesk :: Profile', 1, 'Helpdesk :: Perfil'),
(307, 't_helpdesk_perfil_incluir', 'Helpdesk :: Perfil :: Incluir', 'Helpdesk :: Profile :: Include', 1, 'Helpdesk :: Perfil :: Incluir'),
(308, 't_helpdesk_perfil_editar', 'Helpdesk :: Perfil :: Editar', 'Helpdesk :: Profile :: Edit', 1, 'Helpdesk :: Perfil :: Editar'),
(309, 't_helpdesk_status', 'Helpdesk :: Status', 'Helpdesk :: Status', 1, 'Helpdesk :: Estado'),
(310, 't_helpdesk_status_incluir', 'Helpdesk :: Status :: Incluir', 'Helpdesk :: Status :: Include', 1, 'Helpdesk :: Estado :: Incluir'),
(311, 't_helpdesk_status_alterar', 'Helpdesk :: Status :: Editar', 'Helpdesk :: Status :: Edit', 1, 'Helpdesk :: Estado :: Editar'),
(312, 't_logistica', 'LogÃ­stica', 'Logistics', 1, 'LogÃ­stica'),
(313, 't_logistica_incluir', 'LogÃ­stica :: Incluir', 'Logistics :: Include', 1, 'LogÃ­stica :: Incluir'),
(314, 't_logistica_editar', 'LogÃ­stica :: Editar', 'Logistics :: Edit', 1, 'LogÃ­stica :: Editar'),
(315, 't_aeronaves', 'Aeronaves', 'Aircrafts', 1, 'Aeronaves'),
(316, 't_aeronaves_incluir', 'Aeronaves :: Incluir', 'Aircrafts :: Include', 1, 'Aeronaves :: Incluir'),
(317, 't_aeronaves_editar', 'Aeronaves :: Editar', 'Aircrafts :: Edit', 1, 'Aeronaves :: Editar'),
(318, 't_atividades', 'Atividades', 'Activities', 1, 'Actividades'),
(319, 't_atividades_incluir', 'Atividades :: Incluir', 'Activities :: Include', 1, 'Actividades :: Incluir'),
(320, 't_atividades_editar', 'Atividades :: Editar', 'Activities :: Edit', 1, 'Actividades :: Editar'),
(321, 't_airops', 'AIR OPS', 'AIR OPS', 1, 'AIR OPS'),
(322, 't_gse/gpurequest', 'GSE/GPU SolicitaÃ§Ã£o', 'GSE/GPU Request', 1, 'GSE/GPU Solicitar'),
(323, 't_gse/gpurequest_editar', 'GSE/GPU SolicitaÃ§Ã£o :: Editar', 'GSE/GPU Request :: Edit', 1, 'GSE/GPU Solicitar :: Editar'),
(324, 't_gse/gpurequest_incluir', 'GSE/GPU SolicitaÃ§Ã£o :: Incluir', 'GSE/GPU Request :: Include', 1, 'GSE/GPU Solicitar :: Incluir'),
(325, 't_gse/gpulist', 'GSE/GPU Lista', 'GSE/GPU List', 1, 'GSE/GPU Lista'),
(326, 't_gse/gpulist_editar', 'GSE/GPU Lista :: Editar', 'GSE/GPU List :: Edit', 1, 'GSE/GPU Lista :: Editar'),
(327, 't_gse/gpulist_incluir', 'GSE/GPU Lista :: Incluir', 'GSE/GPU List :: Include', 1, 'GSE/GPU Lista :: Incluir'),
(328, 't_shotvalidation', 'Shot Validation', 'Shot Validation', 1, 'Shot Validation'),
(329, 't_avaliacao_pesquisa', 'AvaliaÃ§Ã£o :: Pesquisa', 'Evaluation :: Search', 1, 'EvaluaciÃ³n :: BÃºsqueda'),
(330, 't_logistica_status', 'LogÃ­stica :: Status', 'Logistics :: Status', 1, 'LogÃ­stica :: Estado'),
(331, 't_logistica_status_incluir', 'LogÃ­stica :: Status :: Incluir', 'Logistics :: Status :: Include', 1, 'LogÃ­stica :: Estado :: Incluir'),
(332, 't_logistica_status_editar', 'LogÃ­stica :: Status :: Editar', 'Logistics :: Status :: Edit', 1, 'LogÃ­stica :: Estado :: Editar'),
(333, 't_cis', 'CIS', 'CIS', 1, 'CIS'),
(334, 't_ciss_Ãrea_edita', 'CISS :: Ãrea :: Edita', 'CISS :: Area :: Edit', 1, 'CISS :: Ãrea :: Edita'),
(335, 't_cis_Ãrea', 'CIS :: Ãrea', 'CIS :: Area', 1, 'CIS :: Ãrea'),
(336, 't_cis_status', 'CIS :: Status', 'CIS :: Status', 1, 'CIS :: Estado'),
(337, 't_logistica_lixo', 'Logistica :: Lixo', 'Logistics :: Trash', 1, 'Logistica :: Papelera'),
(338, 't_documentos_tipos', 'Documentos :: Tipos', 'Documents :: Types', 1, 'Documentos :: Tipos'),
(339, 't_documentos_tipos_incluir', 'Documentos :: Tipos :: Incluir', 'Documents :: Types :: Include', 1, 'Documentos :: Tipos :: Incluir'),
(340, 't_documentos_tipos_editar', 'Documentos :: Tipos :: Editar', 'Documents :: Types :: Edit', 1, 'Documentos :: Tipos :: Editar'),
(341, 't_paginadeerro!', 'PÃ¡gina de ERRO!', 'Page ERROR!', 1, 'ERROR PÃ¡gina!'),
(345, 't_shotvalidation_incluir', 'Shot Validation :: Incluir', 'Shot Validation :: Include', 1, 'Shot Validation :: Incluir'),
(346, 't_shotvalidation_editar', 'Shot Validation :: Editar', 'Shot Validation :: Edit', 1, 'Shot Validation :: Editar'),
(347, 't_arquivo_url', 'ERRO! Selecione um arquivo ou informe uma URL', 'ERROR! Select a file or enter a URL', 1, 'ERROR! Seleccione un archivo o introduzca una URL'),
(348, 't_tipo_documento', 'ERRO! Selecione o tipo de documento', 'ERROR! Select document type', 1, 'ERRO! Seleccione el tipo de documento'),
(349, 't_shotvalidation_list', 'Shot Validation :: Lista', 'Shot Validation :: List', 1, 'Shot Validation :: Lista'),
(350, 't_logistica_list', 'Logistica :: Lista', 'Logistics :: List', 1, 'Logistica :: Lista'),
(351, 't_gse/gpunecessidades', 'GSE/GPU Necessidades', 'GSE/GPU Needs', 1, 'GSE/GPU Necesidades'),
(353, 't_gse/gpurequest_list', 'GSE/GPU SolicitaÃ§Ã£o :: Lista', 'GSE/GPU Request :: List', 1, 'GSE/GPU Solicitar :: Lista'),
(356, 't_abastecimento', 'Abastecimento', 'Fuell Supply', 1, 'Suministrar'),
(357, 't_abastecimento_editar', 'Abastecimento :: Editar', 'Fuell Supply :: Edit', 1, 'Suministrar :: Editar'),
(358, 't_abastecimento_incluir', 'Abastecimento :: Incluir', 'Fuell Supply :: Include', 1, 'Suministrar :: Incluir'),
(359, 't_abastecimento_list', 'Abastecimento :: Lista', 'Fuell Supply :: List', 1, 'Suministrar :: Lista'),
(360, 't_abastecimento_lixeira', 'Abastecimento :: Lixeira', 'Fuell Supply :: Dump', 1, 'Suministrar :: Arrojar'),
(361, 't_ordem_itens', 'A ordem dos itens foi atualizado com sucesso!', 'The order of items was successfully updated!', 1, ' El orden de los elementos se ha actualizado correctamente!'),
(362, 't_shotvalidation_aa', 'Shot Validation - AA', 'Shot Validation - AA', 1, 'Shot Validation - AA'),
(363, 't_shotvalidation_aa_editar', 'Shot Validation :: AA ::Editar', 'Shot Validation :: AA ::Edit', 1, 'Shot Validation :: AA ::Editar'),
(364, 't_shotvalidation_aa_incluir', 'Shot Validation - AA :: Incluir', 'Shot Validation - AA :: Include', 1, 'Shot Validation - AA :: Incluir'),
(365, 't_shotvalidation_aa_list', 'Shot Validation - AA :: Lista', 'Shot Validation - AA :: List', 1, 'Shot Validation - AA :: Lista'),
(366, 't_selecione_menu', 'ERRO! Selecione o menu', 'ERROR! Select the menu', 1, 'ERRO! Seleccione el menÃº'),
(367, 't_selecione_pagina_link', 'ERRO! Selcione a pÃ¡gina ou informe o link', 'ERROR! Select the page or enter the ', 1, 'ERROR! Seleccione la pÃ¡gina o introducir la URL'),
(368, 't_titulo_link', 'ERRO! Informe o tÃ­tulo para o link!', 'ERROR! Enter the title for the link!', 1, 'ERROR! Introduzca el tÃ­tulo para el link!'),
(369, 't_erro_local_chamado', 'ERRO! Selecione o local de abertura do chamado', 'ERROR! Select the location of the opening of the call', 1, 'ERROR! Seleccione la ubicaciÃ³n de la abertura del llamado'),
(370, 't_erro_perfil_acesso', 'ERRO! Selecione o perfil de acesso', 'ERROR! Select the access profile', 1, 'ERROR! Seleccione el perfil de acceso'),
(371, 't_erro_acesso', 'ERRO! Informe os dados de acesso!', 'ERROR! Enter the access data!', 1, 'ERROR! Introduzca los datos de acceso!'),
(372, 't_selecione_pais', 'ERRO! Selcione o PÃ¡is', 'ERROR! Please select the country', 1, 'ERROR! Seleccione el paÃ­s'),
(373, 't_selecione_aeronave', 'ERRO!!! Selecione a aeronave!', 'ERROR!! Select the aircraft!', 1, 'ERROR! Seleccione la aeronave!'),
(374, 't_erro_quantidade', 'ERRO!!! Informe a quantidade!', 'ERROR!! Enter the quantity!', 1, 'ERROR! Introduzca la cantidad!'),
(375, 't_erro_valor_numerico', 'ERRO! Informe um valor nÃºmerico!', 'ERROR! Enter a numeric value!', 1, 'ERROR! Introduzca un valor numÃ©rico!'),
(376, 't_shotvalidation_ag', 'Shot Validation - AG', 'Shot Validation - AG', 1, 'Shot Validation - AG'),
(377, 't_shotvalidation_ag_incluir', 'Shot Validation - AG :: Incluir', 'Shot Validation - AG :: Include', 1, 'Shot Validation - AG :: Incluir'),
(378, 't_shotvalidation_ag_editar', 'Shot Validation - AG :: Editar', 'Shot Validation - AG :: Edit', 1, 'Shot Validation - AG :: Editar'),
(379, 't_shotvalidation_ag_list', 'Shot Validation - AG :: Lista', 'Shot Validation - AG :: List', 1, 'Shot Validation - AG :: Lista'),
(380, 't_selecione_atividade', 'ERRO! Selecione a atividade!', 'ERROR! Select activity!', 1, ' ERROR! Seleccione la actividad!'),
(381, 't_meteorologia_cores', 'Meteorologia :: Cores', 'Meteorology :: Colors', 1, 'MeteorologÃ­a :: Colores'),
(382, 't_meteorologia_cores_incluir', 'Meteorologia :: Cores :: Incluir', 'Meteorology :: Colors :: Include', 1, 'MeteorologÃ­a :: Colores :: Incluir'),
(383, 't_meteorologia_cores_editar', 'Meteorologia :: Cores :: Editar', 'Meteorology :: Colors :: Edit', 1, 'MeteorologÃ­a :: Colores :: Editar'),
(384, 't_meteorologia_status', 'Meteorologia :: Status', 'Meteorology :: Status', 1, 'MeteorologÃ­a :: Estado'),
(385, 't_meteorologia_status_incluir', 'Meteorologia :: Status :: Incluir', 'Meteorology :: Status :: Include', 1, 'MeteorologÃ­a :: Estado :: Incluir'),
(386, 't_meteorologia_status_editar', 'Meteorologia :: Status :: Editar', 'Meteorology :: Status :: Edit', 1, 'MeteorologÃ­a :: Estado :: Editar'),
(387, 't_meteorologia_coresdecampo', 'Meteorologia :: Cores de Campo', 'Meteorology :: Fields colors', 1, 'MeteorologÃ­a :: Colores del Campos'),
(388, 't_meteorologia_coresdecampo_incluir', 'Meteorologia :: Cores de Campo :: Incluir', 'Meteorology :: Fields colors :: Include', 1, 'MeteorologÃ­a :: Colores del Campos :: Incluir'),
(389, 't_meteorologia_coresdecampo_editar', 'Meteorologia :: Cores de Campo :: Editar', 'Meteorology :: Fields colors :: Edit', 1, 'MeteorologÃ­a :: Colores del Campos :: Editar'),
(390, 't_local_horario', 'ERRO! Informe o local e horÃ¡rio!', 'ERROR! Enter the place and time!', 1, 'ERROR! Introduzca el lugar y la hora!'),
(391, 't_informe_local', 'ERRO! Informe o local', 'ERROR! Enter the site', 1, 'ERROR! Entre en el sitio'),
(392, 't_horario_dep', 'ERRO! Informe o horÃ¡rio de decolagem!', 'ERROR! Enter the departure time!', 1, 'ERROR! Introduzca la hora de salida!'),
(393, 't_helpdesk_prioridade', 'Helpdesk :: Prioridade', 'Helpdesk :: Priority', 1, 'Helpdesk :: Prioridad'),
(394, 't_helpdesk_prioridade_incluir', 'Helpdesk :: Prioridade :: Incluir', 'Helpdesk :: Priority :: Include', 1, 'Helpdesk :: Prioridad :: Incluir'),
(395, 't_helpdesk_prioridade_editar', 'Helpdesk :: Prioridade :: Editar', 'Helpdesk :: Priority :: Edit', 1, 'Helpdesk :: Prioridad :: Editar'),
(396, 't_local_lixeira', 'Local :: Lixeira', 'Place :: Trash', 1, 'Local :: Papelera'),
(397, 't_lixeira', 'Lixeira', 'Trash', 1, 'Papelera'),
(398, 't_manning_incluir', 'Manning :: Incluir', 'Manning :: Include', 1, 'Manning :: Incluir'),
(399, 't_country_lixeira', 'PaÃ­s :: Lixeira', 'Country :: Trash', 1, 'PaÃ­s :: Papelera'),
(400, 't_cis_Ãrea_editar', 'CIS :: Ãrea :: Editar', 'CIS :: Area :: Edit', 1, 'CIS :: Ãrea :: Editar'),
(401, 't_cis_Ãrea_incluir', 'CIS :: ÃREA :: INCLUIR', 'CIS :: AREA :: INCLUDE', 1, 'CIS :: ÃREA :: INCLUIR'),
(402, 't_cis_editar', 'CIS :: Editar', 'CIS :: Edit', 1, 'CIS :: Editar'),
(403, 't_cis_incluir', 'CIS :: Incluir', 'CIS :: Include', 1, 'CIS :: Incluir'),
(404, 't_cis_status_editar', 'CIS :: Status :: Editar', 'CIS :: Status :: Edit', 1, 'CIS :: Estado :: Editar'),
(405, 't_cis_status_incluir', 'CIS :: Status :: Incluir', 'CIS :: Status :: Include', 1, 'CIS :: Estado :: Incluir'),
(406, 't_paginas_lixeira', 'PÃ¡ginas :: Lixeira', 'Pages :: Trash', 1, 'PÃ¡ginas :: Arrojar'),
(407, 't_setor_nome', 'ERRO! Informe o nome do setor', 'ERROR! Enter the name of the sector', 1, 'ERROR! Introduzca el nombre del sector'),
(408, 't_nome_prioridade', 'ERRO! Informe o nome da prioridade', 'ERROR! Enter the name of the priority', 1, 'ERROR! Escriba el nombre de la prioridad'),
(409, 't_nome_status', 'ERRO! Informe o nome do status!', 'ERROR! Enter the name of status!', 1, 'ERROR! Introduzca el nombre del estado!'),
(410, 't_informe_senha', 'ERRO! Informe a sua senha!', 'ERROR! Enter the password!', 1, 'ERROR! Introduzca la contraseÃ±a!'),
(411, 't_midias', 'MÃ­dias', 'Media', 1, 'Medios de ComunicaciÃ³n'),
(412, 't_midias_incluir', 'MÃ­dias :: Incluir', 'Media :: Include', 1, 'Medios de ComunicaciÃ³n :: Incluir'),
(413, 't_midias_editar', 'MÃ­dias :: Editar', 'Media :: Edit', 1, 'Medios de ComunicaciÃ³n :: Editar'),
(414, 't_midias_lixeira', 'MÃ­dias :: Lixeira', 'Media :: Trash', 1, 'Medios de ComunicaciÃ³n :: Papelera'),
(415, 't_noticia_editar', 'NotÃ­cia :: Editar', 'News :: Edit', 1, 'Noticias :: Editar'),
(416, 't_noticia_incluir', 'NotÃ­cia :: Incluir', 'News :: Include', 1, 'Noticias :: Incluir'),
(417, 't_data_abastecimento', 'ERRO! Informe o data do abastecimento', 'ERROR! Enter the date of supply', 1, 'ERROR! Entre la fecha de la oferta'),
(418, 't_horario_abastecimento', 'ERRO! Informe o horÃ¡rio de abastecimento', 'ERROR! Tell time supply', 1, 'ERROR! Recomendar oferta vez'),
(419, 't_status_acao', 'ERRO! Selecione o status da aÃ§Ã£o!', 'ERROR! Select the status of the action!', 1, 'ERROR! Seleccione el estado de la acciÃ³n!'),
(420, 't_nome_botao', 'ERRO! Informe o nome do BotÃ£o!', 'ERROR! Enter the name of the button!', 1, 'ERROR! Introduzca el nombre del botÃ³n!'),
(421, 't_nome_area', 'ERRO! Informe o nome da Ã¡rea', 'ERROR! Enter the name of the area', 1, 'ERROR! Introduzca el nombre de la zona'),
(422, 't_cor_campo_manha', 'ERRO!!! Informe a cor referente ao perÃ­odo da manhÃ£!', 'ERROR!!! Enter the color referring to the morning!', 1, 'ERROR!!! Introduzca el color de referencia a la maÃ±ana!'),
(423, 't_cor_campo_tarde', 'ERRO! Informe a cor referente ao perÃ­odo da tarde!', 'ERROR!!! Enter the color for the period of the afternoon!', 1, 'ERROR!!! Introduzca el color para el perÃ­odo de la tarde!'),
(424, 't_cor_campo_noite', 'ERRO!!! Informe a cor referente ao perÃ­odo da noite!', 'ERROR!!! Enter the color for the period of the night!', 1, 'ERROR!!! Introduzca el color para el perÃ­odo de la noche!'),
(425, 't_nome_cor', 'ERRO! Informe o nome da cor', 'ERROR! Enter the name of the color', 1, 'ERROR! Introduzca el nombre del color'),
(426, 't_informe_cor', 'ERRO! Informe a cor', 'ERROR! Enter the color', 1, 'ERROR! Introduzca el color'),
(427, 't_tipo_midia', 'ERRO! Selecione o tipo de mÃ­dia!', 'ERRO! Selecione o tipo de mÃ­dia!', 1, 'ERRO! Selecione o tipo de mÃ­dia!'),
(428, 't_informe_nome', 'ERRO! Informe o nome!', 'ERROR! Enter the name!', 1, 'ERROR! Introduzca el nombre!'),
(429, 't_status_noticia', 'Atualizado o status de visualizaÃ§Ã£o da notÃ­cia!', 'Updated status display news!', 1, 'Noticias actualizadas pantalla de estado!'),
(430, 't_informe_mensagem', 'ERRO! Informe a mensagem!', 'ERROR! Enter the message!', 1, 'ERROR! Ingrese el mensaje!'),
(432, 't_titulo_itens', 'Itens', 'Items', 1, 'ArtÃ­culos'),
(434, 't_titulo_cores_campo', 'Cores de Campo', 'Field Colors', 1, 'Colores del Campo'),
(437, 't_navegacao', 'NavegaÃ§Ã£o', 'Navigation', 1, 'NavegaciÃ³n'),
(438, 't_configuracoes', 'ConfiguraÃ§Ãµes', 'Settings', 1, 'Ajustes'),
(439, 't_itens', 'Itens', 'Items', 1, 'ArtÃ­culos'),
(440, 't_relprev_titulo_detalhes', 'Detalhe RELPREV', 'Detail RELPREV', 1, 'Detalle RELPREV'),
(441, 't_relprev_titulo_gerais', 'Dados Gerais da OcorrÃªncia', 'Stats of Occurrence', 1, 'EstadÃ­sticas de Ocurrencia'),
(442, 't_relprev_titulo_envolvidos', 'Pessoal Envolvido e/ou Aeronaves', 'Involved personnel and/or aircraft', 1, 'Personal involucrado y/o de la aeronave'),
(443, 't_situacao', 'SituaÃ§Ã£o', 'Situation', 1, 'SituaciÃ³n'),
(444, 't_relprev_titulo_relator', 'Relator / Contatos', 'Rapporteur / Contacts', 1, 'Relator / Contactos'),
(445, 't_avisos', 'Avisos', 'Avisos', 1, 'Advertencias'),
(446, 't_aviso_incluir', 'Aviso :: Incluir', 'Warnings :: Include', 1, 'Advertencias:: Incluir'),
(447, 't_aviso_editar', 'Aviso :: Editar', 'Warnings :: Edit', 1, 'Advertencias:: Editar'),
(448, 't_aviso_lixeira', 'Aviso :: Lixeira', 'Warnings :: Dump', 1, 'Advertencias:: Papelera'),
(449, 't_detalhe_chamado', 'Detalhe do Chamado', 'Detail Request', 1, 'Detalle Llama'),
(450, 't_chamados', 'Chamados', 'Requests', 1, 'Llamados'),
(451, 't_titulo', 'TÃ­tulo', 'TÃ­tulo', 1, 'TÃ­tulo'),
(452, 't_titulo_cores_meteorologicas', 'Cores MeteorolÃ³gicas', 'Colors weather', 1, 'Colores del Clima'),
(453, 't_afetado', 'UsuÃ¡rio afetado', 'Affected user\r\n', 1, 'Usuario afectado'),
(454, 't_descricao', 'DescriÃ§Ã£o', 'DescriÃ§Ã£o', 1, 'DescriÃ§Ã£o'),
(455, 't_helpdesk_administracao_lixeira', 'Helpdesk :: AdministraÃ§Ã£o :: Lixeira', 'Helpdesk :: Administration :: Trash', 1, 'Helpdesk :: AdministraciÃ³n :: Papelera'),
(456, 't_acoes', 'AÃ§Ãµes', 'Actions', 1, 'Acciones'),
(457, 't_quantidade', 'Quantidade', 'Quantity', 1, 'Cantidad'),
(458, 't_solucionador', 'Solucionador', 'Troubleshooter', 1, 'Solver'),
(459, 't_categorias', 'Categorias', 'Categories', 1, 'CategorÃ­as'),
(460, 't_enviar', 'Enviar', 'Send', 1, 'Enviar'),
(461, 't_atualizar_ordem', 'Atualizar Ordem', 'Update Order', 1, 'Actualiza Orden'),
(462, 't_salvar_traducoes', 'Salvar TraduÃ§Ãµes', 'Save Translations', 1, 'Guardar Traducciones'),
(463, 't_voltar_principal', 'Voltar Ã  pÃ¡gina principal', 'Back to main page', 1, 'Volver a la pÃ¡gina principal'),
(464, 't_evaluationform', 'FormulÃ¡rio de AvaliaÃ§Ã£o', 'Evaluation Form', 1, 'Formulario de EvaluaciÃ³n'),
(465, 't_voltar_menu', 'Voltar ao menu', 'Back to menu', 1, 'Volver al menÃº'),
(466, 't_informe_data', 'ERRO! Informe o data!', 'ERROR! Introduzca la fecha!', 1, 'ERROR! Enter the date!'),
(467, 't_voltar_eval', 'Voltar Ã  AvaliaÃ§Ã£o', 'Back to Evaluation', 1, 'Volver al EvaluaciÃ³n'),
(468, 't_informe_hora', 'ERRO! Informe a hora!', 'ERROR! Tell time!', 1, 'ERROR! Decir la hora!'),
(469, 't_informe_envolvido', 'ERRO! Informe o pessoal envolvido!', 'ERROR! Inform personnel involved!', 1, ' ERROR! Informar al personal que participan!'),
(470, 't_informe_situacao', 'ERRO! Informe a situaÃ§Ã£o!', 'ERROR! Tell the situation!', 1, 'ERROR! DÃ­gale a la situaciÃ³n!'),
(471, 't_informe_reporter', 'ERRO! Informe o reporter', 'ERROR! Tell the reporter', 1, 'ERROR! DÃ­gale al reportero'),
(472, 't_informe_contato', 'ERRO! Informe o contato!', 'ERROR! Tell touch!', 1, 'ERROR! Dile touch!'),
(473, 't_grupos_lixeira', 'Grupos :: Lixeira', 'Groups :: Trash', 1, 'Grupos :: Papelera'),
(474, 't_voltar_noticia', 'Volta a pÃ¡gina de notÃ­cias', 'Volta a pÃ¡gina de notÃ­cias', 1, 'Volta a pÃ¡gina de notÃ­cias'),
(475, 't_relprev_editar', 'Relprev :: Editar', 'Relprev :: Editar', 1, 'Relprev :: Editar'),
(476, 't_relprev_insert', 'Relprev :: Insert', 'Relprev :: Insert', 1, 'Relprev :: Insert'),
(477, 't_perigoaviario', 'Perigo AviÃ¡rio', 'Perigo AviÃ¡rio', 1, 'Perigo AviÃ¡rio'),
(478, 't_campos_obrigatorios', ' Os campos com * sÃ£o obrigatÃ³rios!', ' Os campos com * sÃ£o obrigatÃ³rios!', 1, ' Os campos com * sÃ£o obrigatÃ³rios!'),
(479, 't_idioma_incluir', 'Idioma :: Incluir', 'Idioma :: Incluir', 1, 'Idioma :: Incluir'),
(480, 't_informe_valor_brasil', 'Informe o valor em portuguÃªs', 'Informe o valor em portuguÃªs', 1, 'Informe o valor em portuguÃªs'),
(481, 't_informe_valor_eua', 'Informe o valor em inglÃªs', 'Informe o valor em inglÃªs', 1, 'Informe o valor em inglÃªs'),
(482, 't_informe_valor_espanha', 'Informe o valor em espanhol', 'Informe o valor em espanhol', 1, 'Informe o valor em espanhol'),
(483, 't_titulo_meteorologia', 'Meteorologia', 'Meteorology', 1, 'MeteorologÃ­a'),
(484, 't_avisosoperacionais', 'Avisos Operacionais', 'Avisos Operacionais', 1, 'Avisos Operacionais'),
(485, 't_helpdesk_imprimir', 'Helpdesk :: Imprimir', 'Helpdesk :: Imprimir', 1, 'Helpdesk :: Imprimir'),
(486, 't_video', 'VÃ­deos', 'Videos', 1, 'VÃ­deos'),
(487, 't_seguranca_listagem', 'SeguranÃ§a', 'Force Protection', 1, 'Securidad'),
(488, 't_facilidades_listagem', 'Facilidades :: Listagem', 'Facilidades :: List', 1, 'Facilidades :: Listado'),
(489, 't_ocorrencias', 'OcorrÃªncias', 'OcorrÃªncias', 1, 'OcorrÃªncias');

-- --------------------------------------------------------

--
-- Estrutura da tabela `intel`
--

CREATE TABLE IF NOT EXISTS `intel` (
  `int_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `int_nome` varchar(255) NOT NULL,
  `int_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL,
  `int_site` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `int_data` date NOT NULL,
  `int_hora` char(5) NOT NULL,
  `int_are_id` int(10) unsigned DEFAULT NULL,
  `int_msg` text CHARACTER SET latin1,
  PRIMARY KEY (`int_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `intel`
--

INSERT INTO `intel` (`int_id`, `int_nome`, `int_url`, `int_site`, `status`, `int_data`, `int_hora`, `int_are_id`, `int_msg`) VALUES
(1, 'ES', '', 'Asw', 0, '2013-10-21', '11:21', 2, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `intelarea`
--

CREATE TABLE IF NOT EXISTS `intelarea` (
  `int_are_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `int_are_nome` varchar(255) NOT NULL,
  `int_are_id2` int(10) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`int_are_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `intelarea`
--

INSERT INTO `intelarea` (`int_are_id`, `int_are_nome`, `int_are_id2`, `status`) VALUES
(1, 'Teste', 0, 0),
(2, 'Teste2', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `ite_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ite_target` char(6) NOT NULL DEFAULT '_self',
  `pag_id` int(10) DEFAULT NULL,
  `men_id` int(10) NOT NULL,
  `per_id` int(10) NOT NULL DEFAULT '6',
  `ite_ordem` int(2) DEFAULT '1',
  `ite_nome` varchar(255) DEFAULT NULL,
  `ite_url` varchar(255) DEFAULT NULL,
  `ite_link` varchar(255) DEFAULT NULL,
  `ite_file` varchar(255) DEFAULT NULL,
  `sta_id` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ite_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Extraindo dados da tabela `item`
--

INSERT INTO `item` (`ite_id`, `ite_target`, `pag_id`, `men_id`, `per_id`, `ite_ordem`, `ite_nome`, `ite_url`, `ite_link`, `ite_file`, `sta_id`) VALUES
(1, '_self', 1, 2, 15, 11, '', '', '', '', 1),
(15, '_self', 38, 2, 2, 3, '', '', '', '', 1),
(16, '_self', 129, 2, 2, 13, '', '', '', '', 1),
(18, '_self', 24, 2, 4, 4, '', '', '', '', 1),
(23, '_self', 25, 2, 2, 4, '', '&cli_id=<?php echo $_SESSION[''cli_id''];?>', '', '', 0),
(24, '_self', 135, 2, 1, 2, NULL, '', NULL, NULL, 1),
(25, '_self', 56, 2, 2, 1, '', '', '', '', 1),
(26, '_self', 137, 2, 4, 10, '', '', '', '', 0),
(27, '_self', 138, 20, 7, 1, '', '', '', '', 1),
(28, '_self', 141, 20, 7, 2, '', '', '', '', 1),
(29, '_self', 144, 20, 7, 3, '', '', '', '', 1),
(30, '_self', 147, 18, 11, 2, '', '', '', '', 1),
(31, '_self', 149, 18, 11, 3, '', '', '', '', 1),
(32, '_self', 152, 18, 11, 4, '', '', '', '', 1),
(33, '_self', 155, 18, 11, 5, '', '', '', '', 1),
(34, '_self', 158, 18, 11, 6, '', '', '', '', 1),
(37, '_self', 167, 23, 1, 1, NULL, '', NULL, NULL, 1),
(38, '_self', 170, 23, 1, 1, NULL, '', NULL, NULL, 1),
(39, '_self', 173, 24, 20, 2, '', '', '', '', 1),
(40, '_self', 176, 24, 20, 3, '', '', '', '', 1),
(41, '_self', 179, 25, 1, 1, NULL, '', NULL, NULL, 1),
(42, '_self', 182, 25, 1, 1, NULL, '', NULL, NULL, 1),
(45, '_self', 185, 2, 4, 9, '', '', '', '', 1),
(46, '_self', 188, 2, 4, 8, '', '', '', '', 1),
(47, '_self', 191, 2, 4, 7, '', '', '', '', 1),
(48, '_self', 194, 2, 4, 6, '', '', '', '', 1),
(49, '_self', 197, 2, 4, 12, '', '', '', '', 1),
(50, '_blank', 0, 29, 2, 1, 'Chat', '', 'http://chat.cruzex.intraer', '', 1),
(51, '_blank', 0, 30, 2, 1, 'POMA', '', 'http://poma.cruzex.intraer', '', 1),
(52, '_self', 200, 31, 2, 1, '', '', '', NULL, 1),
(53, '_self', 136, 32, 2, 1, '', '', '', NULL, 1),
(54, '_self', 201, 33, 2, 1, '', '', '', NULL, 1),
(55, '_self', 148, 34, 2, 1, '', '', '', NULL, 1),
(56, '_self', 202, 35, 2, 1, '', '', '', NULL, 0),
(57, '_self', 203, 36, 2, 1, '', '', '', NULL, 0),
(58, '_self', 204, 27, 13, 2, '', '', '', NULL, 1),
(61, '_self', 114, 26, 2, 1, '', '', '', '', 1),
(62, '_self', 207, 26, 4, 1, '', '', '', '', 1),
(63, '_self', 210, 26, 4, 1, '', '', '', '', 1),
(64, '_self', 213, 26, 4, 1, '', '', '', '', 1),
(65, '_self', 216, 26, 4, 1, '', '', '', '', 1),
(66, '_self', 219, 28, 16, 3, '', '', '', NULL, 1),
(67, '_self', 222, 28, 17, 6, '', '', '', NULL, 1),
(68, '_self', 225, 28, 17, 5, '', '', '', NULL, 1),
(69, '_self', 229, 28, 17, 7, '', '', '', NULL, 1),
(70, '_self', 233, 23, 14, 1, '', '', '', NULL, 1),
(71, '_self', 236, 28, 17, 4, '', '', '', NULL, 1),
(72, '_self', 239, 39, 18, 3, '', '', '', NULL, 1),
(73, '_self', 242, 39, 2, 1, '', '', '', NULL, 1),
(74, '_self', 243, 28, 2, 1, '', '', '', NULL, 1),
(75, '_self', 244, 28, 2, 2, '', '', '', NULL, 1),
(76, '_self', 246, 39, 18, 4, '', '', '', NULL, 1),
(78, '_self', 250, 25, 9, 1, '', '', '', NULL, 1),
(79, '_self', 253, 25, 9, 1, '', '', '', NULL, 1),
(80, '_self', 256, 25, 10, 1, '', '', '', NULL, 1),
(81, '_self', 259, 26, 4, 1, '', '', '', '', 1),
(82, '_self', 262, 40, 4, 1, '', '', '', '', 1),
(83, '_self', 264, 40, 4, 1, '', '', '', '', 1),
(84, '_self', 1, 41, 15, 1, '', '', '', '', 1),
(85, '_self', 137, 2, 4, 9, '', '', '', '', 1),
(86, '_self', 203, 36, 2, 1, '', '', '', '', 1),
(87, '_self', 269, 38, 2, 1, '', '', '', '', 1),
(88, '_self', 202, 35, 2, 1, '', '', '', '', 1),
(90, '_self', 274, 40, 4, 1, '', '', '', '', 1),
(91, '_self', 276, 40, 1, 1, '', '', '', '', 1),
(92, '_self', 249, 39, 2, 2, '', '', '', '', 1),
(94, '_self', 270, 2, 1, 1, '', '', '', '', 1),
(95, '_self', 277, 43, 1, 2, '', '', '', '', 1),
(96, '_blank', 0, 36, 2, 1, 'Perigo AviÃ¡rio', '', 'http://www.cenipa.aer.mil.br/cenipa/sigra/perigoAviarioExt', '', 1),
(97, '_blank', 0, 43, 1, 3, 'Perigo AviÃ¡rio', '', 'http://www.cenipa.aer.mil.br/cenipa/sigra/index.php', '', 1),
(98, '_self', 273, 40, 1, 1, '', '', '', '', 1),
(99, '_self', 203, 43, 2, 1, '', '', '', '', 1),
(100, '_self', 148, 18, 2, 1, '', '', '', '', 1),
(101, '_self', 269, 27, 2, 1, '', '', '', '', 1),
(102, '_self', 201, 24, 2, 1, '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `local`
--

CREATE TABLE IF NOT EXISTS `local` (
  `loc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loc_nome` varchar(255) NOT NULL,
  `loc_id2` int(10) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`loc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=172 ;

--
-- Extraindo dados da tabela `local`
--

INSERT INTO `local` (`loc_id`, `loc_nome`, `loc_id2`, `status`) VALUES
(1, 'GITE 1', 0, 1),
(2, 'GITE 2', 0, 1),
(3, 'GITE 3', 0, 1),
(4, 'HOSPEDE', 0, 1),
(6, '1GAV4', 0, 1),
(47, 'DepÃ³sito CCA-RJ - SALA 04', 4, 0),
(59, '1GAV11', 0, 1),
(60, 'IT SUPPORT', 1, 1),
(61, 'CIS SUPPORT', 1, 1),
(62, 'A-29', 0, 1),
(63, 'HELP DESK CENTER', 1, 1),
(64, 'REAL LIFE I', 1, 1),
(65, 'SAR', 1, 1),
(66, 'ANV-ADM', 0, 1),
(67, 'PLANS CELL & EXERCISE CONTROL GROUP', 1, 1),
(68, 'EVALUATION', 1, 1),
(69, 'TORRE-PQD', 0, 1),
(70, 'TRATORES', 0, 1),
(71, 'INTRAER E INTERNET ROOM', 2, 1),
(72, '2GAV5', 0, 1),
(73, 'MEETING ROOM', 2, 1),
(74, 'OFFICIAL GENERAL ROOM', 2, 1),
(75, 'OPO', 0, 1),
(76, 'DEPUTY EXDIR E ADVISERS', 2, 1),
(77, 'GCC WAREHOUSE', 3, 1),
(78, 'AUD-EMB', 0, 1),
(79, 'EXDIR', 2, 1),
(80, 'INTRAER & INTERNET ROOM', 3, 1),
(81, 'CURRENT OPS', 3, 1),
(82, 'SHOT VALIDATION CELL', 6, 1),
(83, 'CANADA', 6, 1),
(84, 'REAL LIFE II', 1, 1),
(85, 'TRANSPORT BRAZIL', 6, 1),
(86, 'CMV 05-PRESS ROOM', 4, 1),
(87, 'COMAO SUPPORT', 6, 1),
(88, 'CIS STAFF', 1, 1),
(89, 'CMV 04-VISITORS & OBSERVERS CELL', 4, 1),
(90, 'FLIGHT SAVETY', 1, 1),
(91, 'GDA BRAZIL', 6, 1),
(92, 'CMV 03 - PRESS INFO CELL', 4, 1),
(93, 'BRIEFING AUDITORIUM', 6, 1),
(94, 'DEBRIEFING AUDITORIUM', 1, 1),
(95, 'CMV 02 - CENTRE OF MEDIA AND VISITORS', 4, 1),
(96, 'HELICOPTER BRAZIL', 6, 1),
(97, 'A-29 BRAZIL', 6, 1),
(98, 'HELP DESK', 6, 1),
(99, 'VENEZUELA', 59, 1),
(100, 'DTI WAREHOUSE (07)', 4, 1),
(101, 'ECUADOR', 6, 1),
(102, 'ARGENTINA', 59, 1),
(103, 'CHILE', 6, 1),
(104, 'DTI WAREHOUSE (08)', 4, 1),
(105, 'F-5 BRAZIL', 6, 1),
(106, 'BRIEFING', 59, 1),
(107, 'USA', 6, 1),
(108, 'RA-1 / A-1 BRAZIL', 6, 1),
(109, 'LIVING ROOM', 59, 1),
(110, 'PLANNING ROOM', 59, 1),
(111, 'FACILITY CENTER', 4, 1),
(112, 'COLOMBIA', 6, 1),
(113, 'URUGUAY', 6, 1),
(114, 'FOREIGN EQV', 59, 1),
(115, 'ARGENTINA', 6, 1),
(116, 'ECUADOR', 59, 1),
(117, 'COLOMBIA', 59, 1),
(118, 'VENEZUELA', 6, 1),
(119, 'LIVING ROOM', 6, 1),
(120, 'CHILE', 59, 1),
(121, 'USA', 59, 1),
(122, 'CANADA', 59, 1),
(123, '1/9 GAV', 69, 1),
(124, 'URUGUAY', 59, 1),
(125, '1/15 GAV', 69, 1),
(126, 'LIAISON', 59, 1),
(127, 'HELP DESK', 59, 1),
(128, 'RESERVA (05)', 69, 1),
(129, 'RESERVA (06)', 69, 1),
(130, '1/1 GT', 69, 1),
(131, '1 GTT', 6, 1),
(132, 'LOGISTIC CENTER 1', 70, 1),
(133, 'LIVING ROOM', 70, 1),
(134, 'LOGISTIC CENTER 2', 70, 1),
(135, 'OPFOR AUDITORIUM', 72, 1),
(136, 'BRIEFING BRAZIL 1', 72, 1),
(137, 'BRIEFING BRAZIL 2', 72, 1),
(138, 'BRIEFING OPFOR', 72, 1),
(139, 'CECOMSAER', 72, 1),
(140, 'OPFOR BRAZIL', 72, 1),
(141, 'URUGUAY', 62, 1),
(142, 'COLOMBIA', 62, 1),
(143, 'CANADA', 62, 1),
(144, '3/8 GAV', 66, 1),
(145, 'USA', 62, 1),
(146, 'URUGUAY', 62, 0),
(147, '2/8 GAV', 66, 1),
(148, '7/8 GAV', 66, 1),
(149, '1/8 GAV', 66, 1),
(150, '1/4 GAV', 66, 1),
(151, 'EQV HELICOPTERO', 66, 1),
(152, '3/3 GAV', 66, 1),
(153, 'PARASAR (1)', 66, 1),
(154, 'PARASAR (2)', 66, 1),
(155, '1 GAC 1/14 GAV (1)', 66, 1),
(156, '1 GAC 1/14 GAV (2)', 66, 1),
(157, '3/10 GAV (1)', 66, 1),
(158, 'FORCE PROTECTION', 1, 1),
(159, '3/10 GAV (2)', 66, 1),
(160, 'SAR', 78, 1),
(161, '1/10 GAV', 66, 1),
(162, '1/16 GAV', 66, 1),
(163, 'SURVEILLANCE ELECTRONIC', 75, 1),
(164, 'ECUADOR', 62, 1),
(165, 'CHILE', 62, 1),
(166, 'GDA BRAZIL', 62, 1),
(167, 'ARGENTINA', 62, 1),
(168, 'VENEZUELA', 62, 1),
(169, 'LIAISON', 62, 1),
(170, 'HELP DESK', 62, 1),
(171, 'FORCE PROTECTION', 62, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_data` date NOT NULL,
  `log_hora` char(5) NOT NULL,
  `log_ip` varchar(100) NOT NULL,
  `cli_id` int(10) unsigned NOT NULL,
  `log_acao` text,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=441 ;

--
-- Extraindo dados da tabela `log`
--

INSERT INTO `log` (`log_id`, `log_data`, `log_hora`, `log_ip`, `cli_id`, `log_acao`) VALUES
(178, '2013-09-23', '22:18', '127.0.0.1', 0, 'sair'),
(179, '2013-09-24', '12:10', '127.0.0.1', 1, 'sair'),
(180, '2013-10-14', '14:01', '::1', 1, 'sair'),
(181, '2013-10-15', '10:18', '::1', 1, 'sair'),
(182, '2013-10-15', '10:25', '::1', 1, 'sair'),
(183, '2013-10-15', '10:37', '::1', 1, 'sair'),
(184, '2013-10-15', '13:05', '::1', 1, 'sair'),
(185, '2013-10-15', '13:15', '::1', 1, 'sair'),
(186, '2013-10-15', '13:22', '::1', 1, 'sair'),
(187, '2013-10-15', '13:35', '::1', 1, 'sair'),
(188, '2013-10-15', '13:57', '::1', 1, 'sair'),
(189, '2013-10-16', '16:10', '::1', 1, 'sair'),
(190, '2013-10-17', '11:02', '::1', 1, 'sair'),
(191, '2013-10-17', '11:38', '::1', 1, 'sair'),
(192, '2013-10-17', '14:28', '::1', 1, 'sair'),
(193, '2013-10-17', '14:32', '::1', 1, 'sair'),
(194, '2013-10-17', '14:34', '::1', 1, 'sair'),
(195, '2013-10-17', '15:42', '::1', 1, 'sair'),
(196, '2013-10-18', '08:06', '::1', 1, 'sair'),
(197, '2013-10-18', '08:08', '::1', 1, 'sair'),
(198, '2013-10-18', '08:12', '::1', 1, 'sair'),
(199, '2013-10-18', '08:14', '::1', 1, 'sair'),
(200, '2013-10-18', '08:27', '::1', 1, 'sair'),
(201, '2013-10-18', '08:30', '::1', 1, 'sair'),
(202, '2013-10-18', '08:33', '::1', 1, 'sair'),
(203, '2013-10-18', '08:37', '::1', 1, 'sair'),
(204, '2013-10-18', '08:38', '::1', 1, 'sair'),
(205, '2013-10-18', '08:41', '::1', 1, 'sair'),
(206, '2013-10-18', '09:03', '::1', 1, 'sair'),
(207, '2013-10-18', '09:10', '::1', 1, 'sair'),
(208, '2013-10-18', '09:14', '::1', 1, 'sair'),
(209, '2013-10-18', '09:23', '::1', 1, 'sair'),
(210, '2013-10-18', '09:30', '::1', 1, 'sair'),
(211, '2013-10-18', '09:39', '::1', 1, 'sair'),
(212, '2013-10-18', '09:46', '77.77.77.153', 1, 'sair'),
(213, '2013-10-18', '15:23', '77.77.77.28', 1, 'sair'),
(214, '2013-10-18', '15:24', '::1', 1, 'sair'),
(215, '2013-10-18', '17:23', '::1', 1, 'sair'),
(216, '2013-10-18', '17:32', '::1', 1, 'sair'),
(217, '2013-10-19', '08:24', '::1', 1, 'sair'),
(218, '2013-10-19', '09:24', '::1', 1, 'sair'),
(219, '2013-10-19', '13:11', '::1', 1, 'sair'),
(220, '2013-10-19', '13:27', '::1', 1, 'sair'),
(221, '2013-10-21', '10:35', '::1', 1, 'sair'),
(222, '2013-10-21', '11:04', '::1', 1, 'sair'),
(223, '2013-10-21', '14:59', '::1', 1, 'sair'),
(224, '2013-10-21', '16:02', '::1', 1, 'sair'),
(225, '2013-10-21', '18:16', '::1', 1, 'sair'),
(226, '2013-10-22', '16:49', '192.168.30.122', 1, 'sair'),
(227, '2013-10-22', '17:10', '192.168.21.155', 1, 'sair'),
(228, '2013-10-22', '18:23', '192.168.21.155', 1, 'sair'),
(229, '2013-10-22', '18:41', '192.168.21.160', 1, 'sair'),
(230, '2013-10-22', '18:42', '192.168.21.159', 1, 'sair'),
(231, '2013-10-23', '14:38', '192.168.21.160', 1, 'sair'),
(232, '2013-10-23', '15:37', '192.168.21.160', 1, 'sair'),
(233, '2013-10-23', '17:29', '192.168.30.122', 1, 'sair'),
(234, '2013-10-23', '17:33', '192.168.30.122', 1, 'sair'),
(235, '2013-10-23', '18:49', '192.168.21.155', 1, 'sair'),
(236, '2013-10-24', '09:08', '192.168.30.122', 1, 'sair'),
(237, '2013-10-24', '09:32', '192.168.30.122', 1, 'sair'),
(238, '2013-10-24', '09:44', '192.168.21.157', 1, 'sair'),
(239, '2013-10-24', '09:46', '192.168.30.122', 1, 'sair'),
(240, '2013-10-24', '09:53', '192.168.30.122', 1, 'sair'),
(241, '2013-10-24', '09:55', '192.168.30.121', 1, 'sair'),
(242, '2013-10-24', '09:59', '192.168.30.122', 1, 'sair'),
(243, '2013-10-24', '10:00', '192.168.30.122', 1, 'sair'),
(244, '2013-10-24', '10:00', '192.168.30.122', 1, 'sair'),
(245, '2013-10-24', '10:14', '192.168.30.122', 1, 'sair'),
(246, '2013-10-24', '10:35', '192.168.30.122', 1, 'sair'),
(247, '2013-10-24', '10:46', '192.168.21.157', 1, 'sair'),
(248, '2013-10-24', '11:24', '192.168.30.122', 1, 'sair'),
(249, '2013-10-24', '11:24', '192.168.21.155', 1, 'sair'),
(250, '2013-10-24', '11:36', '192.168.21.155', 1, 'sair'),
(251, '2013-10-24', '11:36', '192.168.21.157', 1, 'sair'),
(252, '2013-10-24', '11:42', '192.168.30.122', 1, 'sair'),
(253, '2013-10-24', '12:02', '192.168.21.157', 1, 'sair'),
(254, '2013-10-24', '14:19', '192.168.30.122', 1, 'sair'),
(255, '2013-10-24', '14:20', '192.168.30.122', 1, 'sair'),
(256, '2013-10-24', '14:35', '192.168.30.122', 1, 'sair'),
(257, '2013-10-24', '14:45', '192.168.21.157', 1, 'sair'),
(258, '2013-10-24', '14:50', '192.168.21.157', 1, 'sair'),
(259, '2013-10-24', '15:10', '192.168.30.122', 1, 'sair'),
(260, '2013-10-24', '15:14', '192.168.30.122', 1, 'sair'),
(261, '2013-10-24', '15:20', '192.168.21.157', 1, 'sair'),
(262, '2013-10-24', '15:34', '192.168.30.122', 1, 'sair'),
(263, '2013-10-24', '15:36', '192.168.30.122', 1, 'sair'),
(264, '2013-10-24', '15:43', '192.168.30.122', 1, 'sair'),
(265, '2013-10-24', '15:49', '192.168.30.122', 1, 'sair'),
(266, '2013-10-24', '15:52', '192.168.30.122', 1, 'sair'),
(267, '2013-10-24', '15:57', '192.168.30.122', 1, 'sair'),
(268, '2013-10-24', '16:10', '192.168.30.122', 1, 'sair'),
(269, '2013-10-24', '16:17', '192.168.30.122', 1, 'sair'),
(270, '2013-10-24', '16:18', '192.168.30.122', 1, 'sair'),
(271, '2013-10-24', '16:27', '192.168.30.122', 1, 'sair'),
(272, '2013-10-25', '16:48', '192.168.30.122', 1, 'sair'),
(273, '2013-10-25', '16:49', '192.168.30.122', 1161, 'sair'),
(274, '2013-10-25', '16:54', '192.168.30.122', 1168, 'sair'),
(275, '2013-10-25', '16:56', '192.168.21.155', 1156, 'sair'),
(276, '2013-10-25', '16:57', '192.168.30.122', 1161, 'sair'),
(277, '2013-10-25', '17:01', '192.168.30.122', 1168, 'sair'),
(278, '2013-10-25', '17:13', '192.168.30.121', 1173, 'sair'),
(279, '2013-10-25', '17:15', '192.168.30.121', 1173, 'sair'),
(280, '2013-10-25', '17:17', '192.168.30.121', 1173, 'sair'),
(281, '2013-10-25', '17:17', '192.168.21.159', 1187, 'sair'),
(282, '2013-10-25', '17:24', '192.168.30.121', 1173, 'sair'),
(283, '2013-10-25', '17:25', '192.168.21.159', 1187, 'sair'),
(284, '2013-10-25', '17:25', '192.168.30.121', 1187, 'sair'),
(285, '2013-10-25', '17:26', '192.168.30.121', 1187, 'sair'),
(286, '2013-10-25', '17:32', '192.168.30.122', 1161, 'sair'),
(287, '2013-10-25', '17:32', '192.168.30.121', 1187, 'sair'),
(288, '2013-10-25', '17:35', '192.168.30.121', 1187, 'sair'),
(289, '2013-10-25', '17:36', '192.168.21.111', 1180, 'sair'),
(290, '2013-10-25', '17:37', '192.168.30.121', 1187, 'sair'),
(291, '2013-10-25', '17:41', '192.168.30.122', 1187, 'sair'),
(292, '2013-10-25', '17:44', '192.168.30.121', 1187, 'sair'),
(293, '2013-10-25', '17:49', '192.168.30.121', 1173, 'sair'),
(294, '2013-10-25', '17:50', '192.168.30.121', 1187, 'sair'),
(295, '2013-10-25', '17:51', '192.168.30.121', 1187, 'sair'),
(296, '2013-10-25', '17:52', '192.168.30.121', 1187, 'sair'),
(297, '2013-10-25', '17:53', '192.168.30.121', 1187, 'sair'),
(298, '2013-10-25', '17:54', '192.168.30.121', 1187, 'sair'),
(299, '2013-10-25', '17:55', '192.168.30.121', 1187, 'sair'),
(300, '2013-10-25', '18:02', '192.168.30.121', 1187, 'sair'),
(301, '2013-10-25', '18:50', '192.168.30.121', 1173, 'sair'),
(302, '2013-10-26', '09:08', '192.168.30.122', 1161, 'sair'),
(303, '2013-10-26', '09:56', '192.168.30.122', 1160, 'sair'),
(304, '2013-10-26', '10:02', '192.168.30.121', 1187, 'sair'),
(305, '2013-10-26', '10:05', '192.168.30.121', 1173, 'sair'),
(306, '2013-10-26', '10:31', '192.168.30.122', 1161, 'sair'),
(307, '2013-10-26', '10:32', '192.168.30.121', 1187, 'sair'),
(308, '2013-10-26', '10:39', '192.168.30.122', 1161, 'sair'),
(309, '2013-10-26', '10:39', '192.168.30.121', 1173, 'sair'),
(310, '2013-10-26', '10:40', '192.168.30.121', 1187, 'sair'),
(311, '2013-10-26', '10:41', '192.168.30.121', 1173, 'sair'),
(312, '2013-10-26', '10:42', '192.168.30.121', 1187, 'sair'),
(313, '2013-10-26', '10:42', '192.168.30.121', 1187, 'sair'),
(314, '2013-10-26', '10:42', '192.168.30.122', 1161, 'sair'),
(315, '2013-10-26', '10:43', '192.168.30.121', 1173, 'sair'),
(316, '2013-10-26', '10:44', '192.168.30.121', 1187, 'sair'),
(317, '2013-10-26', '10:46', '192.168.30.121', 1173, 'sair'),
(318, '2013-10-26', '10:54', '192.168.30.121', 1187, 'sair'),
(319, '2013-10-26', '11:00', '192.168.30.121', 1187, 'sair'),
(320, '2013-10-26', '11:02', '192.168.30.121', 1173, 'sair'),
(321, '2013-10-26', '11:02', '192.168.30.121', 1187, 'sair'),
(322, '2013-10-26', '11:04', '192.168.30.121', 1173, 'sair'),
(323, '2013-10-26', '11:04', '192.168.30.121', 1168, 'sair'),
(324, '2013-10-26', '11:06', '192.168.30.121', 1173, 'sair'),
(325, '2013-10-26', '11:06', '192.168.30.121', 1168, 'sair'),
(326, '2013-10-26', '11:11', '192.168.21.159', 1187, 'sair'),
(327, '2013-10-26', '11:13', '192.168.21.159', 1173, 'sair'),
(328, '2013-10-26', '11:14', '192.168.21.159', 1168, 'sair'),
(329, '2013-10-26', '11:14', '192.168.21.159', 1173, 'sair'),
(330, '2013-10-26', '11:15', '192.168.21.159', 1168, 'sair'),
(331, '2013-10-26', '11:16', '192.168.21.159', 1173, 'sair'),
(332, '2013-10-26', '11:17', '192.168.21.159', 1168, 'sair'),
(333, '2013-10-26', '11:17', '192.168.21.159', 1173, 'sair'),
(334, '2013-10-26', '11:18', '192.168.21.159', 1168, 'sair'),
(335, '2013-10-26', '11:18', '192.168.21.159', 1173, 'sair'),
(336, '2013-10-26', '11:19', '192.168.21.159', 1168, 'sair'),
(337, '2013-10-26', '11:21', '192.168.21.159', 1173, 'sair'),
(338, '2013-10-26', '11:22', '192.168.21.159', 1168, 'sair'),
(339, '2013-10-26', '11:23', '192.168.21.159', 1173, 'sair'),
(340, '2013-10-26', '11:24', '192.168.21.159', 1168, 'sair'),
(341, '2013-10-26', '11:26', '192.168.21.159', 1173, 'sair'),
(342, '2013-10-26', '11:29', '192.168.21.159', 1168, 'sair'),
(343, '2013-10-26', '11:30', '192.168.21.159', 1173, 'sair'),
(344, '2013-10-26', '11:30', '192.168.21.159', 1168, 'sair'),
(345, '2013-10-26', '11:31', '192.168.21.159', 1173, 'sair'),
(346, '2013-10-26', '11:32', '192.168.21.159', 1173, 'sair'),
(347, '2013-10-26', '11:33', '192.168.21.159', 1168, 'sair'),
(348, '2013-10-26', '11:34', '192.168.21.159', 1173, 'sair'),
(349, '2013-10-26', '11:35', '192.168.21.159', 1168, 'sair'),
(350, '2013-10-26', '11:36', '192.168.21.159', 1173, 'sair'),
(351, '2013-10-26', '11:36', '192.168.21.159', 1168, 'sair'),
(352, '2013-10-26', '11:37', '192.168.21.159', 1173, 'sair'),
(353, '2013-10-26', '11:38', '192.168.30.122', 1161, 'sair'),
(354, '2013-10-26', '11:38', '192.168.21.159', 1168, 'sair'),
(355, '2013-10-26', '11:39', '192.168.21.159', 1173, 'sair'),
(356, '2013-10-26', '11:39', '192.168.21.159', 1168, 'sair'),
(357, '2013-10-26', '11:41', '192.168.21.159', 1173, 'sair'),
(358, '2013-10-26', '14:04', '192.168.30.121', 1173, 'sair'),
(359, '2013-10-26', '14:07', '192.168.21.160', 1161, 'sair'),
(360, '2013-10-26', '14:07', '192.168.21.155', 1156, 'sair'),
(361, '2013-10-26', '14:08', '192.168.30.121', 1173, 'sair'),
(362, '2013-10-26', '14:44', '192.168.21.155', 1144, 'sair'),
(363, '2013-10-26', '14:54', '10.68.252.73', 1340, 'sair'),
(364, '2013-10-26', '16:06', '192.168.30.122', 1161, 'sair'),
(365, '2013-10-26', '16:10', '192.168.30.122', 1161, 'sair'),
(366, '2013-10-26', '16:12', '192.168.30.121', 1173, 'sair'),
(367, '2013-10-26', '16:13', '192.168.30.121', 1173, 'sair'),
(368, '2013-10-26', '16:15', '192.168.30.122', 1340, 'sair'),
(369, '2013-10-26', '16:17', '192.168.30.121', 1173, 'sair'),
(370, '2013-10-26', '16:21', '192.168.30.121', 1173, 'sair'),
(371, '2013-10-26', '16:28', '192.168.30.121', 1173, 'sair'),
(372, '2013-10-26', '16:29', '10.68.252.73', 1340, 'sair'),
(373, '2013-10-26', '16:39', '10.68.252.73', 1340, 'sair'),
(374, '2013-10-26', '16:46', '10.68.252.73', 1340, 'sair'),
(375, '2013-10-26', '16:49', '10.68.252.70', 1137, 'sair'),
(376, '2013-10-26', '16:58', '10.68.252.73', 1340, 'sair'),
(377, '2013-10-26', '17:10', '192.168.30.172', 1175, 'sair'),
(378, '2013-10-26', '17:13', '192.168.30.172', 1494, 'sair'),
(379, '2013-10-26', '17:16', '192.168.30.121', 1173, 'sair'),
(380, '2013-10-26', '18:07', '192.168.30.122', 1161, 'sair'),
(381, '2013-10-26', '18:17', '192.168.21.157', 1191, 'sair'),
(382, '2013-10-26', '18:23', '192.168.21.157', 1191, 'sair'),
(383, '2013-10-28', '06:25', '::1', 1161, 'sair'),
(384, '2013-10-28', '06:40', '::1', 1161, 'sair'),
(385, '2013-10-28', '07:31', '::1', 1161, 'sair'),
(386, '2013-10-28', '07:52', '::1', 1161, 'sair'),
(387, '2013-10-28', '07:53', '::1', 1161, 'sair'),
(388, '2013-10-28', '09:29', '192.168.21.157', 1174, 'sair'),
(389, '2013-10-28', '09:31', '192.168.21.160', 1168, 'sair'),
(390, '2013-10-28', '09:38', '192.168.21.48', 2, 'sair'),
(391, '2013-10-28', '09:42', '192.168.30.186', 1191, 'sair'),
(392, '2013-10-28', '10:45', '::1', 1173, 'sair'),
(393, '2013-10-28', '10:48', '::1', 1173, 'sair'),
(394, '2013-10-28', '09:53', '192.168.30.122', 1161, 'sair'),
(395, '2013-10-28', '10:57', '::1', 1173, 'sair'),
(396, '2013-10-28', '09:58', '192.168.21.160', 1168, 'sair'),
(397, '2013-10-28', '10:12', '192.168.30.122', 1161, 'sair'),
(398, '2013-10-28', '10:13', '192.168.30.122', 1161, 'sair'),
(399, '2013-10-28', '10:15', '192.168.21.160', 1168, 'sair'),
(400, '2013-10-28', '10:20', '192.168.21.160', 1168, 'sair'),
(401, '2013-10-28', '10:21', '192.168.30.186', 1191, 'sair'),
(402, '2013-10-28', '10:23', '192.168.30.186', 1191, 'sair'),
(403, '2013-10-28', '10:24', '192.168.30.122', 1161, 'sair'),
(404, '2013-10-28', '10:25', '192.168.30.122', 13, 'sair'),
(405, '2013-10-28', '10:26', '192.168.30.122', 1161, 'sair'),
(406, '2013-10-28', '10:32', '192.168.21.116', 555, 'sair'),
(407, '2013-10-28', '10:40', '192.168.22.119', 488, 'sair'),
(408, '2013-10-28', '10:44', '192.168.21.159', 1158, 'sair'),
(409, '2013-10-28', '10:45', '192.168.21.116', 555, 'sair'),
(410, '2013-10-28', '10:47', '192.168.21.157', 1154, 'sair'),
(411, '2013-10-28', '10:48', '192.168.22.119', 488, 'sair'),
(412, '2013-10-28', '10:50', '192.168.21.159', 1158, 'sair'),
(413, '2013-10-28', '10:52', '192.168.21.157', 1174, 'sair'),
(414, '2013-10-28', '10:57', '192.168.21.157', 1154, 'sair'),
(415, '2013-10-28', '10:58', '192.168.21.115', 488, 'sair'),
(416, '2013-10-28', '10:59', '192.168.20.231', 39, 'sair'),
(417, '2013-10-28', '11:00', '192.168.21.144', 1171, 'sair'),
(418, '2013-10-28', '11:01', '192.168.30.185', 1173, 'sair'),
(419, '2013-10-28', '11:02', '192.168.21.116', 555, 'sair'),
(420, '2013-10-28', '11:06', '192.168.21.159', 1158, 'sair'),
(421, '2013-10-28', '11:07', '192.168.30.177', 1164, 'sair'),
(422, '2013-10-28', '11:07', '192.168.20.231', 39, 'sair'),
(423, '2013-10-28', '11:08', '192.168.30.177', 1164, 'sair'),
(424, '2013-10-28', '11:10', '192.168.21.12', 13, 'sair'),
(425, '2013-10-28', '11:16', '192.168.30.186', 1191, 'sair'),
(426, '2013-10-28', '11:18', '192.168.30.186', 1173, 'sair'),
(427, '2013-10-28', '11:19', '192.168.30.186', 1191, 'sair'),
(428, '2013-10-28', '11:22', '192.168.20.231', 40, 'sair'),
(429, '2013-10-28', '11:23', '192.168.21.116', 555, 'sair'),
(430, '2013-10-28', '11:26', '192.168.21.12', 13, 'sair'),
(431, '2014-03-18', '20:55', '127.0.0.1', 1, 'sair'),
(432, '2014-03-18', '21:02', '127.0.0.1', 1, 'sair'),
(433, '2014-03-18', '21:19', '127.0.0.1', 1, 'sair'),
(434, '2014-03-18', '21:48', '127.0.0.1', 1, 'sair'),
(435, '2014-03-24', '22:43', '127.0.0.1', 1, 'sair'),
(436, '2014-03-24', '23:17', '127.0.0.1', 1, 'sair'),
(437, '2014-03-24', '23:30', '127.0.0.1', 1, 'sair'),
(438, '2014-08-14', '21:41', '127.0.0.1', 1, 'sair'),
(439, '2014-08-14', '21:58', '127.0.0.1', 1, 'sair'),
(440, '2014-10-02', '21:56', '127.0.0.1', 1, 'sair');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logistica`
--

CREATE TABLE IF NOT EXISTS `logistica` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `pai_id` int(10) NOT NULL,
  `aer_id` int(10) NOT NULL,
  `ati_id` int(10) NOT NULL,
  `cli_id` int(10) NOT NULL,
  `sed_id` int(10) DEFAULT NULL,
  `log_data` date NOT NULL,
  `log_qtd` int(10) NOT NULL,
  `log_localtime` varchar(255) DEFAULT NULL,
  `log_appron` varchar(255) NOT NULL,
  `log_timedep` varchar(255) NOT NULL,
  `log_msg` text,
  `sta_id` int(10) DEFAULT '1',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logisticaabastecimento`
--

CREATE TABLE IF NOT EXISTS `logisticaabastecimento` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `pai_id` int(10) NOT NULL,
  `aer_id` int(10) NOT NULL,
  `sed_id` int(10) NOT NULL,
  `cli_id` int(10) NOT NULL,
  `log_data` date NOT NULL,
  `log_num` varchar(20) NOT NULL,
  `log_qtd` int(10) NOT NULL,
  `log_dataabast` date NOT NULL,
  `log_horaabast` char(5) NOT NULL,
  `log_local` varchar(255) NOT NULL,
  `log_msg` text,
  `log_sta_id` int(1) NOT NULL DEFAULT '1',
  `sta_id` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logisticaacao`
--

CREATE TABLE IF NOT EXISTS `logisticaacao` (
  `aca_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aca_data` date NOT NULL,
  `aca_hora` char(5) NOT NULL,
  `aca_msg` text NOT NULL,
  `cli_id` int(10) NOT NULL,
  `log_id` int(10) NOT NULL,
  `log_sta_id` int(10) NOT NULL DEFAULT '1',
  `log_tipo` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`aca_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `logisticaacao`
--

INSERT INTO `logisticaacao` (`aca_id`, `aca_data`, `aca_hora`, `aca_msg`, `cli_id`, `log_id`, `log_sta_id`, `log_tipo`) VALUES
(2, '2013-10-18', '04:32', 'teste', 1, 1, 2, 1),
(3, '2013-10-19', '09:14', 'teste1', 1, 1, 1, 1),
(4, '2013-10-19', '03:53', '', 1, 0, 1, 1),
(5, '2013-10-19', '04:10', '', 1, 0, 1, 1),
(6, '2013-10-19', '04:12', '', 1, 0, 1, 1),
(7, '2013-10-19', '04:14', '', 1, 0, 1, 1),
(8, '2013-10-19', '04:15', '', 1, 0, 1, 1),
(9, '2013-10-19', '04:15', '', 1, 0, 1, 1),
(10, '2013-10-19', '04:16', '', 1, 9, 1, 1),
(11, '2013-10-21', '12:23', '', 1, 10, 1, 1),
(12, '2013-10-21', '12:24', '', 1, 11, 1, 1),
(13, '2013-10-21', '02:33', '', 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `logisticastatus`
--

CREATE TABLE IF NOT EXISTS `logisticastatus` (
  `log_sta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_sta_nome` varchar(50) NOT NULL,
  `log_sta_cor` varchar(10) DEFAULT NULL,
  `sta_id` int(1) DEFAULT '1',
  PRIMARY KEY (`log_sta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB' AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `logisticastatus`
--

INSERT INTO `logisticastatus` (`log_sta_id`, `log_sta_nome`, `log_sta_cor`, `sta_id`) VALUES
(1, 'Aberto', 'FF0000', 1),
(2, 'Em atendimento', 'FFD712', 1),
(4, 'Conclu&iacute;do', '009900', 1),
(5, 'ConcluÃ­do com pendÃªncias', 'FF8559', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `men_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `men_nome` varchar(255) NOT NULL,
  `men_icon` varchar(20) DEFAULT NULL,
  `vis_id` int(10) unsigned NOT NULL DEFAULT '1',
  `sta_id` int(1) NOT NULL DEFAULT '1',
  `men_dropdown` int(1) DEFAULT '0',
  `men_ordem` int(2) DEFAULT '1',
  `per_id` int(10) DEFAULT '1',
  PRIMARY KEY (`men_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Extraindo dados da tabela `menu`
--

INSERT INTO `menu` (`men_id`, `men_nome`, `men_icon`, `vis_id`, `sta_id`, `men_dropdown`, `men_ordem`, `per_id`) VALUES
(2, 'AdministraÃ§Ã£o', 'icon-tasks', 2, 1, 1, 1, 2),
(18, 'AvaliaÃ§Ã£o', 'icon-edit', 2, 1, 1, 18, 2),
(20, 'CIS', 'icon-refresh', 2, 1, 1, 5, 7),
(23, 'Documentos', 'icon-folder-open', 2, 1, 1, 7, 14),
(24, 'Facilidades', 'icon-star', 2, 1, 1, 10, 20),
(25, 'Meteorologia', 'icon-globe', 2, 1, 1, 9, 9),
(26, 'OcorrÃªncias', 'icon-bell', 2, 1, 1, 3, 2),
(27, 'SeguranÃ§a', 'icon-lock', 2, 1, 1, 6, 13),
(28, 'Logistica', 'icon-cog', 2, 1, 1, 20, 2),
(29, 'Chat', 'icon-comment', 1, 1, 0, 6, 2),
(30, 'POMA', 'icon-plane', 1, 1, 0, 3, 2),
(31, 'Manning', 'icon-user', 1, 1, 0, 2, 2),
(32, 'PÃ¡gina Principal', 'icon-home', 1, 1, 0, 1, 2),
(33, 'Facilidades', 'icon-star', 1, 1, 0, 7, 2),
(34, 'AvaliaÃ§Ã£o', 'icon-edit', 1, 1, 0, 5, 2),
(35, 'CIS', 'icon-refresh', 1, 1, 0, 4, 2),
(36, 'SeguranÃ§a de Voo', 'icon-plane', 1, 1, 1, 4, 2),
(38, 'SeguranÃ§a', 'icon-lock', 1, 1, 0, 4, 2),
(39, 'Shot Validation', 'icon-plane', 2, 1, 1, 19, 2),
(40, 'Lixeira', 'icon-trash', 2, 0, 1, 2, 4),
(41, 'NotÃ­cias', 'icon-comment', 2, 1, 0, 4, 15),
(43, 'SeguranÃ§a de Voo', 'icon-plane', 2, 1, 1, 20, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `meteoro`
--

CREATE TABLE IF NOT EXISTS `meteoro` (
  `met_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `met_nome` varchar(255) NOT NULL,
  `met_data` date DEFAULT NULL,
  `met_hora` time DEFAULT NULL,
  `met_url` varchar(255) DEFAULT NULL,
  `met_are_id` int(10) unsigned NOT NULL,
  `status` int(1) DEFAULT '1',
  `met_msg` text,
  PRIMARY KEY (`met_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `meteoroarea`
--

CREATE TABLE IF NOT EXISTS `meteoroarea` (
  `met_are_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `met_are_nome` varchar(255) NOT NULL,
  `met_are_id2` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`met_are_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `meteorocampo`
--

CREATE TABLE IF NOT EXISTS `meteorocampo` (
  `met_cam_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `met_cam_nome` varchar(200) NOT NULL,
  `met_cam_data` date NOT NULL,
  `met_cam_hora` char(5) NOT NULL,
  `met_cam_m` varchar(10) NOT NULL,
  `met_cam_t` varchar(10) NOT NULL,
  `met_cam_n` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`met_cam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `meteorocor`
--

CREATE TABLE IF NOT EXISTS `meteorocor` (
  `met_cor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `met_cor_nome` varchar(100) CHARACTER SET latin1 NOT NULL,
  `met_cor_cor` varchar(10) CHARACTER SET latin1 NOT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`met_cor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `meteorocor`
--

INSERT INTO `meteorocor` (`met_cor_id`, `met_cor_nome`, `met_cor_cor`, `status`) VALUES
(8, 'AZUL', '0F67FF', 1),
(9, 'VERDE', '4DFF29', 1),
(10, 'AMARELA', 'F8FF21', 1),
(11, 'AMBAR', 'FF870F', 1),
(12, 'VERMELHO', 'FF2E17', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `meteorostatus`
--

CREATE TABLE IF NOT EXISTS `meteorostatus` (
  `met_sta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `met_sta_nome` varchar(255) NOT NULL,
  `met_sta_m` varchar(10) DEFAULT NULL,
  `met_sta_t` varchar(10) DEFAULT NULL,
  `met_sta_n` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `met_sta_data` date NOT NULL,
  `met_sta_hora` char(5) NOT NULL,
  PRIMARY KEY (`met_sta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Extraindo dados da tabela `meteorostatus`
--

INSERT INTO `meteorostatus` (`met_sta_id`, `met_sta_nome`, `met_sta_m`, `met_sta_t`, `met_sta_n`, `status`, `met_sta_data`, `met_sta_hora`) VALUES
(14, 'SBSM', '0F67FF', '0F67FF', '0F67FF', 1, '2012-11-25', '09:29'),
(15, 'SBCG', '0F67FF', '0F67FF', '0F67FF', 1, '2012-11-27', '12:20'),
(16, 'SBCO', 'F8FF21', '0F67FF', '0F67FF', 1, '2012-11-27', '10:25'),
(17, 'SBFL', '4DFF29', '0F67FF', '0F67FF', 1, '2012-11-27', '09:53'),
(18, 'SBGL', 'F8FF21', 'F8FF21', 'F8FF21', 1, '2012-11-26', '15:35'),
(19, 'SBAF', 'F8FF21', 'F8FF21', 'F8FF21', 1, '2012-11-26', '18:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `midia`
--

CREATE TABLE IF NOT EXISTS `midia` (
  `mid_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid_nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mid_url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mid_tipo` varchar(10) CHARACTER SET utf8 NOT NULL,
  `sta_id` int(1) NOT NULL DEFAULT '1',
  `not_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`mid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE IF NOT EXISTS `noticia` (
  `not_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `not_data` date NOT NULL,
  `not_nome` text,
  `not_msg` text,
  `not_ok` int(1) NOT NULL DEFAULT '1',
  `not_tipo` int(1) NOT NULL DEFAULT '1',
  `not_status` varchar(10) DEFAULT NULL,
  `sta_id` int(1) DEFAULT '1',
  PRIMARY KEY (`not_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notseg`
--

CREATE TABLE IF NOT EXISTS `notseg` (
  `not_seg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `not_seg_nome` varchar(255) NOT NULL,
  `not_seg_url` varchar(255) DEFAULT NULL,
  `not_seg_msg` text,
  `not_seg_data` date NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`not_seg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `notseg`
--

INSERT INTO `notseg` (`not_seg_id`, `not_seg_nome`, `not_seg_url`, `not_seg_msg`, `not_seg_data`, `status`) VALUES
(1, 'A', '', 'AA', '2013-10-21', 0),
(2, 'Teste', '', 'Teste de Noticia de SeguranÃ§a', '2013-10-21', 0),
(3, 'teste1', '', 'aaaaaa<br>', '2013-10-24', 1),
(4, 'teste de doc', 'midia/seguranca/manningcruzex2013_v20.xls', 'aaaaa<br>', '2013-10-24', 1),
(5, 'Teste de NotÃ­cia de Force Protection', '', '<b>Testando =)</b><br><u>OlÃ¡ </u><br>', '2013-10-26', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `om`
--

CREATE TABLE IF NOT EXISTS `om` (
  `om_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `om_nome` varchar(30) CHARACTER SET latin1 NOT NULL,
  `om_id2` int(10) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`om_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

--
-- Extraindo dados da tabela `om`
--

INSERT INTO `om` (`om_id`, `om_nome`, `om_id2`, `status`) VALUES
(78, 'COMGAR', 78, 1),
(79, 'FAE 1', 78, 1),
(80, 'FAE 3', 78, 1),
(81, 'FAE 2', 78, 1),
(82, 'EAS', 78, 1),
(83, 'FAE 5', 78, 1),
(84, '3GCC1', 149, 1),
(85, '1 GTT', 78, 1),
(86, 'DTCEA-NT', 149, 1),
(87, 'CGNA', 149, 1),
(88, '1GAV10', 78, 1),
(89, 'FAE2', 78, 1),
(90, '1GAV4', 78, 1),
(91, '1GAVCA', 78, 1),
(92, 'IEAV', 78, 1),
(93, '1GAV16', 78, 1),
(94, '3GAV3', 78, 1),
(95, '2GAV3', 78, 1),
(96, '1GAV14', 78, 1),
(97, 'BANT', 78, 1),
(98, 'COPM1', 78, 1),
(99, 'COPM4', 78, 1),
(100, '2GGC1', 78, 1),
(101, '1GAV9', 78, 1),
(102, '1GAV5', 78, 1),
(103, 'CINDACTA III', 149, 1),
(104, 'DTCEA-PV', 78, 1),
(105, '3GAV10', 78, 1),
(106, 'CNDACTA III', 149, 1),
(107, 'CENIPA', 78, 1),
(108, 'COMAR II', 78, 1),
(109, '1GAV6', 78, 1),
(110, 'BARF', 78, 1),
(111, '2ETA', 78, 1),
(112, '1GAV8', 78, 1),
(113, '2GAV8', 78, 1),
(114, '7GAV8', 78, 1),
(115, '2GAV10', 78, 1),
(116, '3GAV8', 78, 1),
(117, '1GAV3', 78, 1),
(118, '1GDA', 78, 1),
(119, '2GAV6', 78, 1),
(120, '1GAV15', 78, 1),
(121, '1GTT', 78, 1),
(122, 'IPEV', 78, 1),
(123, '1GT1', 78, 1),
(124, '2GT2', 78, 1),
(125, 'DIRMAB', 78, 1),
(126, 'PAMAAF', 78, 1),
(127, 'PAMAGL', 78, 1),
(128, 'PAMALS', 78, 1),
(129, 'PAMASP', 78, 1),
(130, 'DSM-MN', 78, 1),
(131, 'BAAF', 78, 1),
(132, 'PAMARF', 78, 1),
(133, 'CTLA', 78, 1),
(134, 'FAE5', 78, 1),
(135, 'BAFZ', 78, 1),
(136, '1/6 GAV', 78, 1),
(137, 'ETA 2', 78, 1),
(138, 'CCABR', 151, 1),
(139, 'CCARJ', 151, 1),
(140, 'CCASJ', 151, 1),
(141, 'GCC', 149, 1),
(142, 'CCA-BR', 151, 1),
(143, 'COMAR 2', 78, 1),
(144, 'NUBAAAD', 78, 1),
(145, 'BINFA-22', 78, 1),
(146, 'BINFAE-RF', 78, 1),
(147, 'BINFAE-MN', 78, 1),
(148, 'COMAR 5', 78, 1),
(149, 'DECEA', 0, 1),
(150, 'DCTA', 0, 1),
(151, 'COMGAP', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagina`
--

CREATE TABLE IF NOT EXISTS `pagina` (
  `pag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pag_ok` int(1) NOT NULL DEFAULT '1',
  `pag_nome` varchar(255) NOT NULL,
  `pag_url` varchar(100) NOT NULL,
  `pag_tip_id` int(10) unsigned DEFAULT NULL,
  `sta_id` int(1) NOT NULL DEFAULT '1',
  `vis_id` int(2) NOT NULL DEFAULT '1',
  `pag_titulo` int(1) NOT NULL DEFAULT '1',
  `pag_icon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=280 ;

--
-- Extraindo dados da tabela `pagina`
--

INSERT INTO `pagina` (`pag_id`, `pag_ok`, `pag_nome`, `pag_url`, `pag_tip_id`, `sta_id`, `vis_id`, `pag_titulo`, `pag_icon`) VALUES
(1, 1, 'NotÃ­cias', 'noticia', 1, 1, 2, 1, NULL),
(2, 1, 'NotÃ­cia :: Editar', 'noticia_alt', 2, 1, 2, 1, ''),
(3, 1, 'NotÃ­cia :: Incluir', 'noticia_inc', 2, 1, 2, 1, ''),
(9, 1, 'PÃ¡ginas', 'pagina', 1, 1, 2, 1, ''),
(10, 1, 'PÃ¡ginas : Incluir', 'pagina_inc', 2, 1, 2, 1, ''),
(11, 1, 'PÃ¡ginas :: Alterar', 'pagina_alt', 2, 1, 2, 1, ''),
(12, 1, 'Perfil', 'perfil', 1, 1, 2, 1, ''),
(13, 1, 'Perfil :: Incluir', 'perfil_inc', 2, 1, 2, 1, ''),
(14, 1, 'Perfil :: Alterar', 'perfil_alt', 2, 1, 2, 1, ''),
(24, 1, 'Manning', 'manning', 1, 1, 2, 1, ''),
(25, 1, 'Manning :: Editar', 'manning_alt', 2, 1, 2, 1, ''),
(35, 1, 'Tipo de PÃ¡ginas', 'paginatipo', 1, 1, 2, 1, ''),
(36, 1, 'Tipo de PÃ¡ginas :: Incluir', 'paginatipo_inc', 2, 1, 2, 1, ''),
(37, 1, 'Tipo de PÃ¡ginas :: Alterar', 'paginatipo_alt', 2, 1, 2, 1, ''),
(38, 1, 'Dados do usuÃ¡rio', 'manning_editar', 6, 1, 2, 1, 'icon-user'),
(39, 1, 'BotÃµes', 'paginabotao', 1, 1, 2, 1, ''),
(40, 1, 'BotÃµes :: Incluir', 'paginabotao_inc', 2, 1, 2, 1, ''),
(41, 1, 'BotÃµes :: Editar', 'paginabotao_alt', 2, 1, 2, 1, ''),
(43, 1, 'Tipos de UsuÃ¡rios', 'tipousuario', 1, 1, 2, 1, NULL),
(44, 1, 'Tipo de UsuÃ¡rios :: Incluir', 'tipousuario_inc', 2, 1, 2, 1, NULL),
(45, 1, 'Tipo de UsuÃ¡rios :: Alterar', 'tipousuario_alt', 2, 1, 2, 1, NULL),
(50, 1, 'Menus', 'menu', 8, 1, 2, 1, ''),
(51, 1, 'Menus :: Incluir', 'menu_inc', 2, 1, 2, 1, ''),
(52, 1, 'Menus :: Alterar', 'menu_alt', 2, 1, 2, 1, ''),
(53, 1, 'Itens de menu', 'item', 7, 1, 2, 1, ''),
(54, 1, 'Itens de menu :: Incluir', 'item_inc', 2, 1, 2, 1, ''),
(55, 1, 'Itens de menu :: Alterar', 'item_alt', 2, 1, 2, 1, ''),
(56, 1, 'Painel de Controle', 'adm', 12, 1, 2, 1, 'icon-cog'),
(75, 1, 'Logs de acesso', 'acesso', 9, 1, 2, 1, NULL),
(76, 1, 'Menus :: Lixeira', 'menu_lixo', 5, 1, 2, 1, ''),
(85, 1, 'Perfil :: Lixeira', 'perfil_lixo', 5, 1, 2, 1, ''),
(86, 1, 'Itens de menu :: Lixeira', 'item_lixo', 5, 1, 2, 1, ''),
(87, 1, 'Tipos de pÃ¡ginas :: Lixeira', 'paginatipo_lixo', 5, 1, 2, 1, ''),
(88, 1, 'BotÃµes :: Lixeira', 'paginabotao_lixo', 5, 1, 2, 1, ''),
(89, 1, 'NotÃ­cias :: Lixeira', 'noticia_lixo', 5, 1, 2, 1, NULL),
(90, 1, 'Manning :: Lixeira', 'manning_lixo', 5, 1, 2, 1, ''),
(100, 1, 'PÃ¡ginas :: Lixeira', 'pagina_lixo', 5, 1, 2, 1, 'icon-trash'),
(101, 1, 'PÃ¡gina de ERRO!', 'erro', 9, 1, 2, 1, ''),
(114, 1, 'Ocorrencias', 'helpdesk', 10, 1, 2, 1, ''),
(115, 1, 'Helpdesk :: Incluir', 'helpdesk_inc', 2, 1, 2, 1, ''),
(116, 1, 'Helpdesk :: Alterar', 'helpdesk_alt', 2, 1, 2, 1, ''),
(117, 1, 'Setor de atuaÃ§Ã£o', 'setor', 1, 1, 2, 1, ''),
(118, 1, 'Setor de AtuaÃ§Ã£o :: Incluir', 'setor_inc', 2, 1, 2, 1, ''),
(119, 1, 'Setor de atuaÃ§Ã£o :: Alterar', 'setor_alt', 2, 1, 2, 1, ''),
(123, 1, 'Status de Chamados', 'status', 1, 1, 2, 1, ''),
(124, 1, 'Status de Chamados :: Incluir', 'status_inc', 2, 1, 2, 1, NULL),
(125, 1, 'Status de Chamados :: Alterar', 'status_alt', 2, 1, 2, 1, ''),
(126, 1, 'Prioridade', 'prioridade', 1, 1, 2, 1, NULL),
(127, 1, 'Prioridade :: Incluir', 'prioridade_inc', 2, 1, 2, 1, NULL),
(128, 1, 'Prioridade :: Alterar', 'prioridade_alt', 2, 1, 2, 1, NULL),
(129, 1, 'Sair do sistema', 'sair', 9, 1, 2, 1, 'icon-off'),
(133, 1, 'Idioma :: Incluir', 'idioma_inc', 2, 1, 2, 1, ''),
(134, 1, 'Idioma :: Editar', 'idioma_alt', 2, 1, 2, 1, ''),
(135, 1, 'Dados do Projeto', 'projeto', 6, 1, 2, 1, ''),
(136, 1, 'PÃ¡gina Principal', 'home', 13, 1, 1, 0, ''),
(137, 1, 'Idioma', 'idioma', 14, 1, 2, 1, 'icon-book'),
(138, 1, 'CIS', 'ciss', 1, 1, 2, 1, ''),
(139, 1, 'CIS :: Incluir', 'ciss_inc', 2, 1, 2, 1, ''),
(140, 1, 'CIS :: Editar', 'ciss_alt', 2, 1, 2, 1, ''),
(141, 1, 'CIS :: Ãrea', 'cissarea', 1, 1, 2, 1, ''),
(142, 1, 'CIS :: Ãrea :: Incluir', 'cissarea_inc', 2, 1, 2, 1, ''),
(143, 1, 'CIS :: Ãrea :: Editar', 'cissarea_alt', 2, 1, 2, 1, ''),
(144, 1, 'CIS :: Status', 'cissstatus', 1, 1, 2, 1, ''),
(145, 1, 'CIS :: Status :: Incluir', 'cissstatus_inc', 2, 1, 2, 1, ''),
(146, 1, 'CIS :: Status :: Editar', 'cissstatus_alt', 2, 1, 2, 1, ''),
(147, 1, 'AvaliaÃ§Ã£o', 'eval', 16, 1, 2, 1, ''),
(148, 1, 'AvaliaÃ§Ã£o :: Incluir', 'eval_inc', 13, 1, 1, 1, 'icon-edit'),
(149, 1, 'AvaliaÃ§Ã£o :: Grupos', 'evalgrupo', 1, 1, 2, 1, ''),
(150, 1, 'AvaliaÃ§Ã£o :: Grupos :: Incluir', 'evalgrupo_inc', 2, 1, 2, 1, ''),
(151, 1, 'AvaliaÃ§Ã£o :: Grupos :: Editar', 'evalgrupo_alt', 2, 1, 2, 1, ''),
(152, 1, 'AvaliaÃ§Ã£o :: Perguntas', 'evalpergunta', 1, 1, 2, 1, ''),
(153, 1, 'AvaliaÃ§Ã£o :: Perguntas :: Incluir', 'evalpergunta_inc', 2, 1, 2, 1, ''),
(154, 1, 'AvaliaÃ§Ã£o :: Perguntas :: Editar', 'evalpergunta_alt', 2, 1, 2, 1, ''),
(155, 1, 'AvaliaÃ§Ã£o :: Pontos', 'evalponto', 1, 1, 2, 1, ''),
(156, 1, 'AvaliaÃ§Ã£o :: Pontos :: Incluir', 'evalponto_inc', 2, 1, 2, 1, ''),
(157, 1, 'AvaliaÃ§Ã£o :: Pontos :: Editar', 'evalponto_alt', 2, 1, 2, 1, ''),
(158, 1, 'AvaliaÃ§Ã£o :: ServiÃ§os', 'evalservico', 1, 1, 2, 1, ''),
(159, 1, 'AvaliaÃ§Ã£o :: ServiÃ§os :: Incluir', 'evalservico_inc', 2, 1, 2, 1, ''),
(160, 1, 'AvaliaÃ§Ã£o :: ServiÃ§os :: Editar', 'evalservico_alt', 2, 1, 2, 1, ''),
(167, 1, 'Documentos', 'doc', 1, 1, 2, 1, ''),
(168, 1, 'Documentos :: Incluir', 'doc_inc', 2, 1, 2, 1, ''),
(169, 1, 'Documentos :: Editar', 'doc_alt', 2, 1, 2, 1, ''),
(170, 1, 'Documentos :: Ãrea', 'docarea', 1, 1, 2, 1, ''),
(171, 1, 'Documentos :: Ãrea :: Incluir', 'docarea_inc', 2, 1, 2, 1, ''),
(172, 1, 'Documentos :: Ãrea :: Editar', 'docarea_alt', 2, 1, 2, 1, ''),
(173, 1, 'Facilidades', 'facilidade', 1, 1, 2, 1, ''),
(174, 1, 'Facilidades :: Incluir', 'facilidade_inc', 2, 1, 2, 1, ''),
(175, 1, 'Facilidades :: Editar', 'facilidade_alt', 2, 1, 2, 1, ''),
(176, 1, 'Facilidades :: Ãrea', 'facilidadearea', 1, 1, 2, 1, ''),
(177, 1, 'Facilidades :: Ãrea :: Incluir', 'facilidadearea_inc', 2, 1, 2, 1, ''),
(178, 1, 'Facilidades :: Ãrea :: Editar', 'facilidadearea_alt', 2, 1, 2, 1, ''),
(179, 1, 'Meteorologia', 'meteoro', 1, 1, 2, 1, ''),
(180, 1, 'Meteorologia :: Incluir', 'meteoro_inc', 2, 1, 2, 1, ''),
(181, 1, 'Meteorologia :: Editar', 'meteoro_alt', 2, 1, 2, 1, ''),
(182, 1, 'Meteorologia :: Ãrea', 'meteoroarea', 1, 1, 2, 1, ''),
(183, 1, 'Meteorologia :: Ãrea :: Incluir', 'meteoroarea_inc', 2, 1, 2, 1, ''),
(184, 1, 'Meteorologia :: Ãrea :: Editar', 'meteoroarea_alt', 2, 1, 2, 1, ''),
(185, 1, 'Om', 'om', 1, 1, 2, 1, ''),
(186, 1, 'Om :: Incluir', 'om_inc', 2, 1, 2, 1, ''),
(187, 1, 'Om :: Alterar', 'om_alt', 2, 1, 2, 1, ''),
(188, 1, 'PaÃ­s', 'pais', 1, 1, 2, 1, ''),
(189, 1, 'PaÃ­s :: Incluir', 'pais_inc', 2, 1, 2, 1, ''),
(190, 1, 'PaÃ­s :: Alterar', 'pais_alt', 2, 1, 2, 1, ''),
(191, 1, 'Posto', 'posto', 1, 1, 2, 1, ''),
(192, 1, 'Posto :: Incluir', 'posto_inc', 2, 1, 2, 1, ''),
(193, 1, 'Posto :: Alterar', 'posto_alt', 2, 1, 2, 1, ''),
(194, 1, 'Local', 'local', 1, 1, 2, 1, ''),
(195, 1, 'Local :: Incluir', 'local_inc', 2, 1, 2, 1, ''),
(196, 1, 'Local :: Editar', 'local_alt', 2, 1, 2, 1, ''),
(197, 1, 'Grupos', 'grupo', 1, 1, 2, 1, ''),
(198, 1, 'Grupos :: Incluir', 'grupo_inc', 2, 1, 2, 1, ''),
(199, 1, 'Grupos :: Editar', 'grupo_alt', 2, 1, 2, 1, ''),
(200, 1, 'Manning List', 'manning_list', 13, 1, 3, 1, ''),
(201, 1, 'Facilidades :: Listagem', 'facilidade_list', 13, 1, 3, 1, 'icon-star'),
(202, 1, 'CIS', 'ciss_list', 13, 1, 1, 1, 'icon-wrench'),
(203, 1, 'Relprev :: Insert', 'relprev_inc', 15, 1, 3, 1, 'icon-plane'),
(204, 1, 'SeguranÃ§a', 'notseg', 1, 1, 2, 1, ''),
(205, 1, 'SeguranÃ§a :: Incluir', 'notseg_inc', 2, 1, 2, 1, ''),
(206, 1, 'SeguranÃ§a :: Editar', 'notseg_alt', 2, 1, 2, 1, ''),
(207, 1, 'Helpdesk :: AdministraÃ§Ã£o', 'helpdeskadm', 1, 1, 2, 1, ''),
(208, 1, 'Helpdesk :: AdministraÃ§Ã£o :: Incluir', 'helpdeskadm_inc', 2, 1, 2, 1, ''),
(209, 1, 'Helpdesk :: AdministraÃ§Ã£o :: Editar', 'helpdeskadm_alt', 2, 1, 2, 1, ''),
(210, 1, 'Helpdesk :: Ãrea', 'helpdeskarea', 1, 1, 2, 1, ''),
(211, 1, 'Helpdesk :: Ãrea :: Incluir', 'helpdeskarea_inc', 2, 1, 2, 1, ''),
(212, 1, 'Helpdesk :: Ãrea :: Editar', 'helpdeskarea_alt', 2, 1, 2, 1, ''),
(213, 1, 'Helpdesk :: Perfil', 'helpdeskperfil', 1, 1, 2, 1, ''),
(214, 1, 'Helpdesk :: Perfil :: Incluir', 'helpdeskperfil_inc', 2, 1, 2, 1, ''),
(215, 1, 'Helpdesk :: Perfil :: Editar', 'helpdeskperfil_alt', 2, 1, 2, 1, ''),
(216, 1, 'Helpdesk :: Status', 'helpdeskstatus', 1, 1, 2, 1, ''),
(217, 1, 'Helpdesk :: Status :: Incluir', 'helpdeskstatus_inc', 2, 1, 2, 1, ''),
(218, 1, 'Helpdesk :: Status :: Alterar', 'helpdeskstatus_alt', 2, 1, 2, 1, ''),
(219, 1, 'GSE/GPU Request', 'logistica', 1, 1, 2, 1, ''),
(220, 1, 'GSE/GPU Request :: Incluir', 'logistica_inc', 18, 1, 2, 1, ''),
(221, 1, 'GSE/GPU Request :: Editar', 'logistica_alt', 2, 1, 2, 1, ''),
(222, 1, 'Aeronaves', 'aeronave', 1, 1, 2, 1, ''),
(223, 1, 'Aeronaves :: Incluir', 'aeronave_inc', 2, 1, 2, 1, ''),
(224, 1, 'Aeronaves :: Editar', 'aeronave_alt', 2, 1, 2, 1, ''),
(225, 1, 'GSE/GPU Necessidades', 'atividade', 1, 1, 2, 1, ''),
(226, 1, 'GSE/GPU List :: Incluir', 'atividade_inc', 18, 1, 2, 1, ''),
(227, 1, 'GSE/GPU List :: Editar', 'atividade_alt', 2, 1, 2, 1, ''),
(228, 1, 'AvaliaÃ§Ã£o :: Pesquisa', 'eval_pesquisa', 19, 1, 3, 1, 'icon-check'),
(229, 1, 'Logistica :: Status', 'logisticastatus', 1, 1, 2, 1, ''),
(230, 1, 'Logistica :: Status :: Incluir', 'logisticastatus_inc', 2, 1, 2, 1, ''),
(231, 1, 'Logistica :: Status :: Editar', 'logisticastatus_alt', 2, 1, 2, 1, ''),
(232, 1, 'Logistica :: Lixo', 'logistica_lixo', 5, 1, 2, 1, ''),
(233, 1, 'Documentos :: Tipos', 'doctipo', 1, 1, 2, 1, ''),
(234, 1, 'Documentos :: Tipos :: Incluir', 'doctipo_inc', 2, 1, 2, 1, ''),
(235, 1, 'Documentos :: Tipos :: Editar', 'doctipo_alt', 2, 1, 2, 1, ''),
(236, 1, 'Abastecimento', 'logisticaabastecimento', 1, 1, 2, 1, ''),
(237, 1, 'Abastecimento :: Incluir', 'logisticaabastecimento_inc', 18, 1, 2, 1, ''),
(238, 1, 'Abastecimento :: Editar', 'logisticaabastecimento_alt', 2, 1, 2, 1, ''),
(239, 1, 'Shot Validation - AA', 'shotvalida', 21, 1, 2, 1, ''),
(240, 1, 'Shot Validation - AA :: Incluir', 'shotvalida_inc', 2, 1, 2, 1, ''),
(241, 1, 'Shot Validation - AA :: Editar', 'shotvalida_alt', 2, 1, 3, 1, ''),
(242, 1, 'Shot Validation - AA :: List', 'shotvalida_list', 17, 1, 2, 1, 'icon-plane'),
(243, 1, 'GSE/GPU Request :: List', 'logistica_list', 17, 1, 2, 1, 'icon-plane'),
(244, 1, 'Abastecimento :: List', 'logisticaabastecimento_list', 17, 1, 2, 1, ''),
(245, 1, 'Abastecimento :: Lixeira', 'logisticaabastecimento_lixo', 5, 1, 2, 1, 'icon-plane'),
(246, 1, 'Shot Validation - AG', 'shotvalidaag', 21, 1, 2, 1, ''),
(247, 1, 'Shot Validation - AG :: Incluir', 'shotvalidaag_inc', 2, 1, 2, 1, ''),
(248, 1, 'Shot Validation - AG :: Editar', 'shotvalidaag_alt', 2, 1, 2, 1, ''),
(249, 1, 'Shot Validation - AG :: List', 'shotvalidaag_list', 17, 1, 2, 1, 'icon-plane'),
(250, 1, 'Meteorologia :: Cores', 'meteorocor', 1, 1, 2, 1, ''),
(251, 1, 'Meteorologia :: Cores :: Incluir', 'meteorocor_inc', 2, 1, 2, 1, ''),
(252, 1, 'Meteorologia :: Cores :: Editar', 'meteorocor_alt', 2, 1, 2, 1, ''),
(253, 1, 'Meteorologia :: Status', 'meteorostatus', 1, 1, 2, 1, ''),
(254, 1, 'Meteorologia :: Status :: Incluir', 'meteorostatus_inc', 2, 1, 2, 1, ''),
(255, 1, 'Meteorologia :: Status :: Editar', 'meteorostatus_alt', 2, 1, 2, 1, ''),
(256, 1, 'Meteorologia :: Cores de Campo', 'meteorocampo', 1, 1, 2, 1, ''),
(257, 1, 'Meteorologia :: Cores de Campo :: Incluir', 'meteorocampo_inc', 2, 1, 2, 1, ''),
(258, 1, 'Meteorologia :: Cores de Campo :: Editar', 'meteorocampo_alt', 2, 1, 2, 1, ''),
(259, 1, 'Helpdesk :: Prioridade', 'helpdeskprioridade', 1, 1, 2, 1, ''),
(260, 1, 'Helpdesk :: Prioridade :: Incluir', 'helpdeskprioridade_inc', 2, 1, 2, 1, ''),
(261, 1, 'Helpdesk :: Prioridade :: Editar', 'helpdeskprioridade_alt', 2, 1, 2, 1, ''),
(262, 1, 'Local :: Lixeira', 'local_lixo', 5, 1, 2, 1, ''),
(263, 1, 'Manning :: Incluir', 'manning_inc', 2, 1, 2, 1, ''),
(264, 1, 'Country :: Lixeira', 'pais_lixo', 5, 1, 2, 1, ''),
(265, 1, 'MÃ­dias', 'midia', 20, 1, 2, 1, ''),
(266, 1, 'MÃ­dias :: Incluir', 'midia_inc', 2, 1, 2, 1, ''),
(267, 1, 'MÃ­dias :: Editar', 'midia_alt', 2, 1, 2, 1, ''),
(268, 1, 'MÃ­dias :: Lixeira', 'midia_lixo', 5, 1, 2, 1, ''),
(269, 1, 'SeguranÃ§a :: Listagem', 'notseg_list', 13, 1, 3, 1, 'icon-lock'),
(270, 1, 'Avisos Operacionais', 'noticiaaviso', 1, 1, 2, 1, ''),
(271, 1, 'Aviso :: Incluir', 'noticiaaviso_inc', 2, 1, 2, 1, ''),
(272, 1, 'Aviso :: Editar', 'noticiaaviso_alt', 2, 1, 2, 1, ''),
(273, 1, 'Aviso :: Lixeira', 'noticiaaviso_lixo', 5, 1, 2, 1, ''),
(274, 1, 'Helpdesk :: AdministraÃ§Ã£o :: Lixeira', 'helpdeskadm_lixo', 5, 1, 2, 1, ''),
(275, 1, 'Evaluation Form', 'eval_inc2', 13, 1, 1, 1, ''),
(276, 1, 'Grupos :: Lixeira', 'grupo_lixo', 5, 1, 2, 1, ''),
(277, 1, 'Relprev', 'relprev', 21, 1, 2, 1, ''),
(278, 1, 'Relprev :: Editar', 'relprev_alt', 2, 1, 2, 1, ''),
(279, 1, 'Helpdesk :: Imprimir', 'helpdesk_imp', 9, 1, 2, 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginabotao`
--

CREATE TABLE IF NOT EXISTS `paginabotao` (
  `pag_btn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pag_btn_nome` varchar(200) NOT NULL,
  `pag_btn_url` varchar(100) NOT NULL,
  `pag_btn_botao` text CHARACTER SET latin1,
  `sta_id` int(1) DEFAULT '1',
  PRIMARY KEY (`pag_btn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Extraindo dados da tabela `paginabotao`
--

INSERT INTO `paginabotao` (`pag_btn_id`, `pag_btn_nome`, `pag_btn_url`, `pag_btn_botao`, `sta_id`) VALUES
(1, 'Incluir', 'incluir', '<input type="button" name="btnIncluir" value="Incluir" class=''btn btn-success'' onclick="location.href=''?pag=<?php echo $_SESSION[''pag''];?>_inc''">', 1),
(2, 'Excluir', 'excluir', '<input onclick="confirmSubmit()" type="submit" name="btnExcluir" value="Excluir" class=''btn btn-danger''>', 1),
(3, 'Salvar', 'salvar', '<input name="botao" type=''submit'' class="btn btn-primary" value="Salvar" />', 1),
(4, 'Voltar', 'voltar', '<input name="voltar" type=''button'' class="btn" value="Voltar" />', 1),
(5, 'Excluir Definitivamente Item', 'excluirdef', '<input onclick="confirmSubmit()" type="submit" name="btnExcluir" value="Excluir Definitivamente" class="btn btn-danger">', 1),
(6, 'Restaurar Item', 'recuperar', '<input type="submit" name="btnRecuperar" value="Recuperar Item" class="btn btn-success">', 1),
(7, 'Voltar Ã  administraÃ§Ã£o', 'voltaadm', '<input name="voltar" type=''button'' class="btn" value="Voltar Ã  administraÃ§Ã£o" onClick="javascript:location.href=''?pag=adm'';" />', 1),
(8, 'Atualizar ordem', 'ordem', '<input name="btnOrdem" type=''submit'' class="btn btn-info" value="Atualizar Ordem" />', 1),
(9, 'Voltar ao Menu', 'voltamenu', '<input name="voltar" type=''button'' class="btn" value="Voltar ao menu" onClick="javascript:location.href=''?pag=menu'';" />', 1),
(10, 'Atualizar dados', 'atualizardados', '<input name="btn" type=''button'' class="btn btn-info" value="Atualizar dados cadastrais"  />', 1),
(11, 'Atualizar painel', 'atualizarpainel', '<input name="voltar" type=''button'' class="btn" value="Atualizar" />', 1),
(12, 'Sair do sistema', 'sair', '<input name="btn" type=''button'' class="btn btn-danger" value="Sair do Sistema"  />', 1),
(13, 'Voltar a pÃ¡gina principal', 'voltahome', '<input name="voltar" type=''button'' class="btn" value="Voltar a pÃ¡gina principal" />', 1),
(14, 'Salvar traduÃ§Ãµes', 'salvaridioma', '<input name="btnSalvarIdioma" type=''submit'' class="btn btn-primary" value="Salvar taduÃ§Ãµes" />', 1),
(15, 'Enviar RelatÃ³rio', 'incluirrelatorio', '<input name="botao" value="Enviar RelatÃ³rio" type="submit" class="btn btn-large btn-primary">', 1),
(16, 'Incluir Listagens', 'incluirlist', '<input type="button" name="btnIncluir" value="Incluir na listagem" class=''btn btn-success''  tabindex="0">', 1),
(17, 'Enviar', 'enviar', '<input name="botao" type=''submit'' class="btn btn-primary" value=Enviar" tabindex="2" />', 1),
(18, 'Voltar ao Evaluation', 'voltaeval', '<input name="voltar" type=''button'' class="btn" value=''Voltar ao Evaluiation'' />', 1),
(19, 'Voltar a notÃ­cias', 'voltanoticia', '<input name="voltar" type=''button'' class="btn" value="Voltar para notÃ­cias"  />', 1),
(20, 'RelatÃ³rio AnalÃ­tico', 'evalanalitico', '<input name="rela_analitico" type=''button'' class="btn" value="RelatÃ³rio AnalÃ­tico" />', 1),
(21, 'RelatÃ³rio Imediato', 'evalimediato', '<input name="rela_imediato" type=''button'' class="btn" value="RelatÃ³rio Imediato" />', 1),
(22, 'RelatÃ³rio SintÃ©tico Pergunta', 'evalsinteticopergunta', '<input name="rela_sintetico_pergunta" type=''button'' class="btn" value="RelatÃ³rio SintÃ©tico Pergunta" />', 1),
(23, 'RelatÃ³rio SintÃ©tico PontuaÃ§Ã£o', 'evalsinteticopontuacao', '<input name="rela_sintetico_pontuacao" type=''button'' class="btn" value="RelatÃ³rio SintÃ©tico PontuaÃ§Ã£o" />', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginatipo`
--

CREATE TABLE IF NOT EXISTS `paginatipo` (
  `pag_tip_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pag_tip_nome` varchar(255) NOT NULL,
  `sta_id` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pag_tip_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Extraindo dados da tabela `paginatipo`
--

INSERT INTO `paginatipo` (`pag_tip_id`, `pag_tip_nome`, `sta_id`) VALUES
(1, 'Listagem PadrÃ£o', 1),
(2, 'Incluir / Editar PadrÃ£o', 1),
(3, 'Editar Cadastro', 1),
(4, 'Voltar', 1),
(5, 'ExclusÃ£o Definitiva', 1),
(6, 'Atualizar cadastro', 1),
(7, 'Listagem de itens - OrdenaÃ§Ã£o', 1),
(8, 'Listagem de menus - OrdenaÃ§Ã£o', 1),
(9, 'Voltar a AdministraÃ§Ã£o', 1),
(10, 'Incluir', 1),
(12, 'Painel de Controle', 1),
(13, 'Voltar a pÃ¡gina principal', 1),
(14, 'Listagem Idioma', 1),
(15, 'Incluir relatÃ³rio', 1),
(16, 'Evaluation', 1),
(17, 'Logistica para usuÃ¡rios comuns', 1),
(18, 'Incluir / Editar - Logistica', 1),
(19, 'Evaluation - Voltar', 1),
(20, 'Listagem mÃ­dias', 1),
(21, 'Excluir', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginatipo_paginabotao`
--

CREATE TABLE IF NOT EXISTS `paginatipo_paginabotao` (
  `pag_tip_id` int(10) unsigned NOT NULL,
  `pag_btn_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pag_tip_id`,`pag_btn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paginatipo_paginabotao`
--

INSERT INTO `paginatipo_paginabotao` (`pag_tip_id`, `pag_btn_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 3),
(4, 4),
(5, 5),
(5, 6),
(6, 3),
(6, 7),
(7, 1),
(7, 2),
(7, 8),
(7, 9),
(8, 1),
(8, 2),
(8, 8),
(9, 7),
(10, 1),
(10, 7),
(11, 1),
(11, 7),
(11, 10),
(12, 10),
(12, 12),
(13, 13),
(14, 1),
(14, 2),
(14, 14),
(15, 13),
(15, 15),
(16, 2),
(16, 20),
(16, 21),
(16, 22),
(16, 23),
(17, 7),
(17, 16),
(18, 4),
(18, 17),
(19, 18),
(20, 1),
(20, 2),
(20, 19),
(21, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE IF NOT EXISTS `pais` (
  `pai_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pai_nome` varchar(255) NOT NULL,
  `pai_sigla` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pai_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`pai_id`, `pai_nome`, `pai_sigla`, `status`) VALUES
(1, 'BRAZIL', 'BRA', 1),
(2, 'ARGENTINA', 'ARG', 1),
(3, 'CANADA', 'CAN', 1),
(4, 'EQUADOR', 'EQU', 1),
(5, 'CHILE', 'CHI', 1),
(6, 'FRANCE', 'FR', 0),
(7, 'PERU', 'PE', 0),
(8, 'SWEDEN', 'SE', 0),
(9, 'URUGUAY', 'UY', 0),
(10, 'VENEZUELA', 'VEN', 1),
(11, 'UK', 'UK', 0),
(12, 'USA', 'USA', 1),
(13, 'Portugal', 'PT', 0),
(14, 'COLOMBIA', 'COL', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `per_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `per_nome` varchar(200) NOT NULL,
  `sta_id` int(1) DEFAULT '1',
  PRIMARY KEY (`per_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`per_id`, `per_nome`, `sta_id`) VALUES
(1, 'Super Administrador', 1),
(2, 'UsuÃ¡rio Comum', 1),
(3, 'AdministraÃ§Ã£o', 1),
(4, 'Helpdesk :: GerÃªncia', 1),
(5, 'Helpdesk :: CoordenaÃ§Ã£o', 1),
(6, 'Helpdesk :: Solucionador', 1),
(7, 'CISS :: GerÃªncia', 1),
(8, 'CISS :: CoordenaÃ§Ã£o', 1),
(9, 'Meteorologia', 1),
(10, 'Meteorologia :: Ãreas de Campo', 1),
(11, 'Evaluation', 1),
(12, 'Sipaer', 1),
(13, 'Force Protection', 1),
(14, 'Comgar', 1),
(15, 'Cecomsaer', 1),
(16, 'Logistica :: GSE/GPU Request', 1),
(17, 'Logistica :: Gerente', 1),
(18, 'Shot validation', 1),
(19, 'Logistica :: Abastecimento', 1),
(20, 'Facilidades', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil_pagina`
--

CREATE TABLE IF NOT EXISTS `perfil_pagina` (
  `per_id` int(10) unsigned NOT NULL,
  `pag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`per_id`,`pag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `perfil_pagina`
--

INSERT INTO `perfil_pagina` (`per_id`, `pag_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 32),
(1, 33),
(1, 34),
(2, 38),
(2, 56),
(2, 89),
(2, 101),
(2, 114),
(2, 115),
(2, 116),
(2, 129),
(2, 136),
(2, 173),
(2, 200),
(2, 201),
(2, 203),
(2, 220),
(2, 242),
(2, 243),
(2, 244),
(2, 249),
(2, 275),
(2, 279),
(3, 1),
(3, 2),
(3, 3),
(3, 24),
(3, 25),
(3, 38),
(3, 56),
(4, 24),
(4, 25),
(4, 38),
(4, 90),
(4, 117),
(4, 118),
(4, 119),
(4, 123),
(4, 124),
(4, 125),
(4, 126),
(4, 127),
(4, 128),
(4, 133),
(4, 134),
(4, 137),
(4, 185),
(4, 186),
(4, 187),
(4, 188),
(4, 189),
(4, 190),
(4, 191),
(4, 192),
(4, 193),
(4, 194),
(4, 195),
(4, 196),
(4, 197),
(4, 198),
(4, 199),
(4, 207),
(4, 208),
(4, 209),
(4, 210),
(4, 211),
(4, 212),
(4, 213),
(4, 214),
(4, 215),
(4, 216),
(4, 217),
(4, 218),
(4, 222),
(4, 223),
(4, 224),
(4, 259),
(4, 260),
(4, 261),
(4, 262),
(4, 263),
(4, 271),
(4, 272),
(4, 273),
(4, 274),
(4, 276),
(5, 114),
(6, 28),
(6, 38),
(6, 56),
(6, 114),
(7, 138),
(7, 139),
(7, 140),
(7, 141),
(7, 142),
(7, 143),
(7, 144),
(7, 145),
(7, 146),
(7, 202),
(8, 138),
(9, 179),
(9, 180),
(9, 181),
(9, 182),
(9, 183),
(9, 184),
(9, 250),
(9, 251),
(9, 252),
(9, 253),
(9, 254),
(9, 255),
(9, 256),
(9, 257),
(9, 258),
(10, 38),
(11, 38),
(11, 147),
(11, 148),
(11, 149),
(11, 150),
(11, 151),
(11, 152),
(11, 153),
(11, 154),
(11, 155),
(11, 156),
(11, 157),
(11, 158),
(11, 159),
(11, 160),
(11, 228),
(12, 203),
(13, 204),
(13, 205),
(13, 206),
(13, 269),
(14, 167),
(14, 168),
(14, 169),
(14, 170),
(14, 171),
(14, 172),
(14, 233),
(14, 234),
(14, 235),
(15, 1),
(15, 2),
(15, 3),
(15, 89),
(15, 265),
(15, 266),
(15, 267),
(15, 268),
(16, 219),
(16, 220),
(16, 221),
(17, 219),
(17, 220),
(17, 221),
(17, 222),
(17, 223),
(17, 224),
(17, 225),
(17, 226),
(17, 227),
(17, 229),
(17, 230),
(17, 231),
(17, 232),
(17, 236),
(17, 237),
(17, 238),
(17, 243),
(17, 244),
(17, 245),
(18, 239),
(18, 240),
(18, 241),
(19, 236),
(19, 237),
(19, 238),
(19, 244),
(19, 245),
(20, 174),
(20, 175),
(20, 176),
(20, 177),
(20, 178),
(20, 201);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posto`
--

CREATE TABLE IF NOT EXISTS `posto` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_nome` varchar(40) NOT NULL,
  `status` int(1) DEFAULT '1',
  `pos_nome2` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Extraindo dados da tabela `posto`
--

INSERT INTO `posto` (`pos_id`, `pos_nome`, `status`, `pos_nome2`) VALUES
(1, 'Ten. Brigadeiro', 1, 'Lt Gen'),
(2, 'Maj Brig', 1, 'MajGen'),
(3, 'BR', 1, 'BrigGen'),
(4, 'CL', 1, 'Col'),
(5, 'TC', 1, 'LtCol'),
(6, 'MJ', 1, 'Maj'),
(7, 'CP', 1, 'Cap'),
(8, '1T', 1, 'Lt'),
(9, '2T', 1, '2d Lt'),
(10, 'Asp.', 1, NULL),
(11, 'SO', 1, 'MSgt'),
(12, '1S', 1, 'TSgt'),
(13, '2S', 1, 'SSgt'),
(14, '3S', 1, 'SrA'),
(15, 'CB', 1, 'A1C'),
(16, 'TF', 1, NULL),
(17, 'S1', 1, 'Amn'),
(18, 'S2', 1, NULL),
(19, 'Civil', 1, 'CV');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prioridade_posto`
--

CREATE TABLE IF NOT EXISTS `prioridade_posto` (
  `pri_id` int(10) unsigned NOT NULL,
  `pos_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prioridade_posto`
--

INSERT INTO `prioridade_posto` (`pri_id`, `pos_id`) VALUES
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto`
--

CREATE TABLE IF NOT EXISTS `projeto` (
  `pro_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pro_nome` varchar(255) NOT NULL,
  `pro_ini` date DEFAULT NULL,
  `pro_fim` date DEFAULT NULL,
  `pro_url` varchar(255) NOT NULL,
  `pro_email` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `pro_pronto` date DEFAULT NULL,
  `pro_host` varchar(255) DEFAULT NULL,
  `pro_porta` varchar(255) DEFAULT NULL,
  `pro_base` varchar(255) DEFAULT NULL,
  `pro_site` varchar(255) DEFAULT NULL,
  `pro_ldap` int(1) NOT NULL DEFAULT '0',
  `pro_tagname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `projeto`
--

INSERT INTO `projeto` (`pro_id`, `pro_nome`, `pro_ini`, `pro_fim`, `pro_url`, `pro_email`, `status`, `pro_pronto`, `pro_host`, `pro_porta`, `pro_base`, `pro_site`, `pro_ldap`, `pro_tagname`) VALUES
(1, 'Escala Inteligente - Projeto Final', '2013-10-11', '2013-11-17', 'midia/logo.png', '@cruzex.intraer', 1, '2013-11-04', 'ldap.cruzex.intraer', '389', 'ou=cruzex,dc=cruzex,dc=intraer', 'https://www.cruzex.intraer/', 0, 'escalainteligente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relprev`
--

CREATE TABLE IF NOT EXISTS `relprev` (
  `rel_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rel_data` date DEFAULT NULL,
  `rel_hora` char(5) DEFAULT NULL,
  `rel_msg` longtext,
  `rel_relator` varchar(255) DEFAULT NULL,
  `rel_contato` varchar(255) DEFAULT NULL,
  `rel_local` varchar(255) DEFAULT NULL,
  `rel_membro` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sede`
--

CREATE TABLE IF NOT EXISTS `sede` (
  `sed_id` int(10) NOT NULL AUTO_INCREMENT,
  `sed_nome` varchar(255) NOT NULL,
  PRIMARY KEY (`sed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE IF NOT EXISTS `setor` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_nome` varchar(255) CHARACTER SET latin1 NOT NULL,
  `set_msg` text,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`set_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`set_id`, `set_nome`, `set_msg`, `status`) VALUES
(1, 'TELEPHONY', '', 1),
(2, 'ELECTRIC', NULL, 1),
(3, 'LOGIC NETWORK', NULL, 1),
(4, 'PHYSICAL NETWORK', NULL, 1),
(5, 'SAUTI OP', '', 1),
(6, 'SECURITY NETWORK', '', 1),
(7, 'VIDEO CONFERENCE', '', 1),
(8, 'INFRASTRUCTURE', '', 1),
(9, 'FACILITIES', '', 1),
(10, 'WEB', '', 1),
(11, 'A6', '', 1),
(12, 'PMA', '', 1),
(13, 'DACOM', '', 1),
(14, 'TELECOM', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor_pessoal`
--

CREATE TABLE IF NOT EXISTS `setor_pessoal` (
  `set_id` int(10) unsigned NOT NULL,
  `pes_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`set_id`,`pes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `shotvalida`
--

CREATE TABLE IF NOT EXISTS `shotvalida` (
  `sho_id` int(10) NOT NULL AUTO_INCREMENT,
  `sho_data` date NOT NULL,
  `sho_hora` char(5) NOT NULL,
  `cli_id` int(10) NOT NULL,
  `sta_id` int(1) NOT NULL DEFAULT '1',
  `sho_shooter` varchar(200) NOT NULL,
  `sho_typemsl` varchar(200) NOT NULL,
  `sho_shottime` time NOT NULL,
  `sho_azimuth` varchar(200) NOT NULL,
  `sho_altitude` int(6) NOT NULL,
  `sho_msl` char(2) NOT NULL,
  `sho_timeout` time NOT NULL,
  `sho_kill` int(1) NOT NULL,
  PRIMARY KEY (`sho_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `shotvalida`
--

INSERT INTO `shotvalida` (`sho_id`, `sho_data`, `sho_hora`, `cli_id`, `sta_id`, `sho_shooter`, `sho_typemsl`, `sho_shottime`, `sho_azimuth`, `sho_altitude`, `sho_msl`, `sho_timeout`, `sho_kill`) VALUES
(1, '2013-10-21', '16:37', 1, 1, '', 'AIM-120', '11:14:25', 'BRAA 120 20NM OR BE 315 45', 28000, '40', '11:15:05', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `shotvalidaag`
--

CREATE TABLE IF NOT EXISTS `shotvalidaag` (
  `sho_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sho_data` date NOT NULL,
  `sho_hora` char(5) NOT NULL,
  `cli_id` int(10) NOT NULL,
  `sta_id` int(1) NOT NULL DEFAULT '1',
  `sho_striker` varchar(100) NOT NULL,
  `sho_weapon` varchar(50) NOT NULL,
  `sho_target` varchar(100) NOT NULL,
  `sho_release` time NOT NULL,
  `sho_hit` time NOT NULL,
  PRIMARY KEY (`sho_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `shotvalidaag`
--

INSERT INTO `shotvalidaag` (`sho_id`, `sho_data`, `sho_hora`, `cli_id`, `sta_id`, `sho_striker`, `sho_weapon`, `sho_target`, `sho_release`, `sho_hit`) VALUES
(1, '0000-00-00', '', 1, 1, 'alex', 'teste1', 'AAA', '10:00:00', '11:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `sta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sta_nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sta_cor` varchar(10) DEFAULT NULL,
  `sta_ponto` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`sta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `status`
--

INSERT INTO `status` (`sta_id`, `sta_nome`, `sta_cor`, `sta_ponto`, `status`) VALUES
(1, 'AVAILABLE', '24FF14', 1, 1),
(2, 'OPS RESTRICTED', 'FFCA6E', -1, 1),
(3, 'UNAVAILABLE', 'FF5521', -10, 1),
(4, 'TECH RESTRICTED', 'FBFF7A', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `visibilidade`
--

CREATE TABLE IF NOT EXISTS `visibilidade` (
  `vis_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vis_nome` varchar(255) NOT NULL,
  PRIMARY KEY (`vis_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `visibilidade`
--

INSERT INTO `visibilidade` (`vis_id`, `vis_nome`) VALUES
(1, 'Publica'),
(2, 'Privada'),
(3, 'Publica / Privada');
--
-- Base de Dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
