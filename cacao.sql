-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2018 at 08:34 PM
-- Server version: 5.5.53-0+deb8u1
-- PHP Version: 7.0.13-1~dotdeb+8.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cacao`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
`id_ADMINISTRADOR` int(11) NOT NULL,
  `ADMINISTRADOR_NOMBRE` varchar(45) DEFAULT NULL,
  `ADMINISTRADOR_APELLIDO` varchar(45) DEFAULT NULL,
  `ADMINISTRADOR_USER` varchar(45) DEFAULT NULL,
  `ADMINISTRADOR_PASS` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administrador`
--

INSERT INTO `administrador` (`id_ADMINISTRADOR`, `ADMINISTRADOR_NOMBRE`, `ADMINISTRADOR_APELLIDO`, `ADMINISTRADOR_USER`, `ADMINISTRADOR_PASS`) VALUES
(1, 'Diego', 'Carrascal', 'Admin', 'cacaoufps'),
(3, 'DIeguito', 'Cara', 'Fresai', 'jueves');

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
`idAGENDA` int(11) NOT NULL,
  `CULTIVO_idCULTIVO` int(11) NOT NULL,
  `AGENDA_COMENTARIO` varchar(45) DEFAULT NULL,
  `AGENDAFECHA_REGISTRO` datetime DEFAULT NULL,
  `AGENDA_TIPO` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`idAGENDA`, `CULTIVO_idCULTIVO`, `AGENDA_COMENTARIO`, `AGENDAFECHA_REGISTRO`, `AGENDA_TIPO`) VALUES
(1, 1, 'La ocupacion rusa', '2018-06-14 00:00:00', 'Nota');

-- --------------------------------------------------------

--
-- Table structure for table `cacaotero`
--

CREATE TABLE IF NOT EXISTS `cacaotero` (
`idCacaotero` int(11) NOT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cacaotero`
--

INSERT INTO `cacaotero` (`idCacaotero`, `cargo`, `cedula`, `usuario`, `contraseña`) VALUES
(1, 'Riego', '123456', 'Gimenez', 'sdfsd'),
(2, 'Cultivador', '1546', 'Alirio', ''),
(3, 'Cultivador', '1546', 'Gomez', ''),
(4, 'Riego', '123', 'Sanabria', ''),
(5, 'Cultivador', '123', 'gordon', '2018-06-06'),
(6, 'Ingeniero', '1090', 'Camilo', '');

-- --------------------------------------------------------

--
-- Table structure for table `cacaotero_has_cultivo`
--

CREATE TABLE IF NOT EXISTS `cacaotero_has_cultivo` (
  `CACAOTERO_idCACAOTERO` int(11) NOT NULL,
  `CULTIVO_idCULTIVO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cacaotero_has_cultivo`
--

INSERT INTO `cacaotero_has_cultivo` (`CACAOTERO_idCACAOTERO`, `CULTIVO_idCULTIVO`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cosecha`
--

CREATE TABLE IF NOT EXISTS `cosecha` (
`idCOSECHA` int(11) NOT NULL,
  `CULTIVO_idCULTIVO` int(11) NOT NULL,
  `COSECHA_SACOS` int(11) DEFAULT NULL,
  `COSECHAFECHA_REGISTRO` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cosecha`
--

INSERT INTO `cosecha` (`idCOSECHA`, `CULTIVO_idCULTIVO`, `COSECHA_SACOS`, `COSECHAFECHA_REGISTRO`) VALUES
(1, 1, 25, '2018-06-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cosecha_has_cacaotero`
--

CREATE TABLE IF NOT EXISTS `cosecha_has_cacaotero` (
  `COSECHA_idCOSECHA` int(11) NOT NULL,
  `CACAOTERO_idCACAOTERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cultivo`
--

CREATE TABLE IF NOT EXISTS `cultivo` (
`idCULTIVO` int(11) NOT NULL,
  `SECTOR_idSECTOR` int(11) NOT NULL,
  `CULTIVO_FECHASIEMBRA` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cultivo`
--

INSERT INTO `cultivo` (`idCULTIVO`, `SECTOR_idSECTOR`, `CULTIVO_FECHASIEMBRA`) VALUES
(1, 1, '2018-06-14 00:00:00'),
(2, 3, '2018-06-13 00:00:00'),
(3, 3, '2018-06-13 00:00:00'),
(4, 3, '2018-06-13 00:00:00'),
(5, 3, '2018-06-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fertilizacion`
--

CREATE TABLE IF NOT EXISTS `fertilizacion` (
`idFertilizacion` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idSuelo` int(11) NOT NULL,
  `idFertilizante` int(11) NOT NULL,
  `idCacaotero` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fertilizacion`
--

INSERT INTO `fertilizacion` (`idFertilizacion`, `fecha`, `idSuelo`, `idFertilizante`, `idCacaotero`) VALUES
(1, '0000-00-00', 1, 24, 4),
(2, '0000-00-00', 1, 23, 4);

-- --------------------------------------------------------

--
-- Table structure for table `fertilizante`
--

CREATE TABLE IF NOT EXISTS `fertilizante` (
`idFertilizante` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fertilizante`
--

INSERT INTO `fertilizante` (`idFertilizante`, `nombre`, `cantidad`, `tipo`) VALUES
(21, 'Super', 30, 'Compuesto'),
(22, 'Super Fertil', 40, 'Compuesto'),
(23, 'Caldo rico', 57, 'Compuesto'),
(24, 'Caldo Rico', 65, 'Compuesto');

-- --------------------------------------------------------

--
-- Table structure for table `finca`
--

CREATE TABLE IF NOT EXISTS `finca` (
`idFinca` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `dueño` varchar(45) DEFAULT NULL,
  `ADMINISTRADOR_id_ADMINISTRADOR` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `finca`
--

INSERT INTO `finca` (`idFinca`, `nombre`, `dueño`, `ADMINISTRADOR_id_ADMINISTRADOR`) VALUES
(1, 'La gran pantalla azul', 'Mr Robot', 1),
(2, 'LOS GIRASOLES', 'fRANSISCO cUEVAS', 3),
(3, 'LOS GIRASOLES', 'fRANSISCO cUEVAS', 3),
(4, 'LOS GIRASOLES', 'fRANSISCO cUEVAS', 3),
(5, 'dfgdf', 'dfgdf', 3),
(6, 'hyh', 'juju', 3),
(7, 'hyh', 'juju', 3),
(8, 'reg', 'erger', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ingrediente`
--

CREATE TABLE IF NOT EXISTS `ingrediente` (
`idIngrediente` int(11) NOT NULL,
  `componente` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingrediente`
--

INSERT INTO `ingrediente` (`idIngrediente`, `componente`) VALUES
(1, 'Carbono Organico'),
(3, 'Potasio'),
(4, 'Calcio'),
(5, 'Magnesio'),
(6, 'Sodio'),
(7, 'Boro'),
(8, 'Fosforo'),
(9, 'Nitrogeno'),
(10, 'Azufre'),
(11, 'Materia Organica');

-- --------------------------------------------------------

--
-- Table structure for table `ingredientefertilizante`
--

CREATE TABLE IF NOT EXISTS `ingredientefertilizante` (
`idIngredienteFertilizante` int(11) NOT NULL,
  `idIngrediente` int(11) NOT NULL,
  `idFertilizante` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingredientefertilizante`
--

INSERT INTO `ingredientefertilizante` (`idIngredienteFertilizante`, `idIngrediente`, `idFertilizante`) VALUES
(25, 3, 21),
(26, 10, 21),
(27, 7, 21),
(28, 5, 22),
(29, 3, 22),
(30, 9, 22),
(31, 10, 23),
(32, 1, 23),
(33, 9, 23),
(34, 8, 23),
(35, 5, 24),
(36, 4, 24),
(37, 6, 24);

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE IF NOT EXISTS `sector` (
`idSECTOR` int(11) NOT NULL,
  `SECTOR_LARGO` int(11) DEFAULT NULL,
  `SECTOR_ANCHO` int(11) DEFAULT NULL,
  `FINCA_idFINCA` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`idSECTOR`, `SECTOR_LARGO`, `SECTOR_ANCHO`, `FINCA_idFINCA`) VALUES
(1, 14, 14, 1),
(3, 10, 14, 2),
(4, 25, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `suelo`
--

CREATE TABLE IF NOT EXISTS `suelo` (
`idSuelo` int(11) NOT NULL,
  `hectarea` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `idFinca` int(11) NOT NULL,
  `pH` float DEFAULT NULL,
  `carbonoOrganico` float DEFAULT NULL,
  `materiaOrganico` float DEFAULT NULL,
  `potasio` float DEFAULT NULL,
  `calcio` float DEFAULT NULL,
  `magnesio` float DEFAULT NULL,
  `sodio` float DEFAULT NULL,
  `boro` float DEFAULT NULL,
  `fosforo` float DEFAULT NULL,
  `nitrogeno` float DEFAULT NULL,
  `azufre` float DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suelo`
--

INSERT INTO `suelo` (`idSuelo`, `hectarea`, `estado`, `descripcion`, `idFinca`, `pH`, `carbonoOrganico`, `materiaOrganico`, `potasio`, `calcio`, `magnesio`, `sodio`, `boro`, `fosforo`, `nitrogeno`, `azufre`) VALUES
(1, 60, 'No Apto', 'Suelo diseñado para cultivo de papa', 5, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
 ADD PRIMARY KEY (`id_ADMINISTRADOR`);

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
 ADD PRIMARY KEY (`idAGENDA`), ADD KEY `fk_AGENDA_CULTIVO1_idx` (`CULTIVO_idCULTIVO`);

--
-- Indexes for table `cacaotero`
--
ALTER TABLE `cacaotero`
 ADD PRIMARY KEY (`idCacaotero`);

--
-- Indexes for table `cacaotero_has_cultivo`
--
ALTER TABLE `cacaotero_has_cultivo`
 ADD PRIMARY KEY (`CACAOTERO_idCACAOTERO`,`CULTIVO_idCULTIVO`), ADD KEY `fk_CACAOTERO_has_CULTIVO_CULTIVO1_idx` (`CULTIVO_idCULTIVO`), ADD KEY `fk_CACAOTERO_has_CULTIVO_CACAOTERO1_idx` (`CACAOTERO_idCACAOTERO`);

--
-- Indexes for table `cosecha`
--
ALTER TABLE `cosecha`
 ADD PRIMARY KEY (`idCOSECHA`), ADD KEY `fk_COSECHA_CULTIVO1_idx` (`CULTIVO_idCULTIVO`);

--
-- Indexes for table `cosecha_has_cacaotero`
--
ALTER TABLE `cosecha_has_cacaotero`
 ADD PRIMARY KEY (`COSECHA_idCOSECHA`,`CACAOTERO_idCACAOTERO`), ADD KEY `fk_COSECHA_has_CACAOTERO_CACAOTERO1_idx` (`CACAOTERO_idCACAOTERO`), ADD KEY `fk_COSECHA_has_CACAOTERO_COSECHA1_idx` (`COSECHA_idCOSECHA`);

--
-- Indexes for table `cultivo`
--
ALTER TABLE `cultivo`
 ADD PRIMARY KEY (`idCULTIVO`), ADD KEY `fk_CULTIVO_SECTOR1_idx` (`SECTOR_idSECTOR`);

--
-- Indexes for table `fertilizacion`
--
ALTER TABLE `fertilizacion`
 ADD PRIMARY KEY (`idFertilizacion`), ADD KEY `fk_Fertilizacion_Suelo1_idx` (`idSuelo`), ADD KEY `fk_Fertilizacion_Fertilizante1_idx` (`idFertilizante`), ADD KEY `fk_Fertilizacion_Cacaotero1_idx` (`idCacaotero`);

--
-- Indexes for table `fertilizante`
--
ALTER TABLE `fertilizante`
 ADD PRIMARY KEY (`idFertilizante`);

--
-- Indexes for table `finca`
--
ALTER TABLE `finca`
 ADD PRIMARY KEY (`idFinca`), ADD KEY `fk_Finca_ADMINISTRADOR1_idx` (`ADMINISTRADOR_id_ADMINISTRADOR`);

--
-- Indexes for table `ingrediente`
--
ALTER TABLE `ingrediente`
 ADD PRIMARY KEY (`idIngrediente`);

--
-- Indexes for table `ingredientefertilizante`
--
ALTER TABLE `ingredientefertilizante`
 ADD PRIMARY KEY (`idIngredienteFertilizante`), ADD KEY `fk_IngredienteFertilizante_Ingrediente1_idx` (`idIngrediente`), ADD KEY `fk_IngredienteFertilizante_Fertilizante1_idx` (`idFertilizante`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
 ADD PRIMARY KEY (`idSECTOR`), ADD KEY `fk_SECTOR_FINCA1_idx` (`FINCA_idFINCA`);

--
-- Indexes for table `suelo`
--
ALTER TABLE `suelo`
 ADD PRIMARY KEY (`idSuelo`), ADD KEY `fk_SUELO_FINCA1_idx` (`idFinca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
MODIFY `id_ADMINISTRADOR` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
MODIFY `idAGENDA` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cacaotero`
--
ALTER TABLE `cacaotero`
MODIFY `idCacaotero` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cosecha`
--
ALTER TABLE `cosecha`
MODIFY `idCOSECHA` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cultivo`
--
ALTER TABLE `cultivo`
MODIFY `idCULTIVO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fertilizacion`
--
ALTER TABLE `fertilizacion`
MODIFY `idFertilizacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fertilizante`
--
ALTER TABLE `fertilizante`
MODIFY `idFertilizante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `finca`
--
ALTER TABLE `finca`
MODIFY `idFinca` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ingrediente`
--
ALTER TABLE `ingrediente`
MODIFY `idIngrediente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ingredientefertilizante`
--
ALTER TABLE `ingredientefertilizante`
MODIFY `idIngredienteFertilizante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
MODIFY `idSECTOR` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `suelo`
--
ALTER TABLE `suelo`
MODIFY `idSuelo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `agenda`
--
ALTER TABLE `agenda`
ADD CONSTRAINT `fk_AGENDA_CULTIVO1` FOREIGN KEY (`CULTIVO_idCULTIVO`) REFERENCES `cultivo` (`idCULTIVO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cacaotero_has_cultivo`
--
ALTER TABLE `cacaotero_has_cultivo`
ADD CONSTRAINT `fk_CACAOTERO_has_CULTIVO_CACAOTERO1` FOREIGN KEY (`CACAOTERO_idCACAOTERO`) REFERENCES `cacaotero` (`idCacaotero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_CACAOTERO_has_CULTIVO_CULTIVO1` FOREIGN KEY (`CULTIVO_idCULTIVO`) REFERENCES `cultivo` (`idCULTIVO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cosecha`
--
ALTER TABLE `cosecha`
ADD CONSTRAINT `fk_COSECHA_CULTIVO1` FOREIGN KEY (`CULTIVO_idCULTIVO`) REFERENCES `cultivo` (`idCULTIVO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cosecha_has_cacaotero`
--
ALTER TABLE `cosecha_has_cacaotero`
ADD CONSTRAINT `fk_COSECHA_has_CACAOTERO_CACAOTERO1` FOREIGN KEY (`CACAOTERO_idCACAOTERO`) REFERENCES `cacaotero` (`idCacaotero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_COSECHA_has_CACAOTERO_COSECHA1` FOREIGN KEY (`COSECHA_idCOSECHA`) REFERENCES `cosecha` (`idCOSECHA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cultivo`
--
ALTER TABLE `cultivo`
ADD CONSTRAINT `fk_CULTIVO_SECTOR1` FOREIGN KEY (`SECTOR_idSECTOR`) REFERENCES `sector` (`idSECTOR`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fertilizacion`
--
ALTER TABLE `fertilizacion`
ADD CONSTRAINT `fk_Fertilizacion_Cacaotero1` FOREIGN KEY (`idCacaotero`) REFERENCES `cacaotero` (`idCacaotero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Fertilizacion_Fertilizante1` FOREIGN KEY (`idFertilizante`) REFERENCES `fertilizante` (`idFertilizante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Fertilizacion_Suelo1` FOREIGN KEY (`idSuelo`) REFERENCES `suelo` (`idSuelo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `finca`
--
ALTER TABLE `finca`
ADD CONSTRAINT `fk_Finca_ADMINISTRADOR1` FOREIGN KEY (`ADMINISTRADOR_id_ADMINISTRADOR`) REFERENCES `administrador` (`id_ADMINISTRADOR`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ingredientefertilizante`
--
ALTER TABLE `ingredientefertilizante`
ADD CONSTRAINT `fk_IngredienteFertilizante_Fertilizante1` FOREIGN KEY (`idFertilizante`) REFERENCES `fertilizante` (`idFertilizante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_IngredienteFertilizante_Ingrediente1` FOREIGN KEY (`idIngrediente`) REFERENCES `ingrediente` (`idIngrediente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sector`
--
ALTER TABLE `sector`
ADD CONSTRAINT `fk_SECTOR_FINCA1` FOREIGN KEY (`FINCA_idFINCA`) REFERENCES `finca` (`idFinca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `suelo`
--
ALTER TABLE `suelo`
ADD CONSTRAINT `fk_SUELO_FINCA1` FOREIGN KEY (`idFinca`) REFERENCES `finca` (`idFinca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
