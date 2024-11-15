SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
SET NAMES utf8mb4;

CREATE TABLE `info_docto` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `nom_archivo` varchar(60) NOT NULL,
  `size_arch` varchar(20) NOT NULL,
  `ruta` varchar(80) NOT NULL,
  `extension` varchar(10) NOT NULL,
  PRIMARY KEY (`folio`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `info_docto` (`folio`, `nom_archivo`, `size_arch`, `ruta`, `extension`) VALUES
(33, 'agenda.pdf', '341798', '/appweb/parcial3/practicas/subir_doctos/files/agenda.pdf', 'pdf'),
(37, 'Idea de Negocio_Dago.docx', '13380', '/appweb/parcial3/practicas/subir_doctos/files/Idea de Negocio_Dago.docx', 'docx'),
(36, 'reporte_unidad_I_2024.pdf', '215222', '/appweb/parcial3/practicas/subir_doctos/files/reporte_unidad_I_2024.pdf', 'pdf'),
(29, 'aplicaciones_web.pdf', '2743626', '/appweb/parcial3/practicas/subir_doctos/files/aplicaciones_web.pdf', 'pdf');

CREATE TABLE `usuarios` (
  `username` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `privilegio` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'estandar',
  PRIMARY KEY (`username`,`password`,`privilegio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `usuarios` (`username`, `password`, `privilegio`) VALUES
('root', '1234', 'admin'),
('user', '4567', 'estandar');

COMMIT;