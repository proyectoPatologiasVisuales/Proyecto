-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.11.220.2:3306
-- Tiempo de generación: 24-01-2017 a las 15:26:02
-- Versión del servidor: 5.5.52
-- Versión de PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `femxa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Causas`
--

CREATE TABLE IF NOT EXISTS `Causas` (
  `id_patol` int(2) NOT NULL,
  `id_sint` int(2) NOT NULL,
  `id_causa` int(2) NOT NULL,
  PRIMARY KEY (`id_causa`),
  KEY `id_patol` (`id_patol`),
  KEY `id_sint` (`id_sint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Lo que causa la patologia';

--
-- Volcado de datos para la tabla `Causas`
--

INSERT INTO `Causas` (`id_patol`, `id_sint`, `id_causa`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4),
(1, 5, 5),
(1, 6, 6),
(2, 1, 7),
(2, 2, 8),
(2, 3, 9),
(2, 4, 10),
(2, 7, 11),
(2, 8, 12),
(2, 9, 13),
(2, 10, 14),
(2, 11, 15),
(3, 1, 16),
(3, 12, 17),
(3, 13, 18),
(3, 14, 19),
(3, 15, 20),
(3, 16, 21),
(3, 17, 22),
(3, 18, 23),
(4, 1, 24),
(4, 19, 25),
(4, 20, 26),
(4, 21, 27),
(5, 18, 28),
(5, 22, 29),
(5, 23, 30),
(6, 7, 31),
(6, 24, 32),
(6, 25, 33),
(6, 26, 34),
(7, 27, 35),
(7, 28, 36),
(7, 29, 37),
(8, 30, 38),
(9, 1, 39),
(9, 2, 40),
(9, 13, 41),
(9, 17, 42),
(9, 31, 43),
(9, 32, 44);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Patologias`
--

CREATE TABLE IF NOT EXISTS `Patologias` (
  `id_patol` int(2) NOT NULL,
  `nom_patol` varchar(50) NOT NULL,
  `des_patol` varchar(2000) NOT NULL,
  `trat_patol` varchar(2000) NOT NULL,
  `causa_patol` varchar(2000) NOT NULL,
  PRIMARY KEY (`id_patol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Lista de patologias';

--
-- Volcado de datos para la tabla `Patologias`
--

INSERT INTO `Patologias` (`id_patol`, `nom_patol`, `des_patol`, `trat_patol`, `causa_patol`) VALUES
(1, 'Queratocono', 'Es una enfermedad ocular que afecta la estructura de la córnea, el tejido transparente que cubre la parte frontal del ojo. Con esta afección, la forma de la córnea cambia lentamente de la forma redonda a una forma cónica. El ojo sobresale.', 'Las lentes de contacto son el principal tratamiento para la mayoría de los pacientes que sufren queratocono. \nEl uso de gafas de sol al aire libre después de recibir el diagnóstico puede ayudar a retardar o prevenir el progreso de la enfermedad. \nDurante muchos años, el único tratamiento quirúrgico ha sido el   transplante de córnea.\nLas siguientes tecnologías más novedosas pueden demorar o prevenir la necesidad de un trasplante de córnea: \nEnergía de radiofrecuencia alta (queratoplastia conductiva): cambia la forma de la córnea, de manera que los lentes de contacto funcionen mejor. \nImplantes corneales (segmentos de anillos intracorneales): cambia la forma de la córnea,  de manera que los lentes de contacto funcionen mejor. \nEntrecruzamiento corneal: es un tratamiento experimental que provoca que la córnea se vuelva dura e impide que la afección empeore. La córnea se puede luego reformar con corrección de la visión con láser.', 'Desconocida'),
(2, 'Glaucoma de Ángulo Abierto', 'Afección ocular que puede dañar al nervio óptico, el cual envía las imágenes que usted ve al cerebro. Con frecuencia, el daño al nervio óptico es causado por el aumento de la presión intraocular pudiendo llegar a provocar ceguera.', 'Si usted ha tenido glaucoma agudo en un ojo, está en riesgo de tenerlo en el segundo ojo. Es probable que su proveedor de atención médica le trate el segundo ojo para prevenir un primer ataque en ese ojo.\n\nEl objetivo del tratamiento es reducir la presión ocular.Fármacos en forma de gotas para los ojos.\nAdministración de pastillas para disminuir la presión en el ojo.\nEn la terapia con láser (se emplea un láser indoloro para abrir los canales por donde sale el líquido).\nCirugía (El médico abrirá un nuevo canal de manera que el líquido pueda escapar bajando de esta forma la presión intraocular).\nImplantes (pueden ayudar a tratar el glaucoma en personas que se someten a cirugía para las cataratas).', 'En todos los casos el incremento de la presión intraocular produce daños en el nervio óptico. \nLas gotas para dilatar los ojos así como ciertos medicamentos pueden desencadenar un ataque agudo de glaucoma.\nTiene un componente genético.'),
(3, 'Glaucoma de Ángulo Cerrado', 'Afección ocular que puede dañar al nervio óptico, el cual envía las imágenes que usted ve al cerebro. Con frecuencia, el daño al nervio óptico es causado por el aumento de la presión intraocular pudiendo llegar a provocar ceguera.', 'Si usted ha tenido glaucoma agudo en un ojo, está en riesgo de tenerlo en el segundo ojo. Es probable que su proveedor de atención médica le trate el segundo ojo para prevenir un primer ataque en ese ojo.\n\nEl objetivo del tratamiento es reducir la presión ocular. Fármacos en forma de gotas para los ojos.\nAdministración de pastillas para disminuir la presión en el ojo.\nUn ataque de glaucoma de ángulo cerrado agudo es una emergencia médica. Se puede presentar ceguera en unos cuantos días si no recibe tratamiento.\nMedicación por vía intravenosa para bajar la presión del ojo.\nOperación de emergencia (iridotomía:  el médico utiliza un láser para abrir un nuevo canal en el iris que evitará otro ataque).\n', 'En todos los casos el incremento de la presión intraocular produce daños en el nervio óptico. \nLas gotas para dilatar los ojos así como ciertos medicamentos pueden desencadenar un ataque agudo de glaucoma.'),
(4, 'Cataratas', 'Una catarata es una opacidad del cristalino del ojo.\nEl cristalino del ojo normalmente es transparente. Actúa como una lente en una cámara, enfocando la luz a medida que esta pasa hasta la parte posterior del ojo.\nHasta los 45 años de edad aproximadamente, la forma del cristalino es capaz de cambiar. Esto permite que el cristalino enfoque sobre un objeto, ya sea que esté cerca o lejos.\nA medida que una persona envejece, las proteínas del cristalino comienzan a descomponerse. En consecuencia, este se torna opaco. Lo que el ojo ve puede aparecer borroso.', 'El único tratamiento para una catarata es la cirugía (extirpación).\n\nRecomendaciones para una catarata incipiente:\nCambio en la prescripción de anteojos\nMejor iluminación\nLentes de aumento\nGafas de sol', 'Diabetes\nInflamación del ojo\nLesión en el ojo\nAntecedentes familiares de cataratas\nUso prolongado de corticosteroides (tomados por vía oral) o algunas otras medicinas.\nExposición a la radiación.\nTabaquismo.\nCirugía por otro problema ocular.\nDemasiada exposición a la luz ultravioleta (luz solar).\nEn muchos casos, la causa de la catarata se desconoce.'),
(5, 'Conjuntivitis', 'Es la hinchazón (inflamación) o infección de la conjuntiva, la membrana que recubre los párpados y cubre la esclerótica del ojo.', 'El tratamiento de la conjuntivitis depende de la causa:\n\nConjuntivitis alérgica:\nMejora cuando se tratan las alergias y puede desaparecer por sí sola cuando se evitan los desencadenantes de dichas alergias.\nEste tipo de conjuntivitis se puede aliviar con la aplicación de compresas frías.\n\nConjuntivitis bacteriana:\nLos medicamentos con antibióticos, casi siempre en la forma de gotas oftálmicas\naplicación de compresas tibias sobre los ojos cerrados.\n\nLa conjuntivitis viral:\nDesaparece por sí sola. Las gotas oftálmicas con esteroides suaves pueden ayudar a aliviar la molestia.\nAplicación de compresas tibias sobre los ojos cerrados.', 'Clamidia.\nHongos.\nParásitos (rara vez).\nUso de lentes de contacto (especialmente lentes de uso prolongado).\nLos recién nacidos pueden ser infectados por la bacteria en la vía del parto. Esta afección se denomina oftalmia neonatal y se debe tratar de inmediato para preservar la visión.\n\n'),
(6, 'Desprendimiento de retina', 'Es la separación de la membrana sensible a la luz (retina) en la parte posterior del ojo de sus capas de soporte.\r\nCuando se presenta el desprendimiento de retina, el sangrado proveniente de los vasos sanguíneos cercanos puede causar opacidad en el interior del ojo, de manera que es posible que usted no vea claramente o que no vea en absoluto. La visión central puede resultar seriamente afectada si la mácula, la parte de la retina responsable de la visión fina y detallada, se desprende.\r\n', 'Cirugía:\nRetinopexia neumática: colocar una burbuja de gas en el ojo.\nIntroflexión o indentación escleral: empujar suavemente la pared del ojo hacia arriba contra la retina.\nVitrectomía: extraer el gel o el tejido cicatricial que tira de la retina, empleada para los desprendimientos o desgarros más grandes.', 'El tipo más común de desprendimiento de retina con frecuencia se debe a un desgarro o perforación en dicha retina, a través del cual se pueden filtrar los líquidos del ojo. Esto causa la separación de la retina de los tejidos subyacentes, muy parecido a una burbuja debajo de un papel decorativo. Esto casi siempre se debe a una afección llamada desprendimiento vítreo posterior.\nTambién puede ser causado por un traumatismo y una miopía muy grave. \nUn antecedente familiar de desprendimiento de retina también incrementa el riesgo.\nOtro tipo de desprendimiento de retina se denomina desprendimiento por tracción. Este tipo ocurre en personas con diabetes no controlada, que tienen antecedentes de cirugía de retina o que tienen inflamación crónica.'),
(7, 'Acromatopsia', 'Enfermedad congénita, hereditaria, cuya patología radica en la malformación de los conos, por lo que hay incapacidad de distinguir algunos colores, pudiendo llegar a una ceguera total de los colores.', '\nNo se puede tratar, lo mejor es conocerlo, hacerse un diagnóstico y aprender a vivir con las dificultades conocidas. ', 'Genética debido a un gen recesivo ligado al sexo, siendo más común en hombres.'),
(8, 'Estrabismo', 'Es un trastorno en el cual los dos ojos no se alinean en la misma dirección y, por lo tanto, no miran al mismo objeto al mismo tiempo. La afección se conoce más comúnmente como "ojos bizcos" (estrabismo convergente).', 'Gafas graduadas\ntratar la ambliopía: se coloca un parche sobre el ojo bueno, lo cual obliga al ojo más débil a trabajar más intensamente y obtener una mejor visión.\nCirugía de los músculos oculares. Se fortalecerán o se debilitarán diferentes músculos en el ojo. Si el estrabismo ha ocurrido debido a la pérdida de la visión, será necesario corregirla antes.\nPara casos leves, ejercicios de los músculos oculares para ayudarles a mantener los ojos derechos.', 'La mayoría de las veces, el problema tiene que ver con el control muscular y no con la fortaleza del músculo.\nEn la mayoría de los niños con estrabismo, la causa se desconoce.\nAlgunas veces, la ambliopía, también llamada “ojo vago” se presenta primero y causa el estrabismo. \n\nEl estrabismo que aparece en los adultos puede ser causado por:\nBotulismo.\nDiabetes (causa una afección conocida como estrabismo paralítico adquirido).\nEnfermedad de Graves.\nSíndrome de Guillain-Barré.\nLesión en el ojo.\nIntoxicación por mariscos.\nAccidente cerebrovascular.\nLesión cerebral traumática.\nPérdida de la visión por cualquier enfermedad o lesión ocular.'),
(9, 'Presbicia', 'Es una afección en la cual el cristalino del ojo pierde su capacidad para enfocar. Esto dificulta el hecho de ver objetos cercanos.', 'No existe cura.\n Conforme empeora la presbicia necesitará una corrección óptica.\nEstá en desarrollo la corrección mediante cirugía.', 'La principal causa es la edad, lo que conlleva:\nPérdida de elasticidad del cristalino.\nPérdida del tono de los músculos ciliares.\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Sintomas`
--

CREATE TABLE IF NOT EXISTS `Sintomas` (
  `id_sint` int(2) NOT NULL,
  `nom_sint` varchar(100) NOT NULL,
  PRIMARY KEY (`id_sint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Lista de sintomas';

--
-- Volcado de datos para la tabla `Sintomas`
--

INSERT INTO `Sintomas` (`id_sint`, `nom_sint`) VALUES
(1, 'Visión nublada, borrosa, difusa o velada'),
(2, 'Ver halos alrededor de las luces'),
(3, 'Ser sensible al resplandor'),
(4, 'Problemas de visión nocturna o con luz tenue.'),
(5, 'Empeoramiento de la miopía.'),
(6, 'Desarrollo de astigmatismo.'),
(7, 'Visión doble'),
(8, 'Pérdida de la intensidad de los colores'),
(9, 'Problemas para ver contornos contra un fondo o la diferencia entre sombras de colores'),
(10, 'Cambios frecuentes en las prescripciones de la corrección óptica.'),
(11, 'Disminución en la visión, incluso con la luz del día. '),
(12, 'Costras que se forman en el párpado durante la noche'),
(13, 'Dolor ocular'),
(14, 'Sensación arenosa en los ojos'),
(15, 'Aumento del lagrimeo'),
(16, 'Picazón en los ojos'),
(17, 'Enrojecimiento de los ojos'),
(18, 'Fotosensibilidad'),
(19, 'Visión de destellos de luz brillante, especialmente en la visión periférica'),
(20, 'Moscas volantes en el ojo'),
(21, 'Sombra o ceguera en una parte del campo visual de un ojo'),
(22, 'Dificultad para discriminar los colores y tono normales.'),
(23, 'Agudeza visual es muy baja especialmente en los espacios con altos niveles de iluminación'),
(24, 'Ojos que no se alinean en la misma dirección'),
(25, 'Movimientos oculares descoordinados (los ojos no se mueven juntos)'),
(26, 'Pérdida de la visión o de la percepción de profundidad'),
(27, 'Disminución en la capacidad para enfocar objetos cercanos'),
(28, 'Fatiga ocular'),
(29, 'Dolor de cabeza'),
(30, 'Pérdida lenta de la visión periférica (también llamada visión del túnel).'),
(31, 'Náuseas y vómitos'),
(32, 'Sensación de inflamación en el ojo');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Causas`
--
ALTER TABLE `Causas`
  ADD CONSTRAINT `Causas_ibfk_1` FOREIGN KEY (`id_patol`) REFERENCES `Patologias` (`id_patol`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Causas_ibfk_2` FOREIGN KEY (`id_sint`) REFERENCES `Sintomas` (`id_sint`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
