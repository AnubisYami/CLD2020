-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Maio-2020 às 00:44
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cld_banco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `academico`
--

CREATE TABLE `academico` (
  `Nome` varchar(50) DEFAULT NULL,
  `RA` int(20) NOT NULL,
  `Curso` varchar(50) DEFAULT NULL,
  `Ano` int(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Ativo` tinyint(1) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `academico_professor`
--

CREATE TABLE `academico_professor` (
  `fk_Academico_RA` int(20) DEFAULT NULL,
  `fk_Professor_Id_professor` int(20) DEFAULT NULL,
  `Id_Aluno_Prof` int(20) NOT NULL,
  `Data_Termino` date DEFAULT NULL,
  `Data_Inicio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso`
--

CREATE TABLE `acesso` (
  `Usuario_id` decimal(10,0) NOT NULL,
  `Pagina_id` decimal(10,0) DEFAULT NULL,
  `Consultar` tinyint(1) DEFAULT NULL,
  `Cadastro` tinyint(1) DEFAULT NULL,
  `Editar` tinyint(1) DEFAULT NULL,
  `Excluir` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso_pagina`
--

CREATE TABLE `acesso_pagina` (
  `fk_Pagina_Id_Pagina` decimal(10,0) DEFAULT NULL,
  `fk_Acesso_Usuario_id` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_curso`
--

CREATE TABLE `aluno_curso` (
  `fk_Curso_ID_Curso` decimal(10,0) DEFAULT NULL,
  `fk_Academico_RA` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `ID_aula` decimal(10,0) NOT NULL,
  `Nome_diciplina` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aula_lab`
--

CREATE TABLE `aula_lab` (
  `fk_Aulas_ID_aula` decimal(10,0) DEFAULT NULL,
  `fk_Laboratorio_Num` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `ID_Curso` decimal(10,0) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso_aulas`
--

CREATE TABLE `curso_aulas` (
  `fk_Aulas_ID_aula` decimal(10,0) DEFAULT NULL,
  `fk_Curso_ID_Curso` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `DataHora_EntradaLab` date NOT NULL,
  `DataHora_SaidaLab` date DEFAULT NULL,
  `Posse_da_Chave` tinyint(1) DEFAULT NULL,
  `Advertencia` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo_lab`
--

CREATE TABLE `emprestimo_lab` (
  `fk_Laboratorio_Num` decimal(10,0) DEFAULT NULL,
  `fk_Emprestimo_DataHora_EntradaLab` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `laboratorio`
--

CREATE TABLE `laboratorio` (
  `Num` decimal(10,0) NOT NULL,
  `Restrito` tinyint(1) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagina`
--

CREATE TABLE `pagina` (
  `Id_Pagina` decimal(10,0) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Sistema` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `Id_professor` int(20) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Telefone` decimal(10,0) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL,
  `Nivel_Permições` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_acesso`
--

CREATE TABLE `professor_acesso` (
  `fk_Professor_Id_professor` int(20) DEFAULT NULL,
  `fk_Acesso_Usuario_id` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_aula`
--

CREATE TABLE `professor_aula` (
  `fk_Professor_Id_professor` int(20) DEFAULT NULL,
  `fk_Aulas_ID_aula` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `Nome` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Login_user` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `Senha` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Telefone` decimal(10,0) DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `n_acesso` tinyint(1) DEFAULT NULL,
  `Ativo` tinyint(1) DEFAULT NULL,
  `id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`Nome`, `Login_user`, `Senha`, `Telefone`, `Email`, `n_acesso`, `Ativo`, `id`) VALUES
('Alex', '', '202cb962ac59075b964b07152d234b70', '1234', 'adm@adm.com', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_acesso`
--

CREATE TABLE `usuario_acesso` (
  `fk_Usuário_Login_user` varchar(50) DEFAULT NULL,
  `fk_Acesso_Usuario_id` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_emprestimo`
--

CREATE TABLE `usuario_emprestimo` (
  `fk_Usuário_Login_user` varchar(50) DEFAULT NULL,
  `fk_Emprestimo_DataHora_EntradaLab` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `academico`
--
ALTER TABLE `academico`
  ADD PRIMARY KEY (`RA`);

--
-- Índices para tabela `academico_professor`
--
ALTER TABLE `academico_professor`
  ADD PRIMARY KEY (`Id_Aluno_Prof`),
  ADD KEY `FK_Academico_Professor_2` (`fk_Academico_RA`),
  ADD KEY `FK_Academico_Professor_3` (`fk_Professor_Id_professor`);

--
-- Índices para tabela `acesso`
--
ALTER TABLE `acesso`
  ADD PRIMARY KEY (`Usuario_id`);

--
-- Índices para tabela `acesso_pagina`
--
ALTER TABLE `acesso_pagina`
  ADD KEY `FK_Acesso_pagina_1` (`fk_Pagina_Id_Pagina`),
  ADD KEY `FK_Acesso_pagina_2` (`fk_Acesso_Usuario_id`);

--
-- Índices para tabela `aluno_curso`
--
ALTER TABLE `aluno_curso`
  ADD KEY `FK_Aluno_Curso_1` (`fk_Curso_ID_Curso`),
  ADD KEY `FK_Aluno_Curso_2` (`fk_Academico_RA`);

--
-- Índices para tabela `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`ID_aula`);

--
-- Índices para tabela `aula_lab`
--
ALTER TABLE `aula_lab`
  ADD KEY `FK_Aula_Lab_1` (`fk_Aulas_ID_aula`),
  ADD KEY `FK_Aula_Lab_2` (`fk_Laboratorio_Num`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`ID_Curso`);

--
-- Índices para tabela `curso_aulas`
--
ALTER TABLE `curso_aulas`
  ADD KEY `FK_Curso_Aulas_1` (`fk_Aulas_ID_aula`),
  ADD KEY `FK_Curso_Aulas_2` (`fk_Curso_ID_Curso`);

--
-- Índices para tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`DataHora_EntradaLab`);

--
-- Índices para tabela `emprestimo_lab`
--
ALTER TABLE `emprestimo_lab`
  ADD KEY `FK_Emprestimo_Lab_1` (`fk_Laboratorio_Num`),
  ADD KEY `FK_Emprestimo_Lab_2` (`fk_Emprestimo_DataHora_EntradaLab`);

--
-- Índices para tabela `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`Num`);

--
-- Índices para tabela `pagina`
--
ALTER TABLE `pagina`
  ADD PRIMARY KEY (`Id_Pagina`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Id_professor`);

--
-- Índices para tabela `professor_acesso`
--
ALTER TABLE `professor_acesso`
  ADD KEY `FK_Professor_Acesso_1` (`fk_Professor_Id_professor`),
  ADD KEY `FK_Professor_Acesso_2` (`fk_Acesso_Usuario_id`);

--
-- Índices para tabela `professor_aula`
--
ALTER TABLE `professor_aula`
  ADD KEY `FK_Professor_Aula_1` (`fk_Professor_Id_professor`),
  ADD KEY `FK_Professor_Aula_2` (`fk_Aulas_ID_aula`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Login_user`);

--
-- Índices para tabela `usuario_acesso`
--
ALTER TABLE `usuario_acesso`
  ADD KEY `FK_Usuario_Acesso_1` (`fk_Usuário_Login_user`),
  ADD KEY `FK_Usuario_Acesso_2` (`fk_Acesso_Usuario_id`);

--
-- Índices para tabela `usuario_emprestimo`
--
ALTER TABLE `usuario_emprestimo`
  ADD KEY `FK_Usuario_Emprestimo_1` (`fk_Usuário_Login_user`),
  ADD KEY `FK_Usuario_Emprestimo_2` (`fk_Emprestimo_DataHora_EntradaLab`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `academico_professor`
--
ALTER TABLE `academico_professor`
  ADD CONSTRAINT `FK_Academico_Professor_2` FOREIGN KEY (`fk_Academico_RA`) REFERENCES `academico` (`RA`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Academico_Professor_3` FOREIGN KEY (`fk_Professor_Id_professor`) REFERENCES `professor` (`Id_professor`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `acesso_pagina`
--
ALTER TABLE `acesso_pagina`
  ADD CONSTRAINT `FK_Acesso_pagina_1` FOREIGN KEY (`fk_Pagina_Id_Pagina`) REFERENCES `pagina` (`Id_Pagina`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Acesso_pagina_2` FOREIGN KEY (`fk_Acesso_Usuario_id`) REFERENCES `acesso` (`Usuario_id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `aluno_curso`
--
ALTER TABLE `aluno_curso`
  ADD CONSTRAINT `FK_Aluno_Curso_1` FOREIGN KEY (`fk_Curso_ID_Curso`) REFERENCES `curso` (`ID_Curso`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Aluno_Curso_2` FOREIGN KEY (`fk_Academico_RA`) REFERENCES `academico` (`RA`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `aula_lab`
--
ALTER TABLE `aula_lab`
  ADD CONSTRAINT `FK_Aula_Lab_1` FOREIGN KEY (`fk_Aulas_ID_aula`) REFERENCES `aulas` (`ID_aula`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Aula_Lab_2` FOREIGN KEY (`fk_Laboratorio_Num`) REFERENCES `laboratorio` (`Num`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `curso_aulas`
--
ALTER TABLE `curso_aulas`
  ADD CONSTRAINT `FK_Curso_Aulas_1` FOREIGN KEY (`fk_Aulas_ID_aula`) REFERENCES `aulas` (`ID_aula`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Curso_Aulas_2` FOREIGN KEY (`fk_Curso_ID_Curso`) REFERENCES `curso` (`ID_Curso`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `emprestimo_lab`
--
ALTER TABLE `emprestimo_lab`
  ADD CONSTRAINT `FK_Emprestimo_Lab_1` FOREIGN KEY (`fk_Laboratorio_Num`) REFERENCES `laboratorio` (`Num`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Emprestimo_Lab_2` FOREIGN KEY (`fk_Emprestimo_DataHora_EntradaLab`) REFERENCES `emprestimo` (`DataHora_EntradaLab`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `professor_acesso`
--
ALTER TABLE `professor_acesso`
  ADD CONSTRAINT `FK_Professor_Acesso_1` FOREIGN KEY (`fk_Professor_Id_professor`) REFERENCES `professor` (`Id_professor`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Professor_Acesso_2` FOREIGN KEY (`fk_Acesso_Usuario_id`) REFERENCES `acesso` (`Usuario_id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `professor_aula`
--
ALTER TABLE `professor_aula`
  ADD CONSTRAINT `FK_Professor_Aula_1` FOREIGN KEY (`fk_Professor_Id_professor`) REFERENCES `professor` (`Id_professor`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Professor_Aula_2` FOREIGN KEY (`fk_Aulas_ID_aula`) REFERENCES `aulas` (`ID_aula`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `usuario_acesso`
--
ALTER TABLE `usuario_acesso`
  ADD CONSTRAINT `FK_Usuario_Acesso_1` FOREIGN KEY (`fk_Usuário_Login_user`) REFERENCES `usuarios` (`Login_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Usuario_Acesso_2` FOREIGN KEY (`fk_Acesso_Usuario_id`) REFERENCES `acesso` (`Usuario_id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `usuario_emprestimo`
--
ALTER TABLE `usuario_emprestimo`
  ADD CONSTRAINT `FK_Usuario_Emprestimo_1` FOREIGN KEY (`fk_Usuário_Login_user`) REFERENCES `usuarios` (`Login_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Usuario_Emprestimo_2` FOREIGN KEY (`fk_Emprestimo_DataHora_EntradaLab`) REFERENCES `emprestimo` (`DataHora_EntradaLab`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
