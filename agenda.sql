SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
SET NAMES utf8mb4;

CREATE TABLE `datos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `datos` (`id`, `nombre`, `usuario`, `password`) VALUES
(67, 'Peter Pan', 'pan', '1234@_'),
(71, 'Dagoberto', 'root', '1234');

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paterno` varchar(60) NOT NULL,
  `materno` varchar(60) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `edo_civil` varchar(10) NOT NULL,
  `seguro` varchar(1) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `empleados` (`id`, `paterno`, `materno`, `nombre`, `edo_civil`, `seguro`, `pass`, `sexo`) VALUES
(103, 'Ruiz', 'Tamayo', 'Daniel', 'Casado(a)', '1', '1234', 'Masculino'),
(104, 'Ruvalcaba', 'Montez', 'Ernesto', 'Soltero(a)', '1', '1234', 'Masculino'),
(105, 'Ruvalcaba', 'Meraz', 'Rodrigo', 'Soltero(a)', '1', '1234', 'Masculino');

CREATE TABLE `usuarios` (
  `username` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `privilegio` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'estandar',
  PRIMARY KEY (`username`,`password`,`privilegio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `usuarios` (`username`, `password`, `privilegio`) VALUES
('root', '3E1BFA4B44A095EFA9F6B1C62540CD8B', 'admin'),
('root1', '1234', 'admin'),
('user', 'E1816C50135F53299A1CAC1A219B9DA0', 'estandar'),
('user1', '4567', 'estandar');

COMMIT;