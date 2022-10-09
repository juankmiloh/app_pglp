-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 08-10-2022 a las 23:41:34
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pglp_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos_soporte`
--

CREATE TABLE `archivos_soporte` (
  `id` int NOT NULL,
  `id_indicador` varchar(50) DEFAULT NULL,
  `n_corto` varchar(200) DEFAULT NULL,
  `descripcion` varchar(10000) DEFAULT NULL,
  `exigencia` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `archivos_soporte`
--

INSERT INTO `archivos_soporte` (`id`, `id_indicador`, `n_corto`, `descripcion`, `exigencia`) VALUES
(1, 'Afinia.1.1.P', 'Curva S', 'Curva S de ejecución de los proyectos de inversión del SDL inversión acumulada programada vs inversión acumulada ejecutada, para cada trimestre de la vigencia transcurrido hasta el que se reporta. La inversión debe estar discriminada por proyecto y por Unidad Constructiva UC y debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018.', 'Obligatorio'),
(2, 'Afinia.1.1.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por circuito y por departamento.', 'Obligatorio'),
(3, 'Afinia.1.1.P', 'Ordenes Compra y/o contratos}', 'Archivo comprimido (.zip o .rar) con las ordenes de compra y/o contratos que soportan la adquisición de equipos o elementos para los proyectos de inversión de SDL.', 'Obligatorio'),
(4, 'Afinia.1.1.P', 'Actas parciales de obra', 'Archivo comprimido (.zip o .rar) con las actas de avance de obra de contratos de suministro y/o construcción  que soportan el avance reportado para los proyectos de inversión de SDL.', 'Obligatorio'),
(5, 'Afinia.1.1.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de los equipos o elementos de los proyectos de inversión de SDL que entraron en operación. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: el proyecto de inversión a la que pertenece el activo, las coordenadas de ubicación y la fecha de captura de la imagen.', 'Opcional'),
(6, 'Afinia.1.1.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(7, 'Afinia.1.2.P', 'Plan Mantenimiento', 'Plan de Mantenimiento para el semestre al que pertenece el trimestre que se reporta. Se debe presentar el listado de actividades a desarrollar, indicando para cada una el tipo de actividad (por ejemplo, Poda, balanceo, termografía, Lavado de estructuras, etc.), las fechas de inicio y terminación, el departamento donde se ejecuta, el valor presupuestado (incluyendo IVA) en $ corrientes, la identificación completa del circuito.', 'Obligatorio'),
(8, 'Afinia.1.2.P', 'Ejecución Mantenimiento', 'Listado de actividades del Plan de Mantenimiento que corresponden al trimestre que se reporta. Para cada actividad se debe precisar si la misma fue realizada o no, las fechas reales de inicio y terminación de la actividad, el número de la consignación, el número de la ODT, el numero de la SNC cuando aplique y el valor total real de la actividad (incluyendo IVA). También se debe presentar el listado de actividades de mantenimiento ejecutadas pero que no estaban previstas en el Plan de Mantenimiento, para las cuales se debe presentar la misma información que se solicita para las actividades incluidas en el Plan.', 'Obligatorio'),
(9, 'Afinia.1.2.P', 'Usuarios Beneficiados', 'Identificación de las cantidades de usuarios beneficiados por las actividades de mantenimiento ejecutadas en el trimestre. Los datos deben estar desagregados por subestación y por línea intervenida.', 'Obligatorio'),
(10, 'Afinia.1.2.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(11, 'Afinia.1.2.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de mantenimiento. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: la actividad de mantenimiento respectiva, las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(12, 'Afinia.1.3.P', 'Información SAIDI', 'Listado de los circuitos intervenidos y evaluados con su respectivos indicadores de calidad SAIDI _P, SAIDI_NP, SAIDI TOTAL', 'Obligatorio'),
(13, 'Afinia.1.3.P', 'Información interrupciones programadas', 'Reporte total de las interrupciones programadas incluyendo su duración , en los circuitos evaluados  ocurridas  en el periodo de evaluación.', 'Obligatorio'),
(14, 'Afinia.1.3.P', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas incluyendo su duración , en los circuitos evaluados, ocurridas en el periodo de evaluación.', 'Obligatorio'),
(15, 'Afinia.1.3.P', 'Información exclusiones', 'Listado de interrupciones  excluidas ,describiendo su duración,  indicando claramente la causa de exclusión, anexar el soporte correspondiente', 'Obligatorio'),
(16, 'Afinia.1.3.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por circuito y por departamento.', 'Obligatorio'),
(17, 'Afinia.1.3.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(18, 'Afinia.1.4.P', 'Información SAIFI', 'Listado de los circuitos intervenidos y evaluados con su respectivos indicadores de calidad SAIFI _P, SAIFI_NP, SAIFI TOTAL', 'Obligatorio'),
(19, 'Afinia.1.4.P', 'Información interrupciones programadas', 'Reporte total de las interrupciones programada , en los circuitos evaluados  ocurridas  en el periodo de evaluación.', 'Obligatorio'),
(20, 'Afinia.1.4.P', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas , en los circuitos evaluados, ocurridas en el periodo de evaluación.', 'Obligatorio'),
(21, 'Afinia.1.4.P', 'Información exclusiones', 'Listado de interrupciones excluidas,  indicando claramente la causa de exclusión, anexar el soporte correspondiente', 'Obligatorio'),
(22, 'Afinia.1.4.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por circuito y por departamento.', 'Obligatorio'),
(23, 'Afinia.1.4.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(24, 'Afinia.1.5.P', 'Interrupciones 1', 'Listado de todas las interrupciones no programadas ocurridas en el sistema operado por AFINIA, debe incluir la duración de las mismas, en el periodo evaluado', 'Obligatorio'),
(25, 'Afinia.1.5.P', 'Interrupciones 2', 'Listado de todas las interrupciones no programadas de duración entre 4 y 6 horas atendidas por personal del OR, en el periodo evaluado', 'Obligatorio'),
(26, 'Afinia.1.5.P', 'Inversiones', 'Inversiones efectuadas en las labores de atención y respuesta a las interrupciones no programadas.', 'Obligatorio'),
(27, 'Afinia.1.5.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados con la atención, oportuna de las interrupciones', 'Obligatorio'),
(28, 'Afinia.1.5.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(29, 'Afinia.1.6.a.P', 'Interrupciones', 'Listado de la totalidad de las interrupciones programadas en el sistema operado por el OR, en el periodo evaluado, el listado debe contener como mínimo, identificación del descargo, subestación, circuito, fecha , hora de inicio, hora de finalización, municipio, departamento, usuarios vinculados al activo.', 'Obligatorio'),
(30, 'Afinia.1.6.a.P', 'Medios de comunicación', 'Listado de la totalidad de medios de comunicación que utiliza el OR para comunicar las interrupciones programadas a sus usuarios', 'Obligatorio'),
(31, 'Afinia.1.6.a.P', 'Soportes medio de comunicación', 'Archivo comprimido (.zip o .rar) con las copias de contratos, ordenes de servicios, convenios etc., que demuestren la vinculación de los medios de comunicación con el OR', 'Obligatorio'),
(32, 'Afinia.1.6.a.P', 'Soporte cobertura medios de comunicación', 'Archivo comprimido (.zip o .rar)con los  certificados o documentos idóneos que demuestren la cobertura de la totalidad de los medios de comunicación que utiliza el operador de red para informar las interrupciones programadas a sus usuarios. en los certificados de cobertura se deben establecer claramente los municipios sobre los cuales el medio de comunicación utilizados tiene cobertura.', 'Obligatorio'),
(33, 'Afinia.1.6.a.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por municipio y por departamento.', 'Obligatorio'),
(34, 'Afinia.1.6.a.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(35, 'Afinia.1.6.b.P', 'Clientes industriales', 'Listado total de clientes industriales atendidos por el OR, Debe incluir como mínimo, razón social, Nic, circuito al cual esta vinculado, subestación, municipio y departamento.', 'Obligatorio'),
(36, 'Afinia.1.6.b.P', 'Interrupciones', 'Listado total de interrupciones y/o descargos que afectan clientes industriales indicado Numero de descargo, circuito, municipio, departamento, fecha, hora de inicio , hora final, motivo, usuario afectado ( razón social y NIC), fecha del aviso, medio de comunicación, en orden cronológico , en el periodo evaluado', 'Obligatorio'),
(37, 'Afinia.1.6.b.P', 'Aviso', 'Evidencias de los avisos a clientes industriales , en los emails y/o mensajes de texto y/o cartas,  debe poderse evidenciar claramente como mínimo, la razón social del cliente , el nic, el descargo, las fechas, circuito, municipio,  horario del descargo, la evidencias deben estar en el mismo orden cronológico del listado de interrupciones, en el periodo evaluado', 'Obligatorio'),
(38, 'Afinia.1.6.b.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(39, 'Afinia.3.1.P', 'Curva S', 'Curva S de ejecución de los proyectos de inversión en infraestructura para la calidad de la potencia niveles de tensión 4,3 y 2, inversión acumulada programada vs inversión acumulada ejecutada, para cada trimestre de la vigencia transcurrido hasta el que se reporta. La inversión debe estar discriminada por proyecto y evidenciar claramente tanto el valor de cada proyecto, como también el porcentaje de ejecución del mismo.', 'Obligatorio'),
(40, 'Afinia.3.1.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por proyecto y por departamento.', 'Obligatorio'),
(41, 'Afinia.3.1.P', 'Ordenes Compra y/o contratos}', 'Archivo comprimido (.zip o .rar) con las ordenes de compra y/o contratos que soportan la adquisición de equipos o elementos para los proyectos de inversión en la calidad de la potencia.', 'Obligatorio'),
(42, 'Afinia.3.1.P', 'Actas parciales de obra', 'Archivo comprimido (.zip o .rar) con las actas de avance de obra de contratos de suministro y/o construcción  que soportan el avance reportado para los proyectos de inversión en la calidad de la potencia.', 'Obligatorio'),
(43, 'Afinia.3.1.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de los equipos o elementos de los proyectos de inversión de SDL que entraron en operación. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: el proyecto de inversión a la que pertenece el activo, las coordenadas de ubicación y la fecha de captura de la imagen.', 'Opcional'),
(44, 'Afinia.3.1.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(45, 'Afinia.1.1.a.R', 'SAIDI', 'Reporte SAIDI calculado por el OR del  periodo evaluado', 'Obligatorio'),
(46, 'Afinia.1.1.a.R', 'SAIDI', 'Reporte SAIDI calculado y publicado por el LAC  (sin edición) del periodo evaluado', 'Obligatorio'),
(47, 'Afinia.1.1.a.R', 'INVERSIONES', 'Cuadro resumen con la totalidad de las inversiones realizadas en el sistema del OR en el periodo evaluado.', 'Obligatorio'),
(48, 'Afinia.1.1.a.R', 'Información interrupciones programadas', 'Reporte total de las interrupciones programadas incluyendo su duración,  ocurridas  en el periodo de evaluación en el sistema operado por el OR', 'Obligatorio'),
(49, 'Afinia.1.1.a.R', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas incluyendo su duración, ocurridas en el periodo de evaluación en el sistema operado por el OR', 'Obligatorio'),
(50, 'Afinia.1.1.a.R', 'Información exclusiones', 'Listado de interrupciones excluidas ,describiendo su duración,  indicando claramente la causa de exclusión, anexar el soporte correspondiente', 'Obligatorio'),
(51, 'Afinia.1.1.a.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por  departamento.', 'Obligatorio'),
(52, 'Afinia.1.1.a.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(53, 'Afinia.1.1.b.R', 'SAIDI_NP', 'Reporte SAIDI_NP calculado por el OR del periodo evaluado', 'Obligatorio'),
(54, 'Afinia.1.1.b.R', 'SAIDI_NP', 'Reporte SAIDI_NP calculado y publicado por el LAC  (sin edición) del periodo evaluado', 'Obligatorio'),
(55, 'Afinia.1.1.b.R', 'INVERSIONES', 'Cuadro resumen con la totalidad de las inversiones realizadas en el sistema del OR en el periodo evaluado.', 'Obligatorio'),
(56, 'Afinia.1.1.b.R', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas incluyendo su duración, ocurridas en el periodo de evaluación, en el sistema operado por el OR.', 'Obligatorio'),
(57, 'Afinia.1.1.b.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(58, 'Afinia.1.1.b.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(59, 'Afinia.1.2.a.R', 'SAIFI', 'Reporte SAIFI calculado por el OR del  periodo evaluado, en el sistema operado por el OR', 'Obligatorio'),
(60, 'Afinia.1.2.a.R', 'SAIFI', 'Reporte SAIFI calculado y publicado por el LAC  (sin edición) del periodo evaluado, en el sistema operado por el OR', 'Obligatorio'),
(61, 'Afinia.1.2.a.R', 'Información interrupciones programadas', 'Reporte total de las interrupciones programadas, ocurridas  en el periodo de evaluación, en el sistema operado por el OR.', 'Obligatorio'),
(62, 'Afinia.1.2.a.R', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas, ocurridas en el periodo de evaluación, en el sistema operado por el OR.', 'Obligatorio'),
(63, 'Afinia.1.2.a.R', 'Información exclusiones', 'Listado de interrupciones excluidas,  indicando claramente la causa de exclusión, anexar el soporte correspondiente', 'Obligatorio'),
(64, 'Afinia.1.2.a.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(65, 'Afinia.1.2.a.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(66, 'Afinia.1.2.b.R', 'SAIFI_NP', 'Reporte SAIDI_NP calculado por el OR del periodo evaluado', 'Obligatorio'),
(67, 'Afinia.1.2.b.R', 'SAIFI_NP', 'Reporte SAIDI_NP calculado y publicado por el LAC  (sin edición) del periodo evaluado', 'Obligatorio'),
(68, 'Afinia.1.2.b.R', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas , ocurridas en el periodo de evaluación, en el sistema operado por el OR.', 'Obligatorio'),
(69, 'Afinia.1.2.b.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(70, 'Afinia.1.2.b.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(71, 'Afinia.1.3.R', 'Información interrupciones programadas', 'Reporte total de las interrupciones programadas, ocurridas  en el periodo de evaluación, en el sistema operado por el OR.', 'Obligatorio'),
(72, 'Afinia.1.3.R', 'Evidencias 1', 'Evidencias del total de las comunicaciones del OR a los usuarios afectados por los eventos, sean medios impresos, medios digitales, pautas periodistas independientes, perifoneos ETC.', 'Obligatorio'),
(73, 'Afinia.1.3.R', 'Evidencias 1', 'Se deben anexar los certificados de cobertura de los medios de comunicación utilizados ', 'Obligatorio'),
(74, 'Afinia.1.3.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(75, 'Afinia.1.3.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(76, 'Afinia.3.1.R', 'Equipos', 'Listado con puntos de medición viables y puntos de medición instalados, en la descripción del equipo de calidad de potencia instalado en el periodo evaluado , ( se debe incluir serial de equipo, código unidad constructiva, subestación , barra , circuito asociado)', 'Obligatorio'),
(77, 'Afinia.3.1.R', 'Ordenes Compra y/o contratos}', 'Archivo comprimido (.zip o .rar) con las ordenes de compra y/o contratos que soportan la adquisición de equipos y/o su montaje. ', 'Obligatorio'),
(78, 'Afinia.3.1.R', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de los equipos o elementos de los proyectos de inversión de SDL que entraron en operación. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: el proyecto de inversión a la que pertenece el activo, las coordenadas de ubicación y la fecha de captura de la imagen.', 'Opcional'),
(79, 'Afinia.3.1.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(80, 'Afinia.3.2.a.R', 'Equipos', 'Listado con la totalidad de los puntos de medición, debe incluir su ubicación y  como mínimo  indicar, subestación , barra, circuito, nivel de tensión.', 'Obligatorio'),
(81, 'Afinia.3.2.a.R', 'Registros 1', 'Listado con la totalidad de los registros de tensión suministrados por los equipos de medición de la calidad de potencia en el periodo evaluado', 'Obligatorio'),
(82, 'Afinia.3.2.a.R', 'Registros 2', 'Listado con la totalidad de los registros de tensión suministrados por los equipos de medición de la calidad de potencia, que presentan desviaciones estacionarias de tensión por encima de la permitida regulatoriamente, indicar las semanas en que se dan las lecturas por fuera de lo permitido regulatoriamente , en el periodo evaluado.', 'Obligatorio'),
(83, 'Afinia.3.2.a.R', 'Registros 3', 'Copias formato CEL reportado a la CREG, periodo evaluado', 'Obligatorio'),
(84, 'Afinia.3.2.a.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(85, 'Afinia.3.2.a.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(86, 'Afinia.3.2.b.R', 'Equipos', 'Listado con la totalidad de los puntos de medición, debe incluir su ubicación y  como mínimo  indicar, subestación , barra, circuito, nivel de tensión.', 'Obligatorio'),
(87, 'Afinia.3.2.b.R', 'Registros 1', 'Listado con la totalidad de los registros de tensión suministrados por los equipos de medición de la calidad de potencia en el periodo evaluado', 'Obligatorio'),
(88, 'Afinia.3.2.b.R', 'Registros 2', 'Listado con la totalidad de los registros de tensión suministrados por los equipos de medición de la calidad de potencia, que presentan desviaciones estacionarias de tensión por encima de la permitida regulatoriamente, en semanas donde se presentan interrupciones transitorias de tensión, indicar las semanas en que se dan las lecturas por fuera de lo permitido regulatoriamente , en el periodo evaluado.', 'Obligatorio'),
(89, 'Afinia.3.2.b.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(90, 'Afinia.3.2.b.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(91, 'Afinia.3.3.R', 'Equipos', 'Listado con la totalidad de los puntos de medición, debe incluir su ubicación y  como mínimo  indicar, subestación , barra, circuito, nivel de tensión.', 'Obligatorio'),
(92, 'Afinia.3.3.R', 'Registros 1', 'Listado con la totalidad de los registros de distorsión armónica PERC_95 suministrados por los equipos de medición de la calidad de potencia en el periodo evaluado', 'Obligatorio'),
(93, 'Afinia.3.3.R', 'Registros 2', 'Listado con la totalidad de los registros de distorsión armónica suministrados por los equipos de medición de la calidad de potencia, que presentan distorsión armónica PERC_95  por encima de la permitida regulatoriamente, en el periodo evaluado.', 'Obligatorio'),
(94, 'Afinia.3.3.R', 'Registros 3', 'Copias formato registros distorsión armónica  reportado a la CREG, periodo evaluado', 'Obligatorio'),
(95, 'Afinia.3.3.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(96, 'Afinia.3.3.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(97, 'Afinia.2.1.P', 'Curva S', 'Curva S de ejecución de los proyectos de inversión del STR, discriminando para cada proyecto: el código del proyecto según el plan de inversión aprobado por la CREG, los beneficios esperados, el o los departamentos beneficiados, la inversión acumulada programada para cada uno de los cuatro trimestres del ańo y la inversión acumulada ejecutada para cada trimestre transcurrido (por ejemplo, si se reporta el trimestre 2, se debe enviar la información acumulada ejecutada al finalizar los trimestres 1 y 2). La inversión debe estar discriminada por proyecto y por Unidad Constructiva UC y debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018 ($COP de diciembre de 2017). Se deben incluir en el reporte los proyectos ejecutados que no hacen parte del plan de inversión aprobado por la CREG.', 'Obligatorio'),
(98, 'Afinia.2.1.P', 'Usuarios Beneficiados', 'Detalla de cantidad de usuarios beneficiados por departamento con cada proyecto de inversión aprobado por la CREG.', 'Obligatorio'),
(99, 'Afinia.2.1.P', 'Ordenes Compra', 'Archivo comprimido (.zip o .rar) con las ordenes de compra que soportan la adquisición de equipos o elementos para los proyectos de inversión de STR.', 'Obligatorio'),
(100, 'Afinia.2.1.P', 'Actas de obra', 'Archivo comprimido (.zip o .rar) con las actas de avance de obra de contratos de suministro y/o construcción  que soportan el avance reportado para los proyectos de inversión.', 'Opcional'),
(101, 'Afinia.2.1.P', 'Registro fotográfico', 'Documento en formato pdf con imágenes de los equipos o elementos de los proyectos de inversión de STR que entraron en operación. Para cada foto incluida en el documento se debe indicar: el nombre y código del proyecto de inversión a la que pertenece el activo (según el plan de inversión aprobado por la CREG), el nombre y código de la o las Unidades Constructivas presentadas en la imagen, las coordenadas de ubicación de la o las UCs fotografiadas y la fecha de captura de la imagen.', 'Opcional'),
(102, 'Afinia.2.1.R', 'Eventos', 'Se debe presentar el reporte de demanda no atendida no programada publicado por XM para el ańo que se reporta. indicando para cada evento si el mismo debe ser considerado o no para el calculo de demanda no atendida de la empresa. No se deben eliminar registros del reporte original de XM (cuando un evento no corresponda al STR de la empresa se debe indicar que el mismo no aplica).', 'Obligatorio'),
(103, 'Afinia.2.2.a.R', 'No programados', 'Se debe presentar el Reporte de Eventos de Indisponibilidad por Activos del STR publicado por XM para el ańo que se reporta. indicando para cada evento si el mismo debe ser considerado o no para el calculo del indicador. No se deben eliminar registros del reporte original de XM (cuando un evento no corresponda al STR de la empresa se debe indicar que el mismo no aplica).', 'Obligatorio'),
(104, 'Afinia.2.2.b.R', 'Programados', 'Se debe presentar el Reporte de Eventos de Indisponibilidad por Activos del STR publicado por XM para el ańo que se reporta. indicando para cada evento si el mismo debe ser considerado o no para el calculo del indicador. No se deben eliminar registros del reporte original de XM (cuando un evento no corresponda al STR de la empresa se debe indicar que el mismo no aplica).', 'Obligatorio'),
(105, 'Afinia.2.2.P', 'Plan Mantenimiento', 'Plan de Mantenimiento para el ańo al que pertenece el trimestre que se reporta. Se debe presentar el listado de actividades a desarrollar trimestralmente (cada actividad se entiende que es un proyecto), indicando para cada una el tipo de actividad (por ejemplo. Poda y Trocha. Inspección Aérea Termográfica. etc.), las fechas de inicio y terminación, el departamento donde se ejecuta, el valor presupuestado (incluyendo IVA) en $COP corrientes, el Identificador único de la subestación (IUS) o el código de la línea (IUL) al que pertenece el activo a intervenir y la cantidad de usuarios beneficiados. En el caso de intervención de unidades constructivas de subestaciones se debe precisar adicionalmente el identificador único del activo (IUA) respectivo.', 'Obligatorio'),
(106, 'Afinia.2.2.P', 'Ejecucion Mantenimiento', 'Listado de actividades del Plan de Mantenimiento que corresponden al trimestre que se reporta. Para cada actividad se debe precisar: si la misma fue realizada o no, las fechas reales de inicio y terminación de la actividad. el número de la consignación. el número de la ODT, el numero de la SNC cuando aplique, los beneficios de la actividad, la cantidad de usuarios beneficiados y el valor total real de la actividad (incluyendo IVA) en $COP corrientes. También se debe presentar el listado de actividades de mantenimiento ejecutadas pero que no estaban previstas en el Plan de Mantenimiento, para las cuales se debe presentar la misma información que se solicita para las actividades incluidas en el Plan.', 'Obligatorio'),
(107, 'Afinia.2.2.P', 'Registro fotográfico', 'Documento en formato pdf con imágenes de la ejecución de las actividades de mantenimiento. Para cada foto incluida en el documento pdf se debe indicar: la actividad de mantenimiento a la que corresponde la imagen, las coordenadas de ubicación del sitio de la imagen y la fecha de captura de la imagen.', 'Opcional'),
(108, 'Afinia.4.1.P', 'SAP', 'Registros contables SAP con el detalle del valor de las ordenes mensuales para los proyectos Conpes', 'Obligatorio'),
(109, 'Afinia.4.1.P', 'Ordenes Compra', 'Archivo comprimido (.zip o .rar) con las ordenes de compra que soportan la adquisición de equipos o elementos para los proyectos de inversión de STR.', 'Obligatorio'),
(110, 'Afinia.4.1.P', 'Cronograma', 'Detalle de los porcentajes de avance esperado y real de las actividades del cronograma de cada proyecto.', 'Obligatorio'),
(111, 'Afinia.4.1.P', 'Curva S', 'Para cada proyecto financiado con recursos Conpes se debe incluir la información de los valores de la inversión ($COP corrientes) programada y real ejecutada con resolución mensual. para el periodo transcurrido desde el inicio del proyecto hasta la finalización del trimestre que se reporta.', 'Obligatorio'),
(112, 'Afinia.4.1.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de los proyectos. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: la actividad de mantenimiento respectiva. el municipio y las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(113, 'Afinia.4.1.R', 'Actividades ejecutadas', 'se debe presentar el plan de reducción de perdidas  de perdidas detallado ', 'Obligatorio'),
(114, 'Afinia.4.2.P', 'Actividades planeadas', 'Información de cantidad de acciones proyectadas en campańas sistemáticas en consumidores regulados y medios, gestión grandes consumidores, y instalación de macromedida. Se debe presentar los montos de inversión planeados en pesos corrientes.', 'Obligatorio'),
(115, 'Afinia.4.2.P', 'Actividades ejecutadas', 'Detalle de la ejecución desde acciones ejecutadas en campańas sistemáticas en consumidores regulados y medios, gestión grandes consumidores, y instalación de macromedida. indicando en cada caso la información que permite identificar a cada uno de éstos. el numero de orden de servicio. la fecha de instalación del medidor. el número del medidor. la marca del medidor. numero de acta de instalación y el valor total de inversión ejecutada. No se deben incluir medidores remunerados por conceptos diferentes a los cubiertos con este indicador.', 'Obligatorio'),
(116, 'Afinia.4.2.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de control de perdidas. Se debe incluir archivo de Excel donde. para cada nombre de archivo de las fotos se presente. se indique la identificación del usuario de la imagen. las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(117, 'Afinia.4.2.R', 'Actividades ejecutadas', 'se debe presentar el total de usuarios sin medidor y el total de clientes a normalizar ', 'Obligatorio'),
(118, 'Afinia.4.3.P', 'Actividades planeadas', 'Información de cantidad de acciones proyectadas en instalación de medidores a usuarios sin medición, sistema de medición centralizada AMI y aseguramiento de red. Se debe presentar los montos de inversión planeados en pesos corrientes.', 'Obligatorio'),
(119, 'Afinia.4.3.P', 'Actividades ejecutadas', 'Detalle de la ejecución desde acciones en instalación de medidores a usuarios sin medición, sistema de medición centralizada AMI y aseguramiento de red. indicando en cada caso la información que permite identificar a cada uno de éstos. el numero de orden de servicio. la fecha de instalación del medidor. el número del medidor. la marca del medidor. numero de acta de instalación y el valor total de inversión ejecutada. No se deben incluir medidores remunerados por conceptos diferentes a los cubiertos con este indicador.', 'Obligatorio'),
(120, 'Afinia.4.3.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de reducción de perdidas. Se debe incluir archivo de Excel donde. para cada nombre de archivo de las fotos se presente. se indique la identificación del usuario de la imagen. las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(121, 'Afinia.4.3.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(122, 'Afinia.4.4.P', 'Actividades planeadas', 'Información de cantidad de acciones proyectadas en instalación de medidores a usuarios sin medición, sistema de medición centralizada AMI y aseguramiento de red. Se debe presentar los montos de inversión planeados en pesos corrientes.', 'Obligatorio'),
(123, 'Afinia.4.4.P', 'Actividades ejecutadas', 'Detalle de la ejecución desde acciones en instalación de medidores a usuarios sin medición, sistema de medición centralizada AMI y aseguramiento de red. indicando en cada caso la información que permite identificar a cada uno de éstos. el numero de orden de servicio. la fecha de instalación del medidor. el número del medidor. la marca del medidor. numero de acta de instalación y el valor total de inversión ejecutada. No se deben incluir medidores remunerados por conceptos diferentes a los cubiertos con este indicador.', 'Obligatorio'),
(124, 'Afinia.4.4.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de reducción de perdidas. Se debe incluir archivo de Excel donde. para cada nombre de archivo de las fotos se presente. se indique la identificación del usuario de la imagen. las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(125, 'Afinia.4.4.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(126, 'Afinia.5.1.P', 'Cronograma de actividades y Curva S', 'Cronograma Anual de las actividades programadas dentro del Plan de Gestión de Gestión del Riesgo Eléctrico del Operador, disgregado de manera mensual y trimestral. Donde se especifique las cantidades en UC, indicando la unidad de medida, el proyecto, el circuito, el departamento, el municipio, los montos de la inversión acumulada programada vs inversión acumulada ejecutada, para cada trimestre de la vigencia transcurrido hasta el que se reporta. La inversión debe estar discriminada por proyecto y por Unidad Constructiva UC y debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018.', 'Obligatorio'),
(127, 'Afinia.5.1.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución sobre el Plan de Gestión de Riesgo Eléctrico sobre las actividades realizadas. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: la actividad a la que corresponde, el objetivo de la actividad, los usuarios impactados,  las coordenadas de ubicación y la fecha de captura de la imagen.', 'Opcional'),
(128, 'Afinia.5.1.P', ' Inversión Ejecutada', 'Detalle del valor de las inversiones ejecutada por actividad en el periodo a evaluar.', 'Opcional'),
(129, 'Afinia.5.1.P', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(130, 'Afinia.5.1.P', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(131, 'Afinia.5.1.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional '),
(132, 'Afinia.5.1.R', 'Reporte de AEO Generales', 'Detalle del registro general de los accidentes de origen eléctrico que se presentaron en las redes del operador durante el periodo de evaluación, indicando la fuente de información del reporte y la gestión adelantada ante el mismo para evitar nuevos accidentes. Se debe relacionar como mínimo los campos contenidos en el formato TT5 del SUI, ampliando la información de la descripción del accidentes y la fuente oficial con la que se esta soportando.', 'Obligatorio'),
(133, 'Afinia.5.1.R', 'Reporte de AEO Atribuibles al operador ', 'Detalle del registro de la tipología de los accidentes de origen eléctrico que se presentaron en las redes del operador durante el periodo de evaluación, indicando la fuente de información del reporte y la gestión adelantada ante el mismo para evitar nuevos accidentes. Se debe relacionar como mínimo los campos contenidos en el formato TT5 del SUI, ampliando la información de la descripción del accidentes y la fuente oficial con la que se esta soportando.', 'Obligatorio'),
(134, 'Afinia.5.1.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento en el periodo evaluado.', 'Obligatorio'),
(135, 'Afinia.5.1.R', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de las acciones realizadas dentro de la gestión para disminuir los accidentes de origen eléctrico en las redes eléctricas del operador. Se debe incluir archivo de Excel donde para cada registro se presente: descripción de la actividad , las coordenadas de ubicación y la fecha de captura de la imagen.', 'Opcional '),
(136, 'Afinia.5.1.R', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(137, 'Afinia.5.1.R', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional '),
(138, 'Afinia.5.1.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(139, 'Afinia.5.2.R', 'Cronograma de actividades y Curva S', 'Cronograma con la información anual y mensual programada donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de los proyectos de  reposición de conductor ACSR y aluminio, donde se especifique las cantidades en UC, indicando la unidad de medida, el proyecto, el circuito, el departamento, el municipio, los montos de la inversión programada vs inversión ejecutada, para cada trimestre de la vigencia transcurrido hasta el que se reporta. La inversión debe estar discriminada por proyecto y por Unidad Constructiva UC y debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018.', 'Obligatorio'),
(140, 'Afinia.5.2.R', 'Informe Técnico', 'Archivo comprimido (.zip o .rar) con el informe técnico en el cuál el prestador describa el nivel de avance presentado en el periodo y los principales hechos que contribuyeron o retrasaron los proyectos programados y/o en ejecución, en el periodo a evaluar. ', 'Obligatorio'),
(141, 'Afinia.5.2.R', 'Ordenes de Servicio / Compra', 'Archivo comprimido (.zip o .rar) con las ordenes de servicio/compra que soportan la adquisición de activos o de mano de obra de los proyectos a evaluar.', 'Obligatorio'),
(142, 'Afinia.5.2.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento en el periodo evaluado.', 'Obligatorio'),
(143, 'Afinia.5.2.R', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución sobre los circuitos intervenidos y las inversiones realizadas. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: el proyecto de inversión a la que pertenece el activo, las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(144, 'Afinia.5.2.R', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(145, 'Afinia.5.2.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(146, 'Afinia.7.1.P ', 'Informe Linea Base', 'Archivo comprimido (.zip o .rar) con los resultados de la Construcción de la línea Base del Programa de Responsabilidad Social Empresarial.', 'Obligatorio'),
(147, 'Afinia.7.1.P ', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento en el periodo evaluado.', 'Obligatorio'),
(148, 'Afinia.7.1.P ', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional '),
(149, 'Afinia.7.1.P ', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(150, 'Afinia.7.1.P ', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(151, 'Afinia.7.1.R', 'Informe de Resultados Encuestas', 'Archivo comprimido (.zip o .rar) con los resultados de la encuesta realizadas para percepción de los colaboradores del sentido de pertenencia con la empresa. Debe contener la información de la ficha de la encuesta realizada y los soportes de la misma.', 'Obligatorio'),
(152, 'Afinia.7.1.R', 'Cronograma del Plan de Acción', 'Cronograma con la información de las actividades, de manera anual y mensual, programadas dentro del Plan de Acción definido por el operador para la gestión en la mejora del indicador. donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de las actividades planeadas en el periodo a evaluar.  ', 'Obligatorio'),
(153, 'Afinia.7.1.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(154, 'Afinia.7.1.R', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional'),
(155, 'Afinia.7.1.R', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(156, 'Afinia.7.1.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional'),
(157, 'Afinia.7.2.P', 'Cronograma de actividades y Curva S', 'Cronograma con la información anual y mensual programada del Plan de mejora al Programa de Responsabilidad Social definido por el operador, donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de las actividades planeadas en el periodo a evaluar.  ', 'Obligatorio'),
(158, 'Afinia.7.2.P', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(159, 'Afinia.7.2.P', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional'),
(160, 'Afinia.7.2.P', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(161, 'Afinia.7.2.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional'),
(162, 'Afinia.7.2.R', 'Informe de Resultados Encuestas', 'Archivo comprimido (.zip o .rar) con los resultados de la encuesta realizadas para percepción de los colaboradores del sentido de pertenencia con la empresa. Debe contener la información de la ficha de la encuesta realizada y los soportes de la misma.', 'Obligatorio'),
(163, 'Afinia.7.2.R', 'Cronograma del Plan de Acción', 'Cronograma con la información de las actividades, de manera anual y mensual, programadas dentro del Plan de Acción definido por el operador para la gestión en la mejora del indicador. donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de las actividades planeadas en el periodo a evaluar.  ', 'Obligatorio'),
(164, 'Afinia.7.2.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(165, 'Afinia.7.2.R', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional'),
(166, 'Afinia.7.2.R', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(167, 'Afinia.7.2.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional'),
(168, 'Afinia.8.1.P ', 'Cronograma de actividades y Curva S', 'Cronograma con la información anual y mensual programada del Programa de Gestión Social en Barrios Subnormales (BSN) y Zonas de Difícil Gestión ZDG  definido por el operador, donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de las actividades planeadas en el periodo a evaluar.  ', 'Obligatorio'),
(169, 'Afinia.8.1.P ', 'Registro de Gestión', 'Detalle del registro de usuarios impactados en cada uno de las actividades ejecutadas dentro del Cronograma de Gestión Social en Barrios Subnormales y Zonas de Difícil Gestión.', 'Obligatorio'),
(170, 'Afinia.8.1.P ', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(171, 'Afinia.8.1.P ', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional'),
(172, 'Afinia.8.1.P ', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(173, 'Afinia.8.1.P ', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional'),
(174, 'Afinia.8.1.P ', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades del Programa de Gestión Social en Barrios Subnormales y Zonas de Difícil Gestión. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: la actividad del programa respectiva, las coordenadas de ubicación, las personas impactadas por la actividad y la fecha de captura de la imagen.', 'Obligatorio'),
(175, 'Afinia.8.1.R', 'Cronograma de Actividades y Curva S', 'Cronograma de la contratación y acciones del operador para el logro del objetivo, con la información anual y mensual de los proyectos de normalización gestionados indicando el avance de cada una de las actividades contenidas,  presupuestos ejecutados y el número de usuarios normalizados  durante el periodo de evaluación. Se debe complementar con el plan de acción sobre los atrasos presentados indicando las acciones y los tiempos en las cuales se ejecutaran para superar las dificultades presentadas.', 'Obligatorio'),
(176, 'Afinia.8.1.R', 'Informe de Gestión del Operador', 'Archivo comprimido (.zip o .rar) con los resultados de la gestión realizada por el operador  para la disminución del número de clientes en Barrios Subnormales durante el periodo de evaluación.', 'Obligatorio'),
(177, 'Afinia.8.1.R', 'Informe de Avance mensual del Ministerio de Minas y Energía para proyectos PRONE', 'Archivo comprimido (.zip o .rar) con los resultados del Informe de avance mensual del Ministerio de Minas y Energía para proyectos PRONE a cargo del operador, durante el periodo de evaluación.', 'Opcional '),
(178, 'Afinia.8.1.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por proyecto y por departamento.', 'Obligatorio'),
(179, 'Afinia.8.1.R', 'Inversión Ejecutada', 'Detalle del valor de la inversión ejecutada en el periodo a evaluar, por proyecto y por departamento.', 'Obligatorio'),
(180, 'Afinia.8.1.R', 'Beneficios', 'Detalle de los beneficios por proyecto aprobado y ejecutado dentro del periodo de evaluación.', 'Obligatorio'),
(181, 'Afinia.8.1.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(182, 'Afinia.8.2.R', 'Cronograma de Actividades y Curva S', 'Cronograma de la contratación y acciones del operador para el logro del objetivo, con la información anual y mensual de los proyectos de normalización gestionados para la implementación del sistema de medición prepago indicando el avance de cada una de las actividades contenidas,  presupuestos ejecutados y el número de usuarios normalizados  durante el periodo de evaluación. Se debe complementar con el plan de acción sobre los atrasos presentados indicando las acciones y los tiempos en las cuales se ejecutaran para superar las dificultades presentadas.', 'Obligatorio'),
(183, 'Afinia.8.2.R', 'Informe de Gestión del Operador', 'Archivo comprimido (.zip o .rar) con los resultados de la gestión realizada por el operador   implementación de sistema de medición prepago en especial énfasis en áreas especiales.', 'Obligatorio'),
(184, 'Afinia.8.2.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por proyecto y por departamento.', 'Obligatorio'),
(185, 'Afinia.8.2.R', 'Inversión Ejecutada', 'Detalle del valor de la inversión ejecutada en el periodo a evaluar, por proyecto y por departamento.', 'Obligatorio'),
(186, 'Afinia.8.2.R', 'Beneficios', 'Detalle de los beneficios por proyecto aprobado y ejecutado dentro del periodo de evaluación.', 'Obligatorio'),
(187, 'Afinia.8.2.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(188, 'Afinia.8.3.R', 'Informe Anual de Cartera', 'Archivo comprimido (.zip o .rar) con los resultados del Informe Anual  de Gestión de Reducción de Cartera del mercado, con especial énfasis en los Barrios Subnormales y las Zonas de Difícil Gestión  a cargo del operador durante el periodo de evaluación.  El informe debe contener de manera detallada la gestión y resultados obtenidos mensualmente, indicando departamento y municipio, con los soportes de la gestión realizada.', 'Obligatorio'),
(189, 'Afinia.8.3.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(190, 'Afinia.8.3.R', 'Inversión Ejecutada', 'Detalle del valor de la inversión ejecutada en el periodo a evaluar por departamento.', 'Opcional '),
(191, 'Afinia.8.3.R', 'Beneficios', 'Detalle de los beneficios por Gestión para la reducción de cartera en el mercado y específicamente en Áreas Especiales, dentro del periodo de evaluación.', 'Obligatorio'),
(192, 'Afinia.8.3.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(193, 'Afinia.6.1.P', 'Informe Actividades ', 'Informe con el detalle de actividades que conciernan al Trimestre que se reporta del Afinia.6.1.P. Implementar una estrategia que optimice el procedimiento de trámite oportuno y de calidad de reclamaciones por parte de la empresa', 'Obligatorio'),
(194, 'Afinia.6.1.P', 'Cruva S ', 'Cronograma Curva S de los proyectos con los que se busca mejorar el procedimiento de trámite oportuno y de calidad de reclamaciones por parte de la empresa. ', 'Obligatorio'),
(195, 'Afinia.6.1.P', 'Cronograma', 'Cronograma de los proyectos con los que se busca mejorar el procedimiento de trámite oportuno y de calidad de reclamaciones por parte de la empresa. ', 'Obligatorio'),
(196, 'Afinia.6.1.P', 'Soportes ', 'Archivo comprimido (.zip o .rar) con los soportes (Imágenes, Word, PDF, Presentaciones o Archivos Excel y de mas anexos que crean que puedan servir de soporte de las Actividades desarrolladas para dar cumplimiento al (Afinia.6.1.P). Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: Actividad a la que pertenece el soporte.', 'Obligatorio'),
(197, 'Afinia.6.1.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(198, 'Afinia.6.1.R', 'Informe Actividades ', 'Informe donde se detalle el cumplimiento del Indicador de Resultado 6.1. Reducir el número de fallos que reconozcan efectos de Silencio Administrativos Positivo (SAP) en contra de la empresa.', 'Obligatorio'),
(199, 'Afinia.6.1.R', 'Soportes ', 'listado en archivo Excel en donde se detalle todos los fallos que reconozcan efectos de Silencio Administrativos Positivo (SAP) por la SSPD para el periodo; y demás soportes que la empresa pretenda presentar para demostrar el cumplimiento del indicador.', 'Obligatorio'),
(200, 'Afinia.6.1.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(201, 'Afinia.6.2.P', 'Informe Actividades ', 'Informe con el detalle de actividades que conciernan al Trimestre que se reporta del Afinia.6.2.P. Mantener el porcentaje de casos resueltos mediante el programa de atención al cliente en primer contacto del universo de casos que aplique por parte de la empresa', 'Obligatorio'),
(202, 'Afinia.6.2.P', 'Soportes FRC ', 'Listado en archivo Excel e  con el consolidado de FRC la empresa para el periodo donde se discrimine el total de FCR , NO FCR, porcentaje FCR y NO FCR para el trimestre del indicador 6.2.', 'Obligatorio'),
(203, 'Afinia.6.2.P', 'Soportes ', 'Archivo comprimido (.zip o .rar) con los soportes (Imágenes, Word, PDF, Presentaciones o Archivos Excel y de mas anexos que crean que puedan servir de soporte de las Actividades desarrolladas para dar cumplimiento al (Afinia.6.2.P). Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: Actividad a la que pertenece el soporte .', 'Obligatorio'),
(204, 'Afinia.6.2.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(205, 'Afinia.6.2.R', 'Informe Actividades ', 'Informe donde se detalle el cumplimiento del Indicador de Resultado 6.2. Mejorar la calidad de los Recurso de Apelación (RAP).', 'Obligatorio');
INSERT INTO `archivos_soporte` (`id`, `id_indicador`, `n_corto`, `descripcion`, `exigencia`) VALUES
(206, 'Afinia.6.2.R', 'Soportes ', 'listado en archivo Excel en donde se detalle todas las resoluciones notificadas a la empresa de los Recurso de Apelación (RAP)  por la SSPD para el periodo, discriminando total de RAP - Confirmatorios, RAP – Modificatorios y RAP Revoca; y demás soportes que la empresa pretenda presentar para demostrar el cumplimiento del indicador.', 'Obligatorio'),
(207, 'Afinia.6.2.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(208, 'Air-e.1.1.P', 'Curva S', 'Curva S de ejecución de los proyectos de inversión del SDL inversión acumulada programada vs inversión acumulada ejecutada, para cada trimestre de la vigencia transcurrido hasta el que se reporta. La inversión debe estar discriminada por proyecto y por Unidad Constructiva UC y debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018.', 'Obligatorio'),
(209, 'Air-e.1.1.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por circuito y por departamento.', 'Obligatorio'),
(210, 'Air-e.1.1.P', 'Ordenes Compra y/o contratos}', 'Archivo comprimido (.zip o .rar) con las ordenes de compra y/o contratos que soportan la adquisición de equipos o elementos para los proyectos de inversión de SDL.', 'Obligatorio'),
(211, 'Air-e.1.1.P', 'Actas parciales de obra', 'Archivo comprimido (.zip o .rar) con las actas de avance de obra de contratos de suministro y/o construcción  que soportan el avance reportado para los proyectos de inversión de SDL.', 'Obligatorio'),
(212, 'Air-e.1.1.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de los equipos o elementos de los proyectos de inversión de SDL que entraron en operación. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: el proyecto de inversión a la que pertenece el activo, las coordenadas de ubicación y la fecha de captura de la imagen.', 'Opcional'),
(213, 'Air-e.1.1.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(214, 'Air-e.1.2.P', 'Plan Mantenimiento', 'Plan de Mantenimiento para el semestre al que pertenece el trimestre que se reporta. Se debe presentar el listado de actividades a desarrollar, indicando para cada una el tipo de actividad (por ejemplo, Poda, balanceo, termografía, Lavado de estructuras, etc.), las fechas de inicio y terminación, el departamento donde se ejecuta, el valor presupuestado (incluyendo IVA) en $ corrientes, la identificación completa del circuito.', 'Obligatorio'),
(215, 'Air-e.1.2.P', 'Ejecución Mantenimiento', 'Listado de actividades del Plan de Mantenimiento que corresponden al trimestre que se reporta. Para cada actividad se debe precisar si la misma fue realizada o no, las fechas reales de inicio y terminación de la actividad, el número de la consignación, el número de la ODT, el numero de la SNC cuando aplique y el valor total real de la actividad (incluyendo IVA). También se debe presentar el listado de actividades de mantenimiento ejecutadas pero que no estaban previstas en el Plan de Mantenimiento, para las cuales se debe presentar la misma información que se solicita para las actividades incluidas en el Plan.', 'Obligatorio'),
(216, 'Air-e.1.2.P', 'Usuarios Beneficiados', 'Identificación de las cantidades de usuarios beneficiados por las actividades de mantenimiento ejecutadas en el trimestre. Los datos deben estar desagregados por subestación y por línea intervenida.', 'Obligatorio'),
(217, 'Air-e.1.2.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(218, 'Air-e.1.2.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de mantenimiento. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: la actividad de mantenimiento respectiva, las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(219, 'Air-e.1.3.P', 'información SAIDI', 'Listado de los circuitos intervenidos y evaluados con su respectivos indicadores de calidad SAIDI _P, SAIDI_NP, SAIDI TOTAL', 'Obligatorio'),
(220, 'Air-e.1.3.P', 'Información interrupciones programadas', 'Reporte total de las interrupciones programadas incluyendo su duración , en los circuitos evaluados  ocurridas  en el periodo de evaluación.', 'Obligatorio'),
(221, 'Air-e.1.3.P', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas incluyendo su duración , en los circuitos evaluados, ocurridas en el periodo de evaluación.', 'Obligatorio'),
(222, 'Air-e.1.3.P', 'Información exclusiones', 'Listado de interrupciones  excluidas ,describiendo su duración,  indicando claramente la causa de exclusión, anexar el soporte correspondiente', 'Obligatorio'),
(223, 'Air-e.1.3.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por circuito y por departamento.', 'Obligatorio'),
(224, 'Air-e.1.3.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(225, 'Air-e.1.4.P', 'información SAIFI', 'Listado de los circuitos intervenidos y evaluados con su respectivos indicadores de calidad SAIFI _P, SAIFI_NP, SAIFI TOTAL', 'Obligatorio'),
(226, 'Air-e.1.4.P', 'Información interrupciones programadas', 'Reporte total de las interrupciones programada , en los circuitos evaluados  ocurridas  en el periodo de evaluación.', 'Obligatorio'),
(227, 'Air-e.1.4.P', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas , en los circuitos evaluados, ocurridas en el periodo de evaluación.', 'Obligatorio'),
(228, 'Air-e.1.4.P', 'Información exclusiones', 'Listado de interrupciones excluidas,  indicando claramente la causa de exclusión, anexar el soporte correspondiente', 'Obligatorio'),
(229, 'Air-e.1.4.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por circuito y por departamento.', 'Obligatorio'),
(230, 'Air-e.1.4.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(231, 'Air-e.1.5.a.P', 'Medios de comunicación', 'Listado de la totalidad de medios de comunicación que utiliza el OR para comunicar las interrupciones programadas a sus usuarios', 'Obligatorio'),
(232, 'Air-e.1.5.a.P', 'Soportes medio de comunicación', 'Archivo comprimido (.zip o .rar) con las copias de contratos, ordenes de servicios, convenios etc., que demuestren la vinculación de los medios de comunicación con el OR', 'Obligatorio'),
(233, 'Air-e.1.5.a.P', 'Soporte cobertura medios de comunicación', 'Archivo comprimido (.zip o .rar)con los  certificados o documentos idóneos que demuestren la cobertura de la totalidad de los medios de comunicación que utiliza el operador de red para informar las interrupciones programadas a sus usuarios. en los certificados de cobertura se deben establecer claramente los municipios sobre los cuales el medio de comunicación utilizados tiene cobertura.', 'Obligatorio'),
(234, 'Air-e.1.5.a.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por municipio y por departamento.', 'Obligatorio'),
(235, 'Air-e.1.5.a.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(236, 'Air-e.1.5.b.P', 'clientes industriales', 'Listado total de clientes industriales atendidos por el OR, Debe incluir como mínimo, razón social, Nic, circuito al cual esta vinculado, subestación, municipio y departamento.', 'Obligatorio'),
(237, 'Air-e.1.5.b.P', 'Interrupciones', 'Listado total de interrupciones y/o descargos que afectan clientes industriales indicado Numero de descargo, circuito, municipio, departamento, fecha, hora de inicio , hora final, motivo, usuario afectado ( razón social y NIC), fecha del aviso, medio de comunicación, en orden cronológico , en el periodo evaluado', 'Obligatorio'),
(238, 'Air-e.1.5.b.P', 'Aviso', 'Evidencias de los avisos a clientes industriales , en los emails, debe poderse evidenciar claramente como mínimo, la razón social del cliente , el nic, el descargo, las fechas, circuito, municipio,  horario del descargo, la evidencias deben estar en el mismo orden cronológico del listado de interrupciones, en el periodo evaluado', 'Obligatorio'),
(239, 'Air-e.1.5.b.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(240, 'Air-e.1.6.a.P', 'DIU', 'Listado de 1000 usuarios peor servidos por departamento (Atlántico, Guajira y Magdalena) asociados a los circuitos a los cuales se les realizó inversiones y mantenimientos en el desarrollo de los indicadores parciales 1,1 y 1,2 en el ańo inmediatamente anterior, en el periodo de tiempo correspondiente al semestre que se esta evaluando., ejemplo 1er semestre del 2022. ', 'Obligatorio'),
(241, 'Air-e.1.6.a.P', 'DIU', 'Listado de 1000 usuarios peor servidos por departamento (Atlántico, Guajira y Magdalena) asociados a los circuitos a los cuales se les realizo inversiones y mantenimientos en el desarrollo de los indicadores parciales 1,1 y 1,2 en el ańo inmediatamente anterior,  en el periodo de tiempo correspondiente al mismo semestre del  evaluado  pero del ańo inmediatamente anterior, ejemplo 1er semestre del ańo 2021-', 'Obligatorio'),
(242, 'Air-e.1.6.a.P', 'DIU', 'Listado de los usuarios que obtuvieron una mejora en el indicador DIU, comparando los dos listados anteriores.', 'Obligatorio'),
(243, 'Air-e.1.6.a.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(244, 'Air-e.1.6.b.P', 'FIU', 'Listado de 1000 usuarios peor servidos por departamento (Atlántico, Guajira y Magdalena) asociados a los circuitos a los cuales se les realizo inversiones y mantenimientos en el desarrollo de los indicadores parciales 1,1 y 1,2 en el ańo inmediatamente anterior, en el periodo de tiempo correspondiente al semestre que se esta evaluando., ejemplo 1er semestre del 2022. ', 'Obligatorio'),
(245, 'Air-e.1.6.b.P', 'FIU', 'Listado de 1000 usuarios peor servidos por departamento (Atlántico, Guajira y Magdalena) asociados a los circuitos a los cuales se les realizo inversiones y mantenimientos en el desarrollo de los indicadores parciales 1,1 y 1,2 en el ańo inmediatamente anterior,  en el periodo de tiempo correspondiente al mismo semestre del  evaluado  pero del ańo inmediatamente anterior, ejemplo 1er semestre del ańo 2021-', 'Obligatorio'),
(246, 'Air-e.1.6.b.P', 'FIU', 'Listado de los usuarios que obtuvieron una mejora en el indicador FIU, comparando los dos listados anteriores.', 'Obligatorio'),
(247, 'Air-e.1.6.b.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(248, 'Air-e.3.1.P', 'Curva S', 'Curva S de ejecución de los proyectos de inversión en infraestructura para la calidad de la potencia niveles de tensión 4,3 y 2, inversión acumulada programada vs inversión acumulada ejecutada, para cada trimestre de la vigencia transcurrido hasta el que se reporta. La inversión debe estar discriminada por proyecto y por Unidad Constructiva UC y debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018.', 'Obligatorio'),
(249, 'Air-e.3.1.P', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por proyecto y por departamento.', 'Obligatorio'),
(250, 'Air-e.3.1.P', 'Ordenes Compra y/o contratos}', 'Archivo comprimido (.zip o .rar) con las ordenes de compra y/o contratos que soportan la adquisición de equipos o elementos para los proyectos de inversión en la calidad de la potencia.', 'Obligatorio'),
(251, 'Air-e.3.1.P', 'Actas parciales de obra', 'Archivo comprimido (.zip o .rar) con las actas de avance de obra de contratos de suministro y/o construcción  que soportan el avance reportado para los proyectos de inversión en la calidad de la potencia.', 'Obligatorio'),
(252, 'Air-e.3.1.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de los equipos o elementos de los proyectos de inversión de SDL que entraron en operación. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: el proyecto de inversión a la que pertenece el activo, las coordenadas de ubicación y la fecha de captura de la imagen.', 'Opcional'),
(253, 'Air-e.3.1.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(254, 'Air-e.1.1.a.R', 'SAIDI', 'Reporte SAIDI calculado por el OR del  periodo evaluado', 'Obligatorio'),
(255, 'Air-e.1.1.a.R', 'SAIDI', 'Reporte SAIDI calculado y publicado por el LAC  (sin edición) del periodo evaluado', 'Obligatorio'),
(256, 'Air-e.1.1.a.R', 'INVERSIONES', 'Cuadro resumen con la totalidad de las inversiones realizadas en el sistema del OR en el periodo evaluado.', 'Obligatorio'),
(257, 'Air-e.1.1.a.R', 'Información interrupciones programadas', 'Reporte total de las interrupciones programadas incluyendo su duración,  ocurridas  en el periodo de evaluación en el sistema operado por el OR', 'Obligatorio'),
(258, 'Air-e.1.1.a.R', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas incluyendo su duración, ocurridas en el periodo de evaluación en el sistema operado por el OR', 'Obligatorio'),
(259, 'Air-e.1.1.a.R', 'Información exclusiones', 'Listado de interrupciones excluidas ,describiendo su duración,  indicando claramente la causa de exclusión, anexar el soporte correspondiente', 'Obligatorio'),
(260, 'Air-e.1.1.a.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por  departamento.', 'Obligatorio'),
(261, 'Air-e.1.1.a.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(262, 'Air-e.1.1.b.R', 'SAIDI_NP', 'Reporte SAIDI_NP calculado por el OR del periodo evaluado', 'Obligatorio'),
(263, 'Air-e.1.1.b.R', 'SAIDI_NP', 'Reporte SAIDI_NP calculado y publicado por el LAC  (sin edición) del periodo evaluado', 'Obligatorio'),
(264, 'Air-e.1.1.b.R', 'INVERSIONES', 'Cuadro resumen con la totalidad de las inversiones realizadas en el sistema del OR en el periodo evaluado.', 'Obligatorio'),
(265, 'Air-e.1.1.b.R', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas incluyendo su duración, ocurridas en el periodo de evaluación, en el sistema operado por el OR.', 'Obligatorio'),
(266, 'Air-e.1.1.b.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(267, 'Air-e.1.1.b.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(268, 'Air-e.1.2.a.R', 'SAIFI', 'Reporte SAIFI calculado por el OR del  periodo evaluado, en el sistema operado por el OR', 'Obligatorio'),
(269, 'Air-e.1.2.a.R', 'SAIFI', 'Reporte SAIFI calculado y publicado por el LAC  (sin edición) del periodo evaluado, en el sistema operado por el OR', 'Obligatorio'),
(270, 'Air-e.1.2.a.R', 'Información interrupciones programadas', 'Reporte total de las interrupciones programadas, ocurridas  en el periodo de evaluación, en el sistema operado por el OR.', 'Obligatorio'),
(271, 'Air-e.1.2.a.R', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas, ocurridas en el periodo de evaluación, en el sistema operado por el OR.', 'Obligatorio'),
(272, 'Air-e.1.2.a.R', 'Información exclusiones', 'Listado de interrupciones excluidas,  indicando claramente la causa de exclusión, anexar el soporte correspondiente', 'Obligatorio'),
(273, 'Air-e.1.2.a.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(274, 'Air-e.1.2.a.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(275, 'Air-e.1.2.b.R', 'SAIFI_NP', 'Reporte SAIDI_NP calculado por el OR del periodo evaluado', 'Obligatorio'),
(276, 'Air-e.1.2.b.R', 'SAIFI_NP', 'Reporte SAIDI_NP calculado y publicado por el LAC  (sin edición) del periodo evaluado', 'Obligatorio'),
(277, 'Air-e.1.2.b.R', 'Información interrupciones no  programadas', 'Reporte total de las interrupciones no programadas , ocurridas en el periodo de evaluación, en el sistema operado por el OR.', 'Obligatorio'),
(278, 'Air-e.1.2.b.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(279, 'Air-e.1.2.b.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(280, 'Air-e.1.3.R', 'Información interrupciones programadas', 'Reporte total de las interrupciones programadas, ocurridas  en el periodo de evaluación, en el sistema operado por el OR.', 'Obligatorio'),
(281, 'Air-e.1.3.R', 'Evidencias 1', 'Evidencias del total de las comunicaciones del OR a los usuarios afectados por los eventos, sean medios impresos, medios digitales, pautas periodistas independientes, perifoneos ETC.', 'Obligatorio'),
(282, 'Air-e.1.3.R', 'Evidencias 1', 'Se deben anexar los certificados de cobertura de los medios de comunicación utilizados ', 'Obligatorio'),
(283, 'Air-e.1.3.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(284, 'Air-e.1.3.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(285, 'Air-e.3.1.R', 'Equipos', 'Listado de equipos de calidad de potencia instalados en el periodo evaluado , (debe incluir serial de equipo, código unidad constructiva, subestación , barra , circuito asociado)', 'Obligatorio'),
(286, 'Air-e.3.1.R', 'Ordenes Compra y/o contratos}', 'Archivo comprimido (.zip o .rar) con las ordenes de compra y/o contratos que soportan la adquisición de equipos y/o su montaje. ', 'Obligatorio'),
(287, 'Air-e.3.1.R', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de los equipos o elementos de los proyectos de inversión de SDL que entraron en operación. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: el proyecto de inversión a la que pertenece el activo, las coordenadas de ubicación y la fecha de captura de la imagen.', 'Opcional'),
(288, 'Air-e.3.1.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(289, 'Air-e.3.2.R', 'Equipos', 'Listado con la totalidad de los puntos de medición, debe incluir su ubicación y  como mínimo  indicar, subestación , barra, circuito, nivel de tensión.', 'Obligatorio'),
(290, 'Air-e.3.2.R', 'Registros 1', 'Listado con la totalidad de los registros de tensión suministrados por los equipos de medición de la calidad de potencia en el periodo evaluado', 'Obligatorio'),
(291, 'Air-e.3.2.R', 'Registros 2', 'Listado con la totalidad de los registros de tensión suministrados por los equipos de medición de la calidad de potencia, que presentan desviaciones estacionarias de tensión por encima de la permitida regulatoriamente, en el periodo evaluado.', 'Obligatorio'),
(292, 'Air-e.3.2.R', 'Registros 3', 'Copias formato CEL reportado a la CREG, periodo evaluado', 'Obligatorio'),
(293, 'Air-e.3.2.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados  por departamento.', 'Obligatorio'),
(294, 'Air-e.3.2.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(295, 'Air-e.3.3.R', 'Equipos', 'Listado con la totalidad de los puntos de medición, debe incluir su ubicación y  como mínimo  indicar, subestación , barra, circuito, nivel de tensión.', 'Obligatorio'),
(296, 'Air-e.3.3.R', 'Registros 1', 'Listado con la totalidad de los registros de distorsión armónica suministrados por los equipos de medición de la calidad de potencia en el periodo evaluado', 'Obligatorio'),
(297, 'Air-e.3.3.R', 'Registros 2', 'Listado con la totalidad de los registros de distorsión armónica suministrados por los equipos de medición de la calidad de potencia, que presentan distorsión armónica  por encima de la permitida regulatoriamente, en el periodo evaluado.', 'Obligatorio'),
(298, 'Air-e.3.3.R', 'Registros 3', 'Copias formato registros distorsión armónica  reportado a la CREG, periodo evaluado', 'Obligatorio'),
(299, 'Air-e.3.3.R', 'Usuarios Beneficiados', 'Detalla la cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(300, 'Air-e.3.3.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(301, 'Air-e.2.1.P', 'Curva S', 'Curva S de ejecución de los proyectos de inversión del STR, discriminando para cada proyecto: el código del proyecto según el plan de inversión aprobado por la CREG, los beneficios esperados, el o los departamentos beneficiados, la inversión acumulada programada para cada uno de los cuatro trimestres del ańo y la inversión acumulada ejecutada para cada trimestre transcurrido (por ejemplo, si se reporta el trimestre 2, se debe enviar la información acumulada ejecutada al finalizar los trimestres 1 y 2). La inversión debe estar discriminada por proyecto y por Unidad Constructiva UC y debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018 ($COP de diciembre de 2017). Se deben incluir en el reporte los proyectos ejecutados que no hacen parte del plan de inversión aprobado por la CREG.', 'Obligatorio'),
(302, 'Air-e.2.1.P', 'Usuarios Beneficiados', 'Detalla de cantidad de usuarios beneficiados por departamento con cada proyecto de inversión aprobado por la CREG.', 'Obligatorio'),
(303, 'Air-e.2.1.P', 'Ordenes Compra', 'Archivo comprimido (.zip o .rar) con las ordenes de compra que soportan la adquisición de equipos o elementos para los proyectos de inversión de STR.', 'Obligatorio'),
(304, 'Air-e.2.1.P', 'Registro fotográfico', 'Documento en formato pdf con imágenes de los equipos o elementos de los proyectos de inversión de STR que entraron en operación. Para cada foto incluida en el documento se debe indicar: el nombre y código del proyecto de inversión a la que pertenece el activo (según el plan de inversión aprobado por la CREG), el nombre y código de la o las Unidades Constructivas presentadas en la imagen, las coordenadas de ubicación de la o las UCs fotografiadas y la fecha de captura de la imagen.', 'Opcional'),
(305, 'Air-e.2.1.R', 'Eventos', 'Se debe presentar el reporte de demanda no atendida no programada publicado por XM para el ańo que se reporta. indicando para cada evento si el mismo debe ser considerado o no para el calculo de demanda no atendida de la empresa. No se deben eliminar registros del reporte original de XM (cuando un evento no corresponda al STR de la empresa se debe indicar que el mismo no aplica).', 'Obligatorio'),
(306, 'Air-e.2.2.a.R', 'No programados', 'Se debe presentar el reporte de eventos no programados publicado por XM para el ańo que se reporta. indicando para cada evento si el mismo debe ser considerado o no para el calculo del indicador. No se deben eliminar registros del reporte original de XM (cuando un evento no corresponda al STR de la empresa se debe indicar que el mismo no aplica).', 'Obligatorio'),
(307, 'Air-e.2.2.b.R', 'Programados', 'Se debe presentar el reporte de eventos programados publicado por XM para el ańo que se reporta. indicando para cada evento si el mismo debe ser considerado o no para el calculo del indicador. No se deben eliminar registros del reporte original de XM (cuando un evento no corresponda al STR de la empresa se debe indicar que el mismo no aplica).', 'Obligatorio'),
(308, 'Air-e.2.2.P', 'Plan Mantenimiento', 'Plan de Mantenimiento para el ańo al que pertenece el trimestre que se reporta. Se debe presentar el listado de actividades a desarrollar trimestralmente (cada actividad se entiende que es un proyecto), indicando para cada una el tipo de actividad (por ejemplo. Poda y Trocha. Inspección Aérea Termográfica. etc.), las fechas de inicio y terminación, el departamento donde se ejecuta, el valor presupuestado (incluyendo IVA) en $COP corrientes, el Identificador único de la subestación (IUS) o el código de la línea (IUL) al que pertenece el activo a intervenir y la cantidad de usuarios beneficiados. En el caso de intervención de unidades constructivas de subestaciones se debe precisar adicionalmente el identificador único del activo (IUA) respectivo.', 'Obligatorio'),
(309, 'Air-e.2.2.P', 'Ejecucion Mantenimiento', 'Listado de actividades del Plan de Mantenimiento que corresponden al trimestre que se reporta. Para cada actividad se debe precisar: si la misma fue realizada o no, las fechas reales de inicio y terminación de la actividad. el número de la consignación. el número de la ODT, el numero de la SNC cuando aplique, los beneficios de la actividad, la cantidad de usuarios beneficiados y el valor total real de la actividad (incluyendo IVA) en $COP corrientes. También se debe presentar el listado de actividades de mantenimiento ejecutadas pero que no estaban previstas en el Plan de Mantenimiento, para las cuales se debe presentar la misma información que se solicita para las actividades incluidas en el Plan.', 'Obligatorio'),
(310, 'Air-e.2.2.P', 'Registro fotográfico', 'Documento en formato pdf con imágenes de la ejecución de las actividades de mantenimiento. Para cada foto incluida en el documento pdf se debe indicar: la actividad de mantenimiento a la que corresponde la imagen, las coordenadas de ubicación del sitio de la imagen y la fecha de captura de la imagen.', 'Opcional'),
(311, 'Air-e.4.1.P', 'SAP', 'Registros contables SAP con el detalle del valor de las ordenes mensuales para los proyectos financiados con recursos Conpes.', 'Obligatorio'),
(312, 'Air-e.4.1.P', 'Ordenes Compra', 'Archivo comprimido (.zip o .rar) con las ordenes de compra que soportan la adquisición de equipos o elementos para los proyectos financiados con recursos Conpes.', 'Obligatorio'),
(313, 'Air-e.4.1.P', 'Cronograma', 'Detalle de los porcentajes de avance esperado y real de las actividades del cronograma de cada proyecto financiado con recursos Conpes.', 'Obligatorio'),
(314, 'Air-e.4.1.P', 'Curva S', 'Para cada proyecto financiado con recursos Conpes se debe incluir la información de, ubicación (municipio-departamento), beneficios que otorga, cantidad de usuarios impactados, los valores de la inversión ($COP corrientes) programada, para cada trimestre del ańo al que pertenece el trimestre que se reporta, y la inversión real ejecutada con resolución mensual, para el periodo transcurrido desde el inicio del proyecto hasta la finalización del trimestre que se reporta.', 'Obligatorio'),
(315, 'Air-e.4.1.P', 'Registro fotográfico', 'Documento en formato pdf con imágenes de los equipos o elementos de los proyectos financiados con recursos Conpes que entraron en operación. Para cada foto incluida en el documento se debe indicar: el nombre del proyecto al que pertenece el activo, la descripción del activo presentado en la imagen, las coordenadas de ubicación de éste y la fecha de captura de la imagen.', 'Obligatorio'),
(316, 'Air-e.4.2.P', 'Actividades planeadas', 'Información de los proyectos de instalación de medida centralizada en grandes consumidores (cada instalación se entenderá que es un proyecto), programada para cada mes del ańo al que pertenece el trimestre que se reporta. Se deben presentar los montos de inversión planeados en $COP corrientes por proyecto.', 'Obligatorio'),
(317, 'Air-e.4.2.P', 'Actividades ejecutadas', 'Detalle de la ejecución de los proyectos de instalación de medida centralizada en grandes consumidores. Se debe presentar la información desagregada por proyecto precisando en cada uno el usuario impactado, el numero de orden de servicio, la fecha de instalación del medidor, el número del medidor, la marca del medidor, el numero de acta de instalación y el valor total de inversión real ejecutada en $COP corrientes. No se deben incluir medidores remunerados por conceptos diferentes a los cubiertos con este indicador.', 'Obligatorio'),
(318, 'Air-e.4.2.P', 'Registro fotográfico', 'Documento en formato pdf con imágenes de los equipos o elementos de medida centralizada instalados. Para cada foto incluida en el documento se debe indicar: la identificación del usuario impactado, la descripción del activo o elemento presentado en la imagen, las coordenadas de ubicación del usuario impactado y la fecha de captura de la imagen.', 'Obligatorio'),
(319, 'Air-e.4.3.P', 'Curva S', 'Se deben presentar los proyectos de aseguramiento de la red que se planean ejecutar en el ańo al que pertenece el trimestre que se reporta. Para cada proyecto de aseguramiento de la red se debe presentar el territorio de influencia (departamento y/o municipios). el número de  usuarios beneficiados. el valor total del proyecto planeado. el presupuesto planeado para cada trimestre durante el periodo de construcción y los valores realmente ejecutados para cada trimestre transcurrido hasta el trimestre que se evalúa. La valoración del proyecto y todas las cifras de valores planeados y ejecutados. debe realizarse con las Unidades Constructivas de la Resolución CREG 015 de 2018 y deben reportarse en $ constantes de diciembre de 2017.', 'Obligatorio'),
(320, 'Air-e.4.3.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de instalación de medida centralizada. Se debe incluir archivo de Excel donde. para cada nombre de archivo de las fotos. se indique la identificación del usuario de la imagen. el municipio y las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(321, 'Air-e.4.3.P', 'SAP', 'Registros contables SAP con el detalle del valor de las ordenes mensuales para los proyectos ejecutados.', 'Obligatorio'),
(322, 'Air-e.4.3.P', 'Ordenes Compra', 'Archivo comprimido (.zip o .rar) con las ordenes de compra que soportan la adquisición de equipos o elementos para los proyectos de inversión de STR.', 'Obligatorio'),
(323, 'Air-e.4.4.P', 'Actividades planeadas', 'Información de las cantidades de medidores a instalar programada para cada mes del ańo al que pertenece el trimestre que se reporta. desagregada por municipio. Debe incluirse también los montos de inversión planeados en pesos corrientes (a nivel de municipio).', 'Obligatorio'),
(324, 'Air-e.4.4.P', 'Actividades ejecutadas', 'Detalle de la ejecución de las actividades de instalación de medición para usuarios sin medidor y aseguramiento de la medida. Se debe presentar la información desagregada a nivel de usuario. indicando en cada caso la información que permite identificar a cada uno de éstos. el numero de orden de servicio. la fecha de instalación del medidor. el número del medidor. la marca del medidor. numero de acta de instalación y el valor total de inversión ejecutada (desagregada en mano de obra y materiales). No se deben incluir medidores remunerados por conceptos diferentes a los cubiertos con este indicador.', 'Obligatorio'),
(325, 'Air-e.4.4.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de instalación de medidores. Se debe incluir archivo de Excel donde. para cada nombre de archivo de las fotos. se indique la identificación del usuario de la imagen. el municipio y las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(326, 'Air-e.4.5.P', 'Actividades planeadas', 'Información de las cantidades de acciones de normalización programadas para cada mes del ańo al que pertenece el trimestre que se reporta. desagregada por municipio. Debe incluirse también los montos de inversión planeados en pesos corrientes (a nivel de municipio).', 'Obligatorio'),
(327, 'Air-e.4.5.P', 'Actividades ejecutadas', 'Detalle de la ejecución de las actividades de normalización. Se debe presentar la información desagregada a nivel de usuario intervenido. indicando en cada caso la información que permite identificar a cada uno de éstos. el numero de orden de servicio. las actividades realizadas. numero de acta donde se registran las actividades realizadas y el valor total de inversión ejecutada. No se deben incluir actividades realizadas que son remuneradas por conceptos diferentes a los cubiertos con este indicador.', 'Obligatorio'),
(328, 'Air-e.4.5.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de normalización. Se debe incluir archivo de Excel donde. para cada nombre de archivo de las fotos. se indique la identificación del usuario de la imagen. el municipio y las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(329, 'Air-e.4.6.P', 'Actividades planeadas', 'Información de las cantidades de macromedidores programadas para instalación en cada mes del ańo al que pertenece el trimestre que se reporta. desagregada por municipio. Debe incluirse también la cantidad de usuarios que serán cubiertos con la macromedición y los montos de inversión planeados en pesos corrientes (a nivel de municipio).', 'Obligatorio'),
(330, 'Air-e.4.6.P', 'Actividades ejecutadas', 'Detalle de la ejecución de la instalación de macromedición. Se debe presentar la información desagregada a nivel de macromedidor. indicando en cada caso la información que permite identificar a cada uno de éstos: las actividades realizadas. numero de acta donde se registran las actividades realizadas. el valor total de inversión ejecutada y el numero de usuarios cubiertos. No se deben incluir actividades de instalación de macromedición  que son remuneradas por conceptos diferentes a los cubiertos con este indicador.', 'Obligatorio'),
(331, 'Air-e.4.6.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de instalación de macromedición. Se debe incluir archivo de Excel donde. para cada nombre de archivo de las fotos. se indique la identificación del macromedidor de la imagen. el municipio y las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(332, 'Air-e.4.7.P', 'Actividades planeadas', 'Información de las cantidades de personas que se planea sean impactadas con las actividades de gestión social en cada mes del ańo al que pertenece el trimestre que se reporta. desagregadas por municipio. Debe incluirse también el monto de inversión planeado en pesos corrientes (a nivel de municipio).', 'Obligatorio'),
(333, 'Air-e.4.7.P', 'Actividades ejecutadas', 'Detalle de las actividades de gestión social ejecutadas durante el trimestre que se reporta. Para cada actividad se debe indicar: el barrio y municipio de realización. el proyecto de control de pérdidas o de inversión beneficiado con la actividad. la cantidad de personas que asistieron a la actividad. la fecha de ejecución de la actividad y el costo real incurrido en el desarrollo de la misma.', 'Obligatorio'),
(334, 'Air-e.4.7.P', 'Facturas', 'Archivo comprimido (.zip o .rar) con las facturas que soportan los pagos asociados a los costos incurridos en la ejecución de las actividades de gestión social. Se debe acompańar de archivo Excel donde se indique a que actividad de socialización corresponde cada factura o soporte del costo incurrido.', 'Obligatorio'),
(335, 'Air-e.4.7.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades gestión social. Se debe incluir archivo de Excel donde. para cada nombre de archivo de las fotos. se indique la identificación del evento de gestión social. el municipio y barrio de ejecución y la fecha de captura de la imagen.', 'Obligatorio'),
(336, 'Air-e.4.8.P', 'Actividades planeadas', 'Información de las cantidades de totalizadores a instalar en barrios subnormales programada para cada mes del ańo al que pertenece el trimestre que se reporta. desagregada por municipio. Debe incluirse también los montos de inversión planeados en pesos corrientes (a nivel de municipio).', 'Obligatorio'),
(337, 'Air-e.4.8.P', 'Actividades ejecutadas', 'Detalle de la ejecución de las actividades de instalación de totalizadores en barrios subnormales. Se debe presentar la información desagregada a nivel de totalizador. indicando en cada caso: la dirección. el numero de orden de servicio. la fecha de instalación del medidor. el número del medidor. la marca del medidor y el valor total de inversión ejecutada (desagregada en mano de obra y materiales). No se deben incluir totalizadores remunerados por conceptos diferentes a los cubiertos con este indicador.', 'Obligatorio'),
(338, 'Air-e.4.8.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades de instalación de totalizadores. Se debe incluir archivo de Excel donde. para cada nombre de archivo de las fotos. se indique la identificación del totalizador de la imagen. el municipio y las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(339, 'Air-e.4.2.R', 'Actividades planeadas', 'Información de las cantidades  de medidores instalados a usuarios sin medidor', 'Obligatorio'),
(340, 'Air-e.2.1.P', 'Actas de obra', 'Archivo comprimido (.zip o .rar) con las actas de avance de obra de contratos de suministro y/o construcción  que soportan el avance reportado para los proyectos de inversión.', 'Opcional'),
(341, 'Air-e.4.1.P', 'Actas de obra', 'Archivo comprimido (.zip o .rar) con las actas de avance de obra de contratos de suministro y/o construcción  que soportan el avance reportado para los proyectos financiados con recursos Conpes.', 'Opcional'),
(342, 'Air-e.4.1.R', 'Actividades ejecutadas', 'Índice calculado por el LAC (XM)', 'Obligatorio'),
(343, 'Air-e.4.2.R', 'Actividades ejecutadas', 'Detalle de la ejecución de medidores instalados a usuarios sin medidor', 'Obligatorio'),
(344, 'Air-e.5.1.a.P', 'Cronograma y Curva S', 'Cronograma con la información anual y mensual programada donde se permita la verificación de las actividades trimestrales. y la Curva S de ejecución de los proyectos de  reposición de conductor ACSR y aluminio. donde se especifique las cantidades en UC. indicando la unidad de medida. el proyecto. el circuito. el departamento. el municipio. los montos de la inversión acumulada programada vs inversión acumulada ejecutada. para cada trimestre de la vigencia transcurrido hasta el que se reporta. La inversión debe estar discriminada por proyecto y por Unidad Constructiva UC y debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018.', 'Obligatorio'),
(345, 'Air-e.5.1.b.P', 'Cronograma y Curva S', 'Cronograma con la información anual y trimestral programada donde se permita la verificación de las actividades trimestrales. y la  Curva S de ejecución de los proyectos de  normalización de red monohilo. donde se especifique las cantidades en UC. indicando la unidad de medida. el proyecto. el circuito. el departamento. el municipio. los montos de la inversión acumulada programada vs inversión acumulada ejecutada. para cada trimestre de la vigencia transcurrido hasta el que se reporta. Debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018.', 'Obligatorio'),
(346, 'Air-e.5.1.c.P', 'Soportes Comunicaciones de Reporte', 'Archivo comprimido (.zip o .rar) con el soporte de las comunicaciones y los reportes realizados a autoridades locales y entidades competentes sobre el incumplimiento de distancias de seguridad y violaciones al Reglamento Técnico de Instalaciones Eléctricas RETIE. durante el semestre a evaluar.', 'Obligatorio'),
(347, 'Air-e.5.1.d.P', 'Cronograma y Curva S', 'Cronograma con la información anual programada donde se permita la verificación de las actividades trimestrales. y la  Curva S de ejecución de los proyectos de  normalización de red monohilo. donde se especifique las cantidades en UC. indicando la unidad de medida. el proyecto. el circuito. el departamento. el municipio. los montos de la inversión acumulada programada vs inversión acumulada ejecutada. para cada trimestre de la vigencia transcurrido hasta el que se reporta. Debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018.', 'Obligatorio'),
(348, 'Air-e.5.1.e.P', 'Publicaciones y Campańas', 'Archivo comprimido (.zip o .rar) con el soporte de las publicaciones y acciones realizadas para realizar la divulgación de la información contenida en la cartilla de seguridad del operador para gestionar la disminución del riesgo de accidentes de origen eléctrico. durante el trimestre a evaluar.', 'Obligatorio'),
(349, 'Air-e.5.1.P', 'Cronograma de actividades y Curva S', 'Cronograma Anual de las actividades programadas dentro del Plan de Gestión de Gestión del Riesgo Eléctrico del Operador. disgregado de manera mensual y trimestral.', 'Obligatorio'),
(350, 'Air-e.5.1.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución sobre los circuitos intervenidos. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: el proyecto de inversión a la que pertenece el activo. las coordenadas de ubicación y la fecha de captura de la imagen.', 'Opcional'),
(351, 'Air-e.5.1.P', ' Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Obligatorio'),
(352, 'Air-e.5.1.P', 'Ordenes de Servicio / Compra', 'Archivo comprimido (.zip o .rar) con las ordenes de servicio/compra que soportan la adquisición de activos o de mano de obra de los proyectos a evaluar.', 'Obligatorio'),
(353, 'Air-e.5.1.P', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(354, 'Air-e.5.1.P', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(355, 'Air-e.5.1.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional '),
(356, 'Air-e.5.1.R', 'Reporte de AEO Generales', 'Detalle del registro general de los accidentes de origen eléctrico que se presentaron en las redes del operador durante el periodo de evaluación, indicando la fuente de información del reporte y la gestión adelantada ante el mismo para evitar nuevos accidentes. Se debe relacionar como mínimo los campos contenidos en el formato TT5 del SUI, ampliando la información de la descripción del accidentes y la fuente oficial con la que se esta soportando.', 'Obligatorio'),
(357, 'Air-e.5.1.R', 'Reporte de AEO Atribuibles al operador ', 'Detalle del registro de la tipología de los accidentes de origen eléctrico que se presentaron en las redes del operador durante el periodo de evaluación, indicando la fuente de información del reporte y la gestión adelantada ante el mismo para evitar nuevos accidentes. Se debe relacionar como mínimo los campos contenidos en el formato TT5 del SUI, ampliando la información de la descripción del accidentes y la fuente oficial con la que se esta soportando.', 'Obligatorio'),
(358, 'Air-e.5.1.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento en el periodo evaluado.', 'Obligatorio'),
(359, 'Air-e.5.1.R', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de las acciones realizadas dentro de la gestión para disminuir los accidentes de origen eléctrico en las redes eléctricas del operador. Se debe incluir archivo de Excel donde para cada registro se presente: descripción de la actividad , las coordenadas de ubicación y la fecha de captura de la imagen.', 'Opcional '),
(360, 'Air-e.5.1.R', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(361, 'Air-e.5.1.R', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional '),
(362, 'Air-e.5.1.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(363, 'Air-e.5.2.R', 'Cronograma de actividades y Curva S', 'Cronograma con la información anual y mensual programada donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de los proyectos de  reposición de conductor ACSR y aluminio, donde se especifique las cantidades en UC, indicando la unidad de medida, el proyecto, el circuito, el departamento, el municipio, los montos de la inversión programada vs inversión ejecutada, para cada trimestre de la vigencia transcurrido hasta el que se reporta. La inversión debe estar discriminada por proyecto y por Unidad Constructiva UC y debe cuantificarse usando las costos de UC de la Resolución CREG 015 de 2018.', 'Obligatorio'),
(364, 'Air-e.5.2.R', 'Ordenes de Servicio / Compra', 'Archivo comprimido (.zip o .rar) con las ordenes de servicio/compra que soportan la adquisición de activos o de mano de obra de los proyectos a evaluar.', 'Obligatorio'),
(365, 'Air-e.5.2.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento en el periodo evaluado.', 'Obligatorio'),
(366, 'Air-e.5.2.R', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución sobre los circuitos intervenidos y las inversiones realizadas. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: el proyecto de inversión a la que pertenece el activo, las coordenadas de ubicación y la fecha de captura de la imagen.', 'Obligatorio'),
(367, 'Air-e.5.2.R', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(368, 'Air-e.5.2.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(369, 'Air-e.7.1.P', 'Informe Proyecto', 'Archivo comprimido (.zip o .rar) con los resultados del Proyecto de identificación y caracterización de las condiciones de la Empresa  y de los usuarios de su mercado.', 'Obligatorio'),
(370, 'Air-e.7.1.P', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento en el periodo evaluado.', 'Obligatorio'),
(371, 'Air-e.7.1.P', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(372, 'Air-e.7.1.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(373, 'Air-e.7.1.R', 'Informe de Resultados Encuestas', 'Archivo comprimido (.zip o .rar) con los resultados de la encuesta realizadas para percepción de los colaboradores del sentido de pertenencia con la empresa. Debe contener la información de la ficha de la encuesta realizada y los soportes de la misma.', 'Obligatorio'),
(374, 'Air-e.7.1.R', 'Cronograma del Plan de Acción', 'Cronograma con la información de las actividades, de manera anual y mensual, programadas dentro del Plan de Acción definido por el operador para la gestión en la mejora del indicador. donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de las actividades planeadas en el periodo a evaluar.  ', 'Obligatorio'),
(375, 'Air-e.7.1.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(376, 'Air-e.7.1.R', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional'),
(377, 'Air-e.7.1.R', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(378, 'Air-e.7.1.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional'),
(379, 'Air-e.7.2.P', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional '),
(380, 'Air-e.7.2.P', 'Cronograma de actividades y Curva S', 'Cronograma con la información anual y mensual programada del Programa de Responsabilidad Social definido por el operador, donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de las actividades planeadas en el periodo a evaluar.  ', 'Obligatorio'),
(381, 'Air-e.7.2.P', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(382, 'Air-e.7.2.P', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional'),
(383, 'Air-e.7.2.P', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(384, 'Air-e.7.2.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional'),
(385, 'Air-e.7.2.R', 'Informe de Resultados Encuestas', 'Archivo comprimido (.zip o .rar) con los resultados de la encuesta realizadas para percepción de los colaboradores del sentido de pertenencia con la empresa. Debe contener la información de la ficha de la encuesta realizada y los soportes de la misma.', 'Obligatorio'),
(386, 'Air-e.7.2.R', 'Cronograma del Plan de Acción', 'Cronograma con la información de las actividades, de manera anual y mensual, programadas dentro del Plan de Acción definido por el operador para la gestión en la mejora del indicador. donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de las actividades planeadas en el periodo a evaluar.  ', 'Obligatorio'),
(387, 'Air-e.7.2.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(388, 'Air-e.7.2.R', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional'),
(389, 'Air-e.7.2.R', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(390, 'Air-e.7.2.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional'),
(391, 'Air-e.8.1.P ', 'Cronograma de actividades y Curva S', 'Cronograma con la información anual y mensual programada del Programa de Gestión Social en Barrios Subnormales (BSN)  definido por el operador, donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de las actividades planeadas en el periodo a evaluar.  ', 'Obligatorio'),
(392, 'Air-e.8.1.P ', 'Registro de Gestión', 'Detalle del registro de usuarios impactados en cada uno de las actividades ejecutadas dentro del Cronograma de Gestión Social en  Barrios Subnormales, detallando los resultados obtenidos en la gestión y las acciones a implementar para continuar mejorando en el desarrollo del Programa de Gestión Social en estas Áreas especiales.', 'Obligatorio');
INSERT INTO `archivos_soporte` (`id`, `id_indicador`, `n_corto`, `descripcion`, `exigencia`) VALUES
(393, 'Air-e.8.1.P ', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(394, 'Air-e.8.1.P ', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional'),
(395, 'Air-e.8.1.P ', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(396, 'Air-e.8.1.P ', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional'),
(397, 'Air-e.8.1.P ', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades del Programa de Gestión Social en Barrios Subnormales. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: la actividad del programa respectiva, las coordenadas de ubicación, las personas impactadas por la actividad y la fecha de captura de la imagen.', 'Obligatorio'),
(398, 'Air-e.8.1.R', 'Registro  de Convocatorias ', 'Cronograma de Convocatorias PRONE durante el periodo de evaluación. Debe contener las evidencias de la participación del operador en cada convocatoria.', 'Obligatorio'),
(399, 'Air-e.8.1.R', 'Actas CAPRONE', 'Actas del Comité de Administración del Programa de Normalización de Redes Eléctricas, MME, que contiene el registro con soportes de la participación del operador en las convocatorias.', 'Obligatorio'),
(400, 'Air-e.8.1.R', 'Cronograma proyección ejecución PRONE', 'Cronograma de Ejecución de los proyectos PRONE aprobados para el operador en el periodo de evaluación. Debe contener las evidencias de la aprobación de los proyectos en cada vigencia.', 'Obligatorio'),
(401, 'Air-e.8.1.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por proyecto y por departamento.', 'Obligatorio'),
(402, 'Air-e.8.1.R', 'Inversión Ejecutada', 'Detalle del valor de la inversión ejecutada en el periodo a evaluar, por proyecto y por departamento.', 'Obligatorio'),
(403, 'Air-e.8.1.R', 'Beneficios', 'Detalle de los beneficios por proyecto aprobado y ejecutado dentro del periodo de evaluación.', 'Obligatorio'),
(404, 'Air-e.8.1.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional'),
(405, 'Air-e.8.2.P', 'Cronograma de actividades y Curva S', 'Cronograma con la información anual y mensual del Programa de Gestión Social en Zonas de Difícil Gestión (ZDG)  definido por el operador, donde se permita la verificación de las actividades trimestrales, y la Curva S de ejecución de las actividades planeadas en el periodo a evaluar.  ', 'Obligatorio'),
(406, 'Air-e.8.2.P', 'Registro de Gestión Social ', 'Detalle del registro de usuarios impactados en cada uno de las actividades ejecutadas dentro del Cronograma de Gestión Social en Zonas de Difícil Gestión, detallando los resultados obtenidos en la gestión y las acciones a implementar para continuar en el desarrollo del Programa de Gestión Social en estas Áreas especiales.', 'Obligatorio'),
(407, 'Air-e.8.2.P', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por departamento.', 'Obligatorio'),
(408, 'Air-e.8.2.P', 'Inversión Ejecutada', 'Detalle del valor de inversión ejecutada en el periodo a evaluar.', 'Opcional'),
(409, 'Air-e.8.2.P', 'Beneficios', 'Detalle de los beneficios por actividad programada y ejecutada.', 'Obligatorio'),
(410, 'Air-e.8.2.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional'),
(411, 'Air-e.8.2.P', 'Registro fotográfico', 'Archivo comprimido (.zip o .rar) con imágenes de la ejecución de las actividades del Programa de Gestión Social en Zonas de Difícil Gestión. Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: la actividad del programa respectiva, las coordenadas de ubicación, las personas impactadas por la actividad y la fecha de captura de la imagen.', 'Obligatorio'),
(412, 'Air-e.8.2.R', 'Cronograma de Actividades y Curva S', 'Cronograma con la información anual y mensual de los proyectos de normalización indicando el avance de cada una de las actividades contenidas,  presupuestos ejecutados y el número de usuarios normalizados  durante el periodo de evaluación.', 'Obligatorio'),
(413, 'Air-e.8.2.R', 'Informe de Avance', 'Informe de Avance mensual al Ministerio de Minas y Energía para proyectos PRONE a cargo del operador. ', 'Obligatorio'),
(414, 'Air-e.8.2.R', 'Invitación Contratación ', 'Invitación para la Contratación Obras PRONE', 'Obligatorio'),
(415, 'Air-e.8.2.R', 'Cronograma de Contratación ', 'Cronograma de contratación de las obras PRONE.', 'Obligatorio'),
(416, 'Air-e.8.2.R', 'Certificación Interventoría', 'Certificación de la interventoría sobre el  avance de obra de los proyectos de normalización que se encuentran en ejecución durante el periodo de evaluación.', 'Obligatorio'),
(417, 'Air-e.8.2.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por proyecto y por departamento.', 'Obligatorio'),
(418, 'Air-e.8.2.R', 'Inversión Ejecutada', 'Detalle del valor de la inversión ejecutada en el periodo a evaluar, por proyecto y por departamento.', 'Opcional '),
(419, 'Air-e.8.2.R', 'Beneficios', 'Detalle de los beneficios por proyecto aprobado y ejecutado dentro del periodo de evaluación.', 'Obligatorio'),
(420, 'Air-e.8.2.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(421, 'Air-e.8.3.R', 'Cronograma de Actividades y Curva S', 'Cronograma de la contratación y acciones del operador para el logro del objetivo, con la información anual y mensual de los proyectos de normalización gestionados indicando el avance de cada una de las actividades contenidas,  presupuestos ejecutados y el número de usuarios normalizados  durante el periodo de evaluación. Se debe complementar con el plan de acción sobre los atrasos presentados indicando las acciones y los tiempos en las cuales se ejecutaran para superar las dificultades presentadas.', 'Obligatorio'),
(422, 'Air-e.8.3.R', 'Informe de Gestión del Operador', 'Archivo comprimido (.zip o .rar) con los resultados de la gestión realizada por el operador  para la disminución del número de clientes en Barrios Subnormales durante el periodo de evaluación.', 'Obligatorio'),
(423, 'Air-e.8.3.R', 'Informe de Avance mensual del Ministerio de Minas y Energía para proyectos PRONE', 'Archivo comprimido (.zip o .rar) con los resultados del Informe de avance mensual del Ministerio de Minas y Energía para proyectos PRONE a cargo del operador, durante el periodo de evaluación.', 'Obligatorio'),
(424, 'Air-e.8.3.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por proyecto y por departamento.', 'Obligatorio'),
(425, 'Air-e.8.3.R', 'Inversión Ejecutada', 'Detalle del valor de la inversión ejecutada en el periodo a evaluar, por proyecto y por departamento.', 'Obligatorio'),
(426, 'Air-e.8.3.R', 'Beneficios', 'Detalle de los beneficios por proyecto aprobado y ejecutado dentro del periodo de evaluación.', 'Obligatorio'),
(427, 'Air-e.8.3.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(428, 'Air-e.8.4.R', 'Informe Anual de Morosidad', 'Archivo comprimido (.zip o .rar) con los resultados del Informe Anual  de Morosidad de las Zonas de Difícil Gestión   a cargo del operador durante el periodo de evaluación.  El informe debe contener de manera detallada la gestión y resultados obtenidos mensualmente, indicando departamento y municipio, con los soportes de la gestión realizada.', 'Obligatorio'),
(429, 'Air-e.8.4.R', 'Usuarios Beneficiados', 'Detalle de cantidad de usuarios beneficiados por proyecto y por departamento.', 'Obligatorio'),
(430, 'Air-e.8.4.R', 'Inversión Ejecutada', 'Detalle del valor de la inversión ejecutada en el periodo a evaluar, por proyecto y por departamento.', 'Opcional '),
(431, 'Air-e.8.4.R', 'Beneficios', 'Detalle de los beneficios por proyecto aprobado y ejecutado dentro del periodo de evaluación.', 'Obligatorio'),
(432, 'Air-e.8.4.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas en el periodo evaluado.', 'Opcional '),
(433, 'Air-e.6.1.P', 'Informe Actividades ', 'Informe con el detalle de actividades que conciernan al Trimestre que se reporta. se debe presentar el listado de actividades a desarrollar. indicando para cada una el tipo de actividad según corresponda I) Herramientas existentes e incorporación de nuevas. II) Procesos de atención al cliente.  III) Gestión del Conocimiento(Afinia.6.1.P).', 'Obligatorio'),
(434, 'Air-e.6.1.P', 'Soportes ', 'Archivo comprimido (.zip o .rar) con los soportes (Imágenes. Word. PDF. Presentaciones o Archivos Excel y de mas anexos que crean que puedan servir de soporte de las Actividades desarrolladas para dar cumplimiento al (Afinia.6.1.P). Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: Actividad a la que pertenece el soporte.', 'Obligatorio'),
(435, 'Air-e.6.1.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(436, 'Air-e.6.1.R', 'Informe Actividades ', 'Informe donde se detalle el cumplimiento del Indicador de Resultado 6.1. Reducir el número de fallos que reconozcan efectos de Silencio Administrativos Positivo (SAP) en contra de la empresa.', 'Obligatorio'),
(437, 'Air-e.6.1.R', 'Soportes ', 'listado en archivo Excel en donde se detalle todos los fallos que reconozcan efectos de Silencio Administrativos Positivo (SAP) por la SSPD para el periodo; y demás soportes que la empresa pretenda presentar para demostrar el cumplimiento del indicador.', 'Obligatorio'),
(438, 'Air-e.6.1.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(439, 'Air-e.6.2.P', 'Informe Actividades ', 'Informe con el detalle de actividades que conciernan al Trimestre que se reporta. se debe presentar el listado de actividades a desarrollar. indicando para cada una el tipo de actividad según corresponda I) Diagnóstico del estado de la herramienta existente. II) Formulación de requerimientos para implementación de posibles actualizaciones/modificaciones de la herramienta.  III) Campańa de difusión utilización de herramientas de turnos en línea. IV) Seguimiento y monitoreo (Afinia.6.2.P).', 'Obligatorio'),
(440, 'Air-e.6.2.P', 'Soportes ', 'Archivo comprimido (.zip o .rar) con los soportes (Imágenes. Word. PDF. Presentaciones o Archivos Excel y de mas anexos que crean que puedan servir de soporte de las Actividades desarrolladas para dar cumplimiento al (Afinia.6.2.P). Se debe incluir archivo de Excel donde para cada nombre de archivo de las fotos se presenta: Actividad a la que pertenece el soporte.', 'Obligatorio'),
(441, 'Air-e.6.2.P', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(442, 'Air-e.6.2.R', 'Informe Actividades ', 'Informe donde se detalle el cumplimiento del Indicador de Resultado 6.2. Mejorar la calidad de los Recurso de Apelación (RAP).', 'Obligatorio'),
(443, 'Air-e.6.2.R', 'Soportes ', 'listado en archivo Excel en donde se detalle todas las resoluciones notificadas a la empresa de los Recurso de Apelación (RAP)  por la SSPD para el periodo. discriminando total de RAP - Confirmatorios. RAP – Modificatorios y RAP Revoca; y demás soportes que la empresa pretenda presentar para demostrar el cumplimiento del indicador.', 'Obligatorio'),
(444, 'Air-e.6.2.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(445, 'Air-e.6.3.R', 'Informe Actividades ', 'Informe donde se detalle el cumplimiento del Indicador de Resultado 6.3. Aumentar la cantidad de PQRs no presenciales.', 'Obligatorio'),
(446, 'Air-e.6.3.R', 'Soportes ', 'Listado en archivo Excel en donde se detalle el total de las PQRs presentadas a la empresa para el periodo. listado donde se discrimine el total de PQRs por canal por el cual ingresa la PQRs a la Empresa; y demás soportes que la empresa pretenda presentar para demostrar el cumplimiento del indicador.', 'Obligatorio'),
(447, 'Air-e.6.3.R', 'Dificultades', 'Soportes o evidencias de las dificultades reportadas', 'Opcional'),
(448, 'Afinia.1.1.a.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(449, 'Afinia.1.1.b.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(450, 'Afinia.1.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(451, 'Afinia.1.2.a.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(452, 'Afinia.1.2.b.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(453, 'Afinia.1.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(454, 'Afinia.1.3.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(455, 'Afinia.1.3.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(456, 'Afinia.1.4.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(457, 'Afinia.1.5.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(458, 'Afinia.1.6.a.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(459, 'Afinia.1.6.b.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(460, 'Afinia.2.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(461, 'Afinia.2.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(462, 'Afinia.2.2.a.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(463, 'Afinia.2.2.b.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(464, 'Afinia.2.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(465, 'Afinia.3.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(466, 'Afinia.3.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(467, 'Afinia.3.2.a.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(468, 'Afinia.3.2.b.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(469, 'Afinia.3.3.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(470, 'Afinia.4.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(471, 'Afinia.4.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(472, 'Afinia.4.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(473, 'Afinia.4.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(474, 'Afinia.4.3.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(475, 'Afinia.4.4.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(476, 'Afinia.5.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(477, 'Afinia.5.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(478, 'Afinia.5.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(479, 'Afinia.6.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(480, 'Afinia.6.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(481, 'Afinia.6.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(482, 'Afinia.6.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(483, 'Afinia.7.1.P ', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(484, 'Afinia.7.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(485, 'Afinia.7.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(486, 'Afinia.7.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(487, 'Afinia.8.1.P ', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(488, 'Afinia.8.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(489, 'Afinia.8.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(490, 'Afinia.8.3.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(491, 'Air-e.1.1.a.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(492, 'Air-e.1.1.b.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(493, 'Air-e.1.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(494, 'Air-e.1.2.a.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(495, 'Air-e.1.2.b.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(496, 'Air-e.1.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(497, 'Air-e.1.3.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(498, 'Air-e.1.3.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(499, 'Air-e.1.4.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(500, 'Air-e.1.5.a.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(501, 'Air-e.1.5.b.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(502, 'Air-e.1.6.a.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(503, 'Air-e.1.6.b.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(504, 'Air-e.2.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(505, 'Air-e.2.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(506, 'Air-e.2.2.a.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(507, 'Air-e.2.2.b.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(508, 'Air-e.2.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(509, 'Air-e.3.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(510, 'Air-e.3.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(511, 'Air-e.3.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(512, 'Air-e.3.3.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(513, 'Air-e.4.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(514, 'Air-e.4.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(515, 'Air-e.4.3.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(516, 'Air-e.4.4.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(517, 'Air-e.4.5.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(518, 'Air-e.4.6.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(519, 'Air-e.4.7.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(520, 'Air-e.4.8.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(521, 'Air-e.5.1.a.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(522, 'Air-e.5.1.b.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(523, 'Air-e.5.1.c.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(524, 'Air-e.5.1.d.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(525, 'Air-e.5.1.e.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(526, 'Air-e.5.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(527, 'Air-e.5.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(528, 'Air-e.5.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(529, 'Air-e.6.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(530, 'Air-e.6.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(531, 'Air-e.6.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(532, 'Air-e.6.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(533, 'Air-e.6.3.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(534, 'Air-e.7.1.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(535, 'Air-e.7.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(536, 'Air-e.7.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(537, 'Air-e.7.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(538, 'Air-e.8.1.P ', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(539, 'Air-e.8.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(540, 'Air-e.8.2.P', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(541, 'Air-e.8.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(542, 'Air-e.8.3.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(543, 'Air-e.8.4.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(544, 'Air-e.4.2.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional'),
(545, 'Air-e.4.1.R', 'Otro', 'Favor en campo \"Observaciones de la empresa\" describir el contenido del archivo', 'Opcional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha_cargue`
--

CREATE TABLE `fecha_cargue` (
  `id` int NOT NULL,
  `id_agente` varchar(255) DEFAULT NULL,
  `trim_ind` int DEFAULT NULL,
  `year_ind` int DEFAULT NULL,
  `fecha_limite` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `fecha_cargue`
--

INSERT INTO `fecha_cargue` (`id`, `id_agente`, `trim_ind`, `year_ind`, `fecha_limite`) VALUES
(1, 'Air-e', 2, 2022, '2022-12-16 00:00:00'),
(2, 'Afinia', 2, 2022, '2022-12-16 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadores`
--

CREATE TABLE `indicadores` (
  `id` varchar(50) NOT NULL,
  `agente` varchar(50) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `id_objetivo` varchar(50) DEFAULT NULL,
  `frecuencia` int DEFAULT NULL,
  `nombre` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `indicadores`
--

INSERT INTO `indicadores` (`id`, `agente`, `tipo`, `id_objetivo`, `frecuencia`, `nombre`) VALUES
('Air-e.1.1.P', 'Air-e', 'Parcial', 'Air-e.1', 1, 'Ejecución de inversiones orientadas a la calidad del servicio aprobadas en el plan de inversión.'),
('Air-e.1.2.P', 'Air-e', 'Parcial', 'Air-e.1', 1, 'Cumplimiento del programa de mantenimientos por circuito.'),
('Air-e.1.3.P', 'Air-e', 'Parcial', 'Air-e.1', 1, 'Mejora SAIDI por circuito.'),
('Air-e.1.4.P', 'Air-e', 'Parcial', 'Air-e.1', 1, 'Mejora de SAIFI por circuito.'),
('Air-e.1.5.a.P', 'Air-e', 'Parcial', 'Air-e.1', 1, 'cobertura en medios de comunicación masivos.'),
('Air-e.1.5.b.P', 'Air-e', 'Parcial', 'Air-e.1', 1, 'Notificación a través de mensajes de texto y/o correo electrónico y/o cartas a los usuarios industriales.'),
('Air-e.1.6.a.P', 'Air-e', 'Parcial', 'Air-e.1', 2, 'Mejora en el desempeńo del indicador de calidad individual DIU.'),
('Air-e.1.6.b.P', 'Air-e', 'Parcial', 'Air-e.1', 2, 'Mejora en el desempeńo del indicador de calidad individual FIU.'),
('Air-e.2.1.P', 'Air-e', 'Parcial', 'Air-e.2', 1, 'Ejecución de inversiones orientadas a la  calidad del servicio en el STR aprobadas en el plan de inversión'),
('Air-e.2.2.P', 'Air-e', 'Parcial', 'Air-e.2', 1, 'Cumplimiento del programa de mantenimientos por activo'),
('Air-e.3.1.P', 'Air-e', 'Parcial', 'Air-e.3', 1, 'Ejecución de inversiones aprobadas en el plan de inversión orientadas a la calidad de la potencia en los activos de nivel de tensión 4, 3 y 2.'),
('Air-e.4.1.P', 'Air-e', 'Parcial', 'Air-e.4', 1, 'Ejecución de inversiones orientadas a recuperación de pérdidas en el CONPES 3910/17 y CONPES 3933/18'),
('Air-e.4.2.P', 'Air-e', 'Parcial', 'Air-e.4', 1, 'Ejecución de proyectos de instalación de medida centralizada en los grandes consumidores incluidos en el plan de reducción de pérdidas'),
('Air-e.4.3.P', 'Air-e', 'Parcial', 'Air-e.4', 1, 'Ejecución de proyectos de aseguramiento de red incluidos en el plan de reducción de inversiones '),
('Air-e.4.4.P', 'Air-e', 'Parcial', 'Air-e.4', 1, 'Ejecución de proyectos de instalación de medición para usuarios sin medidor y aseguramiento de la medida incluidos en el plan de reducción de pérdidas'),
('Air-e.4.5.P', 'Air-e', 'Parcial', 'Air-e.4', 1, 'Ejecución de campańas de normalización para clientes masivos  (3,4,5 y 6, comercial, industrial regulados) incluidas en el plan de reducción de pérdidas'),
('Air-e.4.6.P', 'Air-e', 'Parcial', 'Air-e.4', 1, 'Ejecución de proyectos de instalación de macro medición incluidas en el plan de reducción de inversiones'),
('Air-e.4.7.P', 'Air-e', 'Parcial', 'Air-e.4', 1, 'Ejecución de inversión en gestión social incluida en el plan de reducción de pérdidas'),
('Air-e.4.8.P', 'Air-e', 'Parcial', 'Air-e.4', 1, 'Ejecución de proyectos de normalización de la medición (totalizadores) en barrios subnormales'),
('Air-e.5.1.P', 'Air-e', 'Parcial', 'Air-e.5', 1, 'Construir e implementar un plan de gestión de riesgo eléctrico de acuerdo con los artículos 26 y 27 del Reglamento Técnico de Instalaciones Eléctricas (RETIE).'),
('Air-e.6.1.P', 'Air-e', 'Parcial', 'Air-e.6', 1, 'Implementar una estrategia que optimice el procedimiento de trámite oportuno y de calidad de reclamaciones por parte de la empresa'),
('Air-e.6.2.P', 'Air-e', 'Parcial', 'Air-e.6', 1, 'Efectuar seguimiento a la herramienta para solicitar turnos en línea para las oficinas de atención al cliente.'),
('Air-e.6.3.P', 'Air-e', 'Parcial', 'Air-e.6', 0, 'Implementar una estrategia para aumentar la dispersión de recepción de PQR´s entre los diferentes canales de atención medida por desviación estándar. (Eliminado)'),
('Air-e.7.1.P', 'Air-e', 'Parcial', 'Air-e.7', 1, 'Proyecto de identificación y caracterización de las condiciones de la Empresa y de los usuarios de su mercado.'),
('Air-e.7.2.P', 'Air-e', 'Parcial', 'Air-e.7', 1, 'Construir e implementar un programa de RSE acorde a las necesidades identificadas en el primer indicador.'),
('Air-e.8.1.P', 'Air-e', 'Parcial', 'Air-e.8', 1, 'Diseńar y estructurar un programa de gestión social para la intervención de Barrios Subnormales (BSN), que permitan un mayor acercamiento y acompańamiento a los usuarios potenciales de las campańas de normalización, con el fin de lograr la sensibilización y aceptación que se requiere.'),
('Air-e.8.2.P', 'Air-e', 'Parcial', 'Air-e.8', 1, 'Diseńar y estructurar un programa de gestión social para intervención en las Zonas de Difícil Gestión (ZDG), que permitan un mayor acercamiento y acompańamiento con la comunidad y mejorar los índices de recaudo de estas áreas especiales.'),
('Air-e.1.1.a.R', 'Air-e', 'Resultado', 'Air-e.1', 3, 'Mejorar la continuidad del servicio en cuanto a la duración de las interrupciones en su mercado de comercialización.'),
('Air-e.1.1.b.R', 'Air-e', 'Resultado', 'Air-e.1', 2, 'Mejorar la continuidad del servicio en cuanto a la duración de las interrupciones no programadas en su mercado de comercialización.'),
('Air-e.1.2.a.R', 'Air-e', 'Resultado', 'Air-e.1', 3, 'Mejorar la continuidad del servicio en cuanto a la frecuencia de las interrupciones en su mercado de comercialización.'),
('Air-e.1.2.b.R', 'Air-e', 'Resultado', 'Air-e.1', 2, 'Mejorar la continuidad del servicio en cuanto a la frecuencia de las interrupciones no programadas en su mercado de comercialización.'),
('Air-e.1.3.R', 'Air-e', 'Resultado', 'Air-e.1', 1, 'Informar a los usuarios las interrupciones programadas.'),
('Air-e.2.1.R', 'Air-e', 'Resultado', 'Air-e.2', 3, 'Reducir la demanda no atendida no programada en todo el mercado de comercialización a nivel de STR. '),
('Air-e.2.2.a.R', 'Air-e', 'Resultado', 'Air-e.2', 3, 'Reducir las horas de indisponibilidad en los activos del STR:\n2a). Indisponibilidad Activos asociadas a interrupciones no programados en activos del STR en el ańo t.'),
('Air-e.2.2.b.R', 'Air-e', 'Resultado', 'Air-e.2', 3, 'Indisponibilidad Activos asociadas a interrupciones programados en activos del STR en el ańo t.'),
('Air-e.2.3.a.R', 'Air-e', 'Resultado', 'Air-e.2', 1, 'Gestión para la Reducción de Indisponibilidad de Activos operados por terceros en el mercado del operador.\n3a) Ajuste a los contratos de conexión de Activos representados de terceros en el STR.'),
('Air-e.2.3.b.R', 'Air-e', 'Resultado', 'Air-e.2', 1, 'Aplicación del Protocolo de Consignaciones en el STR.'),
('Air-e.3.1.R', 'Air-e', 'Resultado', 'Air-e.3', 3, 'Infraestructura para cumplimiento de la CREG 024 de 2005.'),
('Air-e.3.2.R', 'Air-e', 'Resultado', 'Air-e.3', 3, 'Mantener los niveles de tensión dentro de los estándares regulatorios para valores de Desviaciones estacionarias de Tensión.'),
('Air-e.3.3.R', 'Air-e', 'Resultado', 'Air-e.3', 3, 'Mantener la distorsión armónica dentro de los estándares regulatorios (THDV).'),
('Air-e.4.1.R', 'Air-e', 'Resultado', 'Air-e.4', 3, 'Reducir el índice de pérdidas'),
('Air-e.4.2.R', 'Air-e', 'Resultado', 'Air-e.4', 3, 'Reducir el numero de usuarios sin medidor en el mercado de comercialización'),
('Air-e.5.1.R', 'Air-e', 'Resultado', 'Air-e.5', 3, 'Disminuir del número de accidentes de origen eléctrico en el sistema eléctrico del operador'),
('Air-e.5.2.R', 'Air-e', 'Resultado', 'Air-e.5', 1, 'Ejecución de inversiones orientadas a la sustitución de red monohilo aprobadas en el plan de inversión'),
('Air-e.6.1.R', 'Air-e', 'Resultado', 'Air-e.6', 3, 'Reducir el número de fallos sancionatorios por Silencio Administrativo Positivo (SAP) en contra de la empresa recibidas por la SSPD.'),
('Air-e.6.2.R', 'Air-e', 'Resultado', 'Air-e.6', 3, 'Mejorar la calidad de las decisiones de los Recursos De Reposición.    '),
('Air-e.6.3.R', 'Air-e', 'Resultado', 'Air-e.6', 1, 'Aumentar la cantidad de PQRs no presenciales'),
('Air-e.7.1.R', 'Air-e', 'Resultado', 'Air-e.7', 3, 'Aumento del sentido de pertenencia de colaboradores.'),
('Air-e.7.2.R', 'Air-e', 'Resultado', 'Air-e.7', 3, 'Mejora de la imagen ante los usuarios '),
('Air-e.8.1.R', 'Air-e', 'Resultado', 'Air-e.8', 3, 'Participar en todas las convocatorias PRONE, establecidas por el MME a lo largo de las diferentes vigencias.'),
('Air-e.8.2.R', 'Air-e', 'Resultado', 'Air-e.8', 3, 'Mejorar el índice de proyectos de normalización finalizados.'),
('Air-e.8.3.R', 'Air-e', 'Resultado', 'Air-e.8', 3, 'Disminución del número de clientes en Barrios Subnormales dentro del mercado de comercialización'),
('Air-e.8.4.R', 'Air-e', 'Resultado', 'Air-e.8', 3, 'Mejorar los índices de morosidad de las ZDG'),
('Air-e.9.1.R', 'Air-e', 'Resultado', 'Air-e.9', 1, 'Clientes  verificados en cuánto al Vínculo Cliente - Transformador'),
('Air-e.9.2.R', 'Air-e', 'Resultado', 'Air-e.9', 2, 'Normalización de las Fronteras de Distribución.'),
('Afinia.1.1.P', 'Afinia', 'Parcial', 'Afinia.1', 1, 'Ejecución de inversiones orientadas a la calidad del servicio aprobadas en el plan de inversión'),
('Afinia.1.2.P', 'Afinia', 'Parcial', 'Afinia.1', 1, 'Cumplimiento del programa de mantenimientos por circuito'),
('Afinia.1.3.P', 'Afinia', 'Parcial', 'Afinia.1', 2, 'Mejora SAIDI por circuito'),
('Afinia.1.4.P', 'Afinia', 'Parcial', 'Afinia.1', 2, 'Mejora de SAIFI por circuito'),
('Afinia.1.5.P', 'Afinia', 'Parcial', 'Afinia.1', 1, 'Reducir los tiempos de atención de interrupciones no programadas los usuarios del mercado Caribe Mar'),
('Afinia.1.6.a.P', 'Afinia', 'Parcial', 'Afinia.1', 2, 'Avisos de las interrupciones programadas de conformidad con la resolución CREG 015 de 2018:  Cobertura en medios de comunicación masivos'),
('Afinia.1.6.b.P', 'Afinia', 'Parcial', 'Afinia.1', 2, 'Avisos de las interrupciones programadas de conformidad con la resolución CREG 015 de 2018: Notificación a través de mensajes de texto y/o correo electrónico y/o cartas a los usuarios industriales'),
('Afinia.2.1.P', 'Afinia', 'Parcial', 'Afinia.2', 1, 'Ejecución de inversiones orientadas a la  calidad del servicio en el STR aprobadas en el plan de inversión\n'),
('Afinia.2.2.P', 'Afinia', 'Parcial', 'Afinia.2', 1, 'Cumplimiento del programa de mantenimientos por activo'),
('Afinia.3.1.P', 'Afinia', 'Parcial', 'Afinia.3', 1, 'Ejecución de inversiones aprobadas en el plan de inversión orientadas a la calidad de la potencia en los activos de nivel de tensión 4, 3 y 2.'),
('Afinia.4.1.P', 'Afinia', 'Parcial', 'Afinia.4', 1, 'Ejecución de Inversiones orientadas a recuperación de pérdidas del documento CONPES 3966 de 2019'),
('Afinia.4.2.P', 'Afinia', 'Parcial', 'Afinia.4', 1, 'Ejecución Plan de Control de Pérdidas de Energía: incluye las actividades de: \na) Campańas sistemáticas en consumidores regulados y medios\nb) Gestión de grandes consumidores\nc) Instalación de Macromedida'),
('Afinia.4.3.P', 'Afinia', 'Parcial', 'Afinia.4', 1, 'Ejecución Plan de Reducción de Pérdidas de Energía: incluye las actividades de:\na) Instalación de medidores a usuarios sin medición\nb)Sistema de medición centralizada AMI \nc) Aseguramiento de la red'),
('Afinia.4.4.P', 'Afinia', 'Parcial', 'Afinia.4', 1, 'Ejecución plan de inversiones activos de uso dirigido a gestión de perdidas'),
('Afinia.5.1.P', 'Afinia', 'Parcial', 'Afinia.5', 1, 'Construir e implementar un plan de gestión de riesgo eléctrico de acuerdo con los artículos 26 y 27 del Reglamento Técnico de Instalaciones Eléctricas (RETIE).'),
('Afinia.6.1.P', 'Afinia', 'Parcial', 'Afinia.6', 1, 'Implementar una estrategia que optimice el procedimiento de trámite oportuno y de calidad de reclamaciones por parte de la empresa'),
('Afinia.6.2.P', 'Afinia', 'Parcial', 'Afinia.6', 1, 'Mantener el porcentaje de casos resueltos mediante el programa de atención al cliente en primer contacto del universo de casos que aplique.'),
('Afinia.7.1.P', 'Afinia', 'Parcial', 'Afinia.7', 1, 'Construir y establecer la línea base del RSE.  '),
('Afinia.7.2.P', 'Afinia', 'Parcial', 'Afinia.7', 1, 'Cumplimiento a las acciones definidas en el plan de mejoras en el ańo analizado.'),
('Afinia.8.1.P', 'Afinia', 'Parcial', 'Afinia.8', 1, 'Diseńar e implementar un programa de acompańamiento social para la implementación de los programas de pérdidas, normalización de subnormales y prepago, identificando aquellas acciones con foco en ZDG y BSN'),
('Afinia.1.1.a.R', 'Afinia', 'Parcial', 'Afinia.1', 3, 'Mejorar la continuidad del servicio en cuanto a la duración de las interrupciones  programadas y no programadas según la metodología definida en la Resolución CREG 015 de 2018 '),
('Afinia.1.1.b.R', 'Afinia', 'Parcial', 'Afinia.1', 2, 'Mejorar la continuidad del servicio en cuanto a la duración de las interrupciones no programadas'),
('Afinia.1.2.a.R', 'Afinia', 'Parcial', 'Afinia.1', 3, 'Mejorar la continuidad del servicio en cuanto a la frecuencia de las interrupciones programadas y no programadas según la metodología definida en la Resolución CREG 015 de 2018'),
('Afinia.1.2.b.R', 'Afinia', 'Parcial', 'Afinia.1', 2, 'Mejorar la continuidad del servicio en cuanto a la frecuencia de las interrupciones no programadas'),
('Afinia.1.3.R', 'Afinia', 'Parcial', 'Afinia.1', 2, 'Informar a los usuarios las interrupciones programadas'),
('Afinia.2.1.R', 'Afinia', 'Parcial', 'Afinia.2', 3, 'Reducir la demanda no atendida no programada en todo el mercado de comercialización a nivel de STR'),
('Afinia.2.2.a.R', 'Afinia', 'Parcial', 'Afinia.2', 3, 'Indisponibilidad Activos asociadas a interrupciones no programados en activos del STR en el ańo t.'),
('Afinia.2.2.b.R', 'Afinia', 'Parcial', 'Afinia.2', 3, 'Indisponibilidad Activos asociadas a interrupciones programados en activos del STR en el ańo t.'),
('Afinia.3.1.R', 'Afinia', 'Parcial', 'Afinia.3', 3, 'Instalar el sistema de medición y registro de calidad de la Potencia en el 100% de las barras de las subestaciones de Niveles de Tensión 4, 3 y 2, así como en el 5 % de los circuitos a 13.2 kV en cumplimiento de la Resolución CREG 024 de 2005'),
('Afinia.3.2.R', 'Afinia', 'Parcial', 'Afinia.3', 3, 'Mantener los niveles de tensión dentro de los estándares regulatorios para valores de Desviaciones estacionarias de Tensión e Interrupciones Transitorias'),
('Afinia.3.3.R', 'Afinia', 'Parcial', 'Afinia.3', 3, 'Mantener la distorsión armónica dentro de los estándares regulatorios.'),
('Afinia.4.1.R', 'Afinia', 'Parcial', 'Afinia.4', 3, 'Reducir el índice de pérdidas'),
('Afinia.4.2.R', 'Afinia', 'Parcial', 'Afinia.4', 3, 'Reducir el numero de usuarios sin medidor en el mercado de comercialización'),
('Afinia.5.1.R', 'Afinia', 'Parcial', 'Afinia.5', 3, 'Disminuir del número de accidentes de origen eléctrico en el sistema eléctrico del operador'),
('Afinia.5.2.R', 'Afinia', 'Parcial', 'Afinia.5', 1, 'Ejecución de inversiones orientadas a la sustitución de red monohilo aprobadas en el plan de inversión'),
('Afinia.6.1.R', 'Afinia', 'Parcial', 'Afinia.6', 3, 'Reducir el número de sanciones por Silencio Administrativo Positivo (SAP) aplicadas por la SSPD.'),
('Afinia.6.2.R', 'Afinia', 'Parcial', 'Afinia.6', 3, 'Mejorar la calidad de las decisiones de los Recursos de Reposición '),
('Afinia.7.1.R', 'Afinia', 'Parcial', 'Afinia.7', 3, 'Aumento del sentido de pertenencia de colaboradores.'),
('Afinia.7.2.R', 'Afinia', 'Parcial', 'Afinia.7', 3, 'Mejora de la imagen ante los usuarios '),
('Afinia.8.1.R', 'Afinia', 'Parcial', 'Afinia.8', 3, 'Disminución del número de Clientes en Barrios Subnormales'),
('Afinia.8.2.R', 'Afinia', 'Parcial', 'Afinia.8', 3, 'Implementación de sistema de medición prepago'),
('Afinia.8.3.R', 'Afinia', 'Parcial', 'Afinia.8', 3, 'Reducción de cartera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos`
--

CREATE TABLE `objetivos` (
  `id` varchar(50) NOT NULL,
  `agente` varchar(100) DEFAULT NULL,
  `nombre` varchar(1000) DEFAULT NULL,
  `motivantes` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `objetivos`
--

INSERT INTO `objetivos` (`id`, `agente`, `nombre`, `motivantes`) VALUES
('Air-e.1', 'Air-e', 'Continuidad del servicio en el SDL', '1. Incumplimiento por parte del anterior operador de los indicadores de calidad del servicio definidos en la resolución CREG 097 de 2008, en 3 de los 4 trimestres del 2018.\n\n2. En el informe de calidad del servicio elaborado por la SSPD para el ańo 2018 se evidencio que la empresa cuenta con una tendencia hacia la desmejora en los indicadores de SAIDI y SAIFI definidos en la regulación vigente.\n\n3. Revisión de la información suministrada sobre la calidad individual en términos de FIU y DIU entregada por CaribeSol durante el 2018.'),
('Air-e.2', 'Air-e', 'Confiabilidad en el STR', '1. Existen activos del operador en el STR que han ocasionado históricamente demanda no atendida (DNA).\n\n2. De conformidad con los análisis realizados por la SSPD la magnitud de la DNA en el STR del operador aumentó entre los ańos 2018 y 2019.'),
('Air-e.3', 'Air-e', 'Calidad de la Potencia en los niveles de tensión 4, 3 y 2', '1. Existen activos del operador identificados por el Centro Nacional de Despacho (CND) en el STR que históricamente han presentando restricciones operativas por sobrecarga y subtensiones.\n\n2. PQRs recibidas por los usuarios al respecto de las deficiencias en la calidad de la potencia que se están presentando.'),
('Air-e.4', 'Air-e', 'Pérdidas', '1. El sistema de distribución del operador presenta un indicador de pérdidas deficiente.\n\n2. La demanda de la costa caribe se encuentra aumentando por encima del promedio nacional.'),
('Air-e.5', 'Air-e', 'Riesgo Eléctrico', 'En el Documento elaborado y publicado por la SSPD: Metodología para la evaluación de la Gestión de Riesgos de Origen Eléctrico (GROE) en la Infraestructura de Distribución de Energía Eléctrica en Colombia, se indica que el operador de red de la región Caribe lidera el ranking de las empresas del servicio público de energía eléctrica con mayor cantidad de accidentes de origen eléctrico.'),
('Air-e.6', 'Air-e', 'Atención al Usuario', '1. La región Caribe registra los mayores índices de reclamaciones por prestación del servicio. \n2. El anterior operador de red ha registrado históricamente un crecimiento en las sanciones impuestas por la SSPD  por Silencio Administrativo Positivo- SAP.\n3. El anterior operador ha registrado un crecimiento en el tramite de Recursos de Apelación - RAP por parte de la SSPD.\n4. El anterior operador de red contaba con canales de atención sobre utilizados (Oficina presencial y telefónica) y otros subutilizados (medios virtuales: Aplicación móvil, página web y chat). '),
('Air-e.7', 'Air-e', 'Responsabilidad Social Empresarial', 'El mercado ha venido evidenciando las siguientes situaciones:\n1. Pérdida de reputación evidenciado en bajos indicadores de favorabilidad de los ciudadanos de la región caribe.\n2. Se requiere mantener la motivación, compromiso y productividad de los empleados con talento.'),
('Air-e.8', 'Air-e', 'Reducir los usuarios de áreas especiales (BNS – ZDG)', 'El mercado CaribeSol presenta gran cantidad de Barrios Subnormales y Zonas de Difícil Gestión que se caracterizan por:\n1. Alto nivel de pérdidas no técnicas\n2. Alto nivel de impago de la energía consumida por parte de sus usuarios.\n3. Deficientes condiciones técnicas de las redes eléctricas, que además de incrementar las pérdidas técnicas, generan altos riesgos de origen eléctrico.\n4. Aumento de las deficiencias en la calidad del servicio prestado en barrios contiguos a estas zonas.\n5. Resistencia de las comunidades al establecimiento y normalización de estas áreas como zonas especiales (barrio subnormal, zonas de difícil gestión).'),
('Air-e.9', 'Air-e', 'Verificación del vínculo Cliente - Transformador y Fronteras de Distribución (Nuevo)', 'Se plantea necesario gestionar la validación de la infraestructura del operador en lo relacionado a vínculo Cliente-Transformador, la matrícula de los centros de transformación y los transformadores, los sistemas de medición entre los niveles de tensión, así como el adecuado registro de las Fronteras de Distribución, para dar cumplimiento a los requerimientos regulatorios y técnicos exigidos para la correcta prestación del servicio.'),
('Afinia.1', 'Afinia', 'Continuidad del servicio en el SDL', '1. Incumplimiento por parte del anterior operador de los indicadores de calidad del servicio definidos en la resolución CREG 097 de 2008, en 3 de los 4 trimestres del 2018.\n\n2. En el informe de calidad del servicio elaborado por la SSPD para el ańo 2018 se evidencio que la empresa cuenta con una tendencia hacia la desmejora en los indicadores de SAIDI y SAIFI definidos en la regulación vigente.\n\n3. Revisión de la información suminstrada sobre la calidad individual en terminos de FIU y DIU percibida por ELECTRICARIBE durante el 2018'),
('Afinia.2', 'Afinia', 'Confiabilidad en el STR', '1. Existen activos del operador en el STR que han ocasionado historicamente demanda no atendida (DNA).\n\n2. De conformidad con los análisis realizados por la SSPD la magnitud de la DNA en el STR del operador aumentó entre los ańos 2018 y 2019.'),
('Afinia.3', 'Afinia', 'Calidad de la Potencia en los niveles de tensión 4, 3 y 2', '1. Existen activos del operador identificados por el Centro Nacional de Despacho (CND) en el STR que historicamente han presentando restricciones operativas por sobrecarga y subtensiones.\n\n2. PQRs recibidas por los usuarios al respecto de las deficiencias en la calidad de la potencia que se estan presentando.'),
('Afinia.4', 'Afinia', 'Pérdidas', '1. El sistema de distribución del operador presenta un indicador de pérdidas deficiente\n\n2. La demanda de la costa caribe se encuentra aumentando por encima del promedio nacional.'),
('Afinia.5', 'Afinia', 'Riesgo Eléctrico', 'En el Documento elaborado y publicado por la SSPD: Metodología para la evaluación de la Gestión de Riesgos de Origen Eléctrico (GROE) se indica que el operador de red de la región Caribe lídera el ranking de las empresas del servicio público de energía eléctrica con mayor cantidad de acccidentes de origen eléctrico'),
('Afinia.6', 'Afinia', 'Atención al usuario', '1. La region Caribe registra los mayores indices de reclamaciones por prestación del servicio. \n2. El anterior operador de red ha registrado historicamente  un crecimiento en las sanciones impuestas por la SSPD  por Silencio Administrativo Positivo- SAP y  un crecimiento en el tramite de Recursos de Apelación - RAP por parte de la SSPD.\n3. El anterior prestador  contaba con canales de atención sobreutilizados (Oficina presencial y telefónico) y otros subutilizados (medios virtuales: Aplición movil, página web y chat). '),
('Afinia.7', 'Afinia', 'Responsabilidad Social Empresarial', 'El mercado ha venido evidenciando las siguientes situaciones:\n1. Pérdida de  reputación evidenciados en bajos indicadortes favorabilidad de los ciudadanos de la región y 2. Se requiere mantener la motivación, compromiso y productividad de los empleados'),
('Afinia.8', 'Afinia', 'Programa de Normalzación, gestión de Pérdidas Eléctricas y Cartera', 'El mercado asumido por CARIBEMAR pressenta gran cantidad de Barrios Subnormales y Zonas de dificil Gestión que se caracterizan  por:\n1. Alto nivel de pérdidas no técnicas\n2. Alto nivel de impago de la energía consumida por parte de sus usuarios.\n3. Deficientes condiciones técnicas de las redes eléctricas, que incrementan las pérdidas técnicas y generan altos riesgos de origen eléctrico.\n4. Aumento de las deficiencias en la calidad del servicio prestado en barrios contiguos a estas zonas.\n5. Resiliencia de la comunicadad al establecimiento y normalización de las áreas especiales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rep_archivos`
--

CREATE TABLE `rep_archivos` (
  `id` int NOT NULL,
  `reg_date` datetime DEFAULT NULL,
  `trim_ind` double DEFAULT NULL,
  `year_ind` double DEFAULT NULL,
  `id_indicador` varchar(50) DEFAULT NULL,
  `id_archivo` int DEFAULT NULL,
  `nombre` varchar(1000) DEFAULT NULL,
  `ruta` varchar(1000) DEFAULT NULL,
  `observaciones` varchar(10000) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rep_indicadores`
--

CREATE TABLE `rep_indicadores` (
  `id` int NOT NULL,
  `reg_date` datetime DEFAULT NULL,
  `trim_ind` double DEFAULT NULL,
  `year_ind` double DEFAULT NULL,
  `id_indicador` varchar(50) DEFAULT NULL,
  `var1` double DEFAULT NULL,
  `var2` double DEFAULT NULL,
  `var3` double DEFAULT NULL,
  `var4` double DEFAULT NULL,
  `var5` double DEFAULT NULL,
  `usuarios` double DEFAULT NULL,
  `inversion` double DEFAULT NULL,
  `fecha_pesos` date DEFAULT NULL,
  `zona` varchar(1000) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rep_soportes`
--

CREATE TABLE `rep_soportes` (
  `id` int NOT NULL,
  `reg_date` datetime DEFAULT NULL,
  `id_rep_indicadores` int DEFAULT NULL,
  `tipo_soporte` int DEFAULT NULL,
  `descripcion` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `id_agente` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `passcode` varchar(255) DEFAULT NULL,
  `trim_ind` int DEFAULT NULL,
  `year_ind` int DEFAULT NULL,
  `page_main` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variables`
--

CREATE TABLE `variables` (
  `id` int NOT NULL,
  `id_indicador` varchar(50) DEFAULT NULL,
  `variable` varchar(50) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `variables`
--

INSERT INTO `variables` (`id`, `id_indicador`, `variable`, `descripcion`) VALUES
(1, 'Air-e.1.1.P', 'VUC_Ejecutadot', 'Valor de las unidades constructivas instaladas durante cada uno de los trimestres de evaluación y acumulado según curva S, valoradas según listado de UC del capítulo 14 de la resolución CREG 015 de 2018. Programado: Inversión total programada hasta el trimestre que se evalúa'),
(2, 'Air-e.1.1.P', 'VUC_Programadot', 'Valor de las unidades constructivas programadas a intervenir durante cada uno de los trimestres de evaluación y acumulado según curva S, valoradas según listado de UC del capítulo 14 de la resolución CREG 015 de 2018.'),
(3, 'Air-e.1.2.P', 'Ejecución Real t', 'Actividades ejecutadas en labores de mantenimiento: Podas, Balanceo, Termografía y Lavado.'),
(4, 'Air-e.1.2.P', 'Ejecución Programada t', 'Actividades programadas en labores de mantenimiento: Podas, Balanceo, Termografías y Lavado.'),
(5, 'Air-e.1.2.P', '%Pond t', 'Porcentaje de ponderación asignado por el OR, para cada actividad de mantenimiento: Podas, Balanceo, Termografías y Lavado.'),
(6, 'Air-e.1.3.P', 'SAIDICM_T', 'Duración total en horas de los eventos que en promedio percibe cada usuario del circuito evaluado del SDL, incluye interrupciones programadas y no programadas (META)'),
(7, 'Air-e.1.3.P', 'SAIDIC_T', 'Duración total en horas de los eventos que en promedio percibe cada usuario del circuito evaluado del SDL, incluye interrupciones ocurridas programadas y no programadas'),
(8, 'Air-e.1.4.P', 'SAIFICM_T', 'Frecuencia (cantidad total de los eventos que en promedio) perciben los usuarios en el circuito evaluado del SDL, incluye interrupciones programadas y no programadas (META).'),
(9, 'Air-e.1.4.P', 'SAIFIC_T', 'Frecuencia (cantidad total de los eventos que en promedio) perciben los usuarios en el circuito evaluado del SDL, incluye interrupciones ocurridas programadas y no programadas. '),
(10, 'Air-e.1.5.a.P', 'MunicipiosCubiertos', 'Municipios cubiertos por medios de comunicación'),
(11, 'Air-e.1.5.a.P', 'TotalMunicipiosAtendidos', 'Municipios atendidos por el operador de red.'),
(12, 'Air-e.1.5.b.P', 'UsuariosInfMedio', 'Usuarios informados con medio de comunicación.'),
(13, 'Air-e.1.5.b.P', 'TotalUsuariosConMedio', 'Total Usuarios con medio de comunicación.'),
(14, 'Air-e.1.6.a.P', 'NU_mDIUs', 'Número usuarios DIU'),
(15, 'Air-e.1.6.b.P', 'NU_mFIUs', 'Número usuarios FIU'),
(16, 'Air-e.2.1.P', 'VUC_ejecutado t', 'valor de las unidades constructivas instaladas en el trimestre de evaluación y acumulado según la curva S.'),
(17, 'Air-e.2.1.P', 'VUC_programado t ', 'valor de las unidades programadas a intervenir durante el trimestre de evaluación.'),
(18, 'Air-e.2.2.P', 'Cant. Mtto Real t ', 'cantidad de mantenimientos realizados sobre los activos del STR durante el semestre a evaluar, valor de las unidades constructivas instaladas en el trimestre t y acumulado según la curva S.'),
(19, 'Air-e.2.2.P', 'Cant Mtto Programado t', 'cantidad de mantenimientos programados durante el trimestre t, por activos en el STR registrados en el Módulo de Gestión de Consignaciones (MGC).'),
(20, 'Air-e.3.1.P', 'VUC_Ejecutado t', 'Valor de las unidades constructivas instaladas en el trimestre de evaluación.'),
(21, 'Air-e.3.1.P', 'VUC_Programado t', 'Valor de las unidades constructivas programadas a intervenir durante el trimestre de evaluación. '),
(22, 'Air-e.4.1.P', '% Ejecución Programado', 'Inversión total programada hasta el trimestre que se evalúa según curva S.'),
(23, 'Air-e.4.1.P', '% Ejecución Real', 'Inversión real ejecutada hasta el trimestre que se evalúa según curva S.'),
(24, 'Air-e.4.2.P', '% Ejecución Programado', '% de ejecución programado del cronograma de acciones de proyectos de instalación de medida centralizada.'),
(25, 'Air-e.4.2.P', '% Ejecución Real', '% de ejecución real del cronograma de acciones proyectos de instalación de medida centralizada.'),
(26, 'Air-e.4.3.P', '% Ejecución Programado', '% de ejecución programado del cronograma de acciones de proyectos de instalación de medida centralizada.'),
(27, 'Air-e.4.3.P', '% Ejecución Real', '% de ejecución real del cronograma de acciones proyectos de instalación de medida centralizada '),
(28, 'Air-e.4.4.P', '% Ejecución Programado', '% de ejecución programado del cronograma de acciones de proyectos de instalación de medida centralizada.'),
(29, 'Air-e.4.4.P', '% Ejecución Real', '% de ejecución real del cronograma de acciones proyectos de instalación de medida centralizada '),
(30, 'Air-e.4.5.P', '% Ejecución Programado', '% de ejecución programado del cronograma de acciones de proyectos de instalación de medida centralizada.'),
(31, 'Air-e.4.5.P', '% Ejecución Real', '% de ejecución real del cronograma de acciones proyectos de instalación de medida centralizada '),
(32, 'Air-e.4.6.P', '% Ejecución Programado', '% de ejecución programado del cronograma de acciones de proyectos de instalación de medida centralizada.'),
(33, 'Air-e.4.6.P', '% Ejecución Real', '% de ejecución real del cronograma de acciones proyectos de instalación de medida centralizada.'),
(34, 'Air-e.4.7.P', '% Ejecución Programado', '% de ejecución programado del cronograma de acciones de proyectos de instalación de medida centralizada.'),
(35, 'Air-e.4.7.P', '% Ejecución Real', '% de ejecución real del cronograma de acciones proyectos de instalación de medida centralizada.'),
(36, 'Air-e.4.8.P', '% Ejecución Programado', '% de ejecución programado del cronograma de acciones de proyectos de instalación de medida centralizada.'),
(37, 'Air-e.4.8.P', '% Ejecución Real', '% de ejecución real del cronograma de acciones proyectos de instalación de medida centralizada '),
(38, 'Air-e.5.1.P', '% Ejecución Programado', '% de Actividades Programadas según el cronograma del Plan de Gestión de Riesgo Eléctrico en el trimestre en evaluación.'),
(39, 'Air-e.5.1.P', '% Ejecución Real', '% de Actividades Ejecutadas según el cronograma de Plan del Gestión de Riesgo Eléctrico en el trimestre en evaluación.'),
(40, 'Air-e.6.1.P', '% Ejecución Programado', 'Inversión total programada hasta el trimestre que se evalúa'),
(41, 'Air-e.6.1.P', '% Ejecución Real', 'Inversión real ejecutada hasta el trimestre que se evalúa.'),
(42, 'Air-e.6.2.P', '% Ejecución Programado', 'Inversión total programada hasta el trimestre que se evalúa'),
(43, 'Air-e.6.2.P', '% Ejecución Real', 'Inversión real ejecutada hasta el trimestre que se evalúa.'),
(44, 'Air-e.7.1.P', '% Ejecución Programado', 'Porcentaje de actividades programadas en el cronograma presentado por el operador dentro del periodo de tiempo a evaluar.'),
(45, 'Air-e.7.1.P', '% Ejecución Real', 'Porcentaje de actividades ejecutadas dentro del cronograma presentado por el operador dentro del periodo de tiempo a evaluar.'),
(46, 'Air-e.7.2.P', '% Ejecución Programado', 'Porcentaje de actividades programadas en el cronograma presentado por el operador dentro del periodo de tiempo a evaluar.'),
(47, 'Air-e.7.2.P', '% Ejecución Real', 'Porcentaje de actividades ejecutadas dentro del cronograma presentado por el operador dentro del periodo de tiempo a evaluar.\n'),
(48, 'Air-e.8.1.P', '% Ejecución Programado', '% Actividades programada en el trimestre que se evalúa.'),
(49, 'Air-e.8.1.P', '% Ejecución Real', '% Actividades ejecutadas en el trimestre que se evalúa.\n'),
(50, 'Air-e.8.2.P', '% Ejecución Programado', '% Actividades programada en el trimestre que se evalúa.'),
(51, 'Air-e.8.2.P', '% Ejecución Real', '% Actividades ejecutadas en el trimestre que se evalúa.'),
(52, 'Air-e.1.1.a.R', 'SAIDIM_T', 'Duración total en horas de los eventos que en promedio percibe cada usuario del circuito evaluado del SDL, incluye interrupciones programadas y no programadas (META)'),
(53, 'Air-e.1.1.a.R', 'SAIDI_T', 'Duración total en horas de los eventos que en promedio percibe cada usuario del circuito evaluado del SDL, incluye interrupciones ocurridas programadas y no programadas'),
(54, 'Air-e.1.1.b.R', 'SAIDI_NP_M_T', 'Duración total en horas de los eventos que en promedio percibe cada usuario del circuito evaluado del SDL, incluye interrupciones no programadas (META)'),
(55, 'Air-e.1.1.b.R', 'SAIDI_NP_(T )', 'Duración total en horas de los eventos que en promedio percibe cada usuario del circuito evaluado del SDL, incluye interrupciones ocurridas no programadas.'),
(56, 'Air-e.1.2.a.R', 'SAIFIM_T', 'Frecuencia (cantidad total acumulada de los eventos) que perciben los usuarios en el SDL, incluye interrupciones programadas y no programadas (META).'),
(57, 'Air-e.1.2.a.R', 'SAIFI_T', 'Frecuencia (cantidad total acumulada de los eventos) que perciben los usuarios en el SDL, incluye interrupciones ocurridas programadas y no programadas.'),
(58, 'Air-e.1.2.b.R', 'SAIFI_NP_M_T', 'Frecuencia (cantidad total acumulada de los eventos) que perciben los usuarios en el SDL, incluye interrupciones no programadas (META).'),
(59, 'Air-e.1.2.b.R', 'SAIFI_NP_T', 'Frecuencia (cantidad total acumulada de los eventos) que perciben los usuarios en el SDL, incluye interrupciones ocurridas no programadas. '),
(60, 'Air-e.1.3.R', 'EventosProgramadosInformados', 'Interrupciones programadas informadas a los usuarios. '),
(61, 'Air-e.1.3.R', 'TotalEventosProgramados', 'Total de interrupciones programadas.'),
(62, 'Air-e.2.1.a.R', 'IA_NP_STR_t', 'Cantidad de horas de indisponibilidad de activos asociadas a interrupciones no programadas en activos del STR en el ańo t.'),
(63, 'Air-e.2.1.a.R', 'IA_NP_STRM_T', 'Meta de cantidad de horas de indisponibilidad de activos asociadas a interrupciones no programadas en activos del STR en el periodo T'),
(64, 'Air-e.2.1.b.R', 'IA_P_STR_t', 'Cantidad de horas de indisponibilidad de activos asociadas a interrupciones programadas en activos del STR en el ańo t.'),
(65, 'Air-e.2.1.b.R', 'IA_P_STRM_T', 'Meta de cantidad de horas de indisponibilidad de activos asociadas a interrupciones programadas en activos del STR en el periodo T.'),
(66, 'Air-e.3.1.R', 'TPts_con_medicion_t', 'Total puntos con medición instalados en el periodo evaluado t'),
(67, 'Air-e.3.1.R', 'TPts_Res024_t', 'Total puntos para cumplir con la senda resolución 024 del 2005 en el periodo evaluado t'),
(68, 'Air-e.3.2.R', 'R', 'número de registros en periodos de 10 minutos del universo de equipos tenidos en cuenta para el cálculo del indicador.'),
(69, 'Air-e.3.2.R', 'DET con medición R', 'Registro que presentó Desviación Estacionaria de Tensión en el periodo evaluado.'),
(70, 'Air-e.3.2.R', 'Registros con mediciónR ', 'sumatoria del total de los registros de todos los equipos que hacen parte del universo del cálculo del Indicador.'),
(71, 'Air-e.3.3.R', 'R', 'número de registros en periodos de 10 minutos del universo de equipos tenidos en cuenta para el cálculo del indicador.'),
(72, 'Air-e.3.3.R', 'THDV con_medicionR', 'Registro con distorsión en el periodo evaluado.'),
(73, 'Air-e.3.3.R', 'Registros con mediciónR ', 'sumatoria del total de los registros de todos los equipos que hacen parte del universo del cálculo del Indicador.'),
(74, 'Air-e.4.1.R', 'IPTs', 'Índice de pérdidas totales de la senda establecida según Resolución CREG 167 de 2020.'),
(75, 'Air-e.4.1.R', 'IPTp', 'Índice de pérdidas totales.'),
(76, 'Air-e.4.2.R', 'USMMt', 'Meta de cantidad de usuarios sin medidor'),
(77, 'Air-e.4.2.R', 'USMt ', 'Cantidad de usuarios sin medidor'),
(78, 'Air-e.5.1.R', 'N° AOEM_t', 'Numero de accidentes de Origen Eléctrico establecido como referencia para el periodo a evaluar dentro del PGLP.'),
(79, 'Air-e.5.1.R', 'N° AOE_t', 'Numero de accidentes de Origen Eléctrico reportados para el ańo a evaluar. '),
(80, 'Air-e.5.2.R', 'VUC_ejecutado t ', 'valor de las unidades constructivas instaladas durante cada uno de los trimestres de evaluación y acumulado en la curva S, valoradas según el listado de UC del capítulo 14 de la resolución CREG 015 de 2018.'),
(81, 'Air-e.5.2.R', 'VUC_programado t ', 'valor de las unidades programadas a intervenir durante cada uno de los trimestres a evaluar, valoradas según el listado de UC del capítulo 14 de la resolución CREG 015 de 2018.'),
(82, 'Air-e.6.1.R', '% NşSAPMT', 'Meta de número de Silencios Administrativos Positivos'),
(83, 'Air-e.6.1.R', '% NşSAPT', 'Silencios Administrativos Positivos en el periodo T.'),
(84, 'Air-e.6.2.R', 'RAP_Rev&Mod_t', 'Recursos de Apelación modificados y revocados en el periodo t'),
(85, 'Air-e.6.2.R', 'RAP_Rev&Mod_t', 'Recursos de Apelación modificados y revocados en el periodo t'),
(86, 'Air-e.6.2.R', 'RAP_(TOT_t )', 'Recursos de Apelación Totales en el periodo t'),
(87, 'Air-e.6.2.R', '%RAP_M', 'Porcentaje de RAPs meta para el periodo t'),
(88, 'Air-e.6.3.R', 'PQRnp_M ', 'PQR no presenciales meta para el periodo t'),
(89, 'Air-e.6.3.R', 'PQRnp_t', 'PQR no presenciales en el periodo t'),
(90, 'Air-e.7.1.R', '?_(Gi=1)^4EDP_Colaboradores_(Grupos_interes)   x 0', 'Resultado de las encuestas de sentido de pertenencia por parte de los colaboradores para el ańo evaluado.'),
(91, 'Air-e.7.1.R', 'EDPColaboradores_(ańo-1)', 'Resultado de las encuestas de sentido de pertenencia por parte de los colaboradores del ańo inmediatamente anterior al ańo evaluado.'),
(92, 'Air-e.7.2.R', '?_(Gi=1)^4 EDP_Usuarios_(Grupos_interes)   x 0.25', 'Resultado de las encuestas de imagen corporativa ante los usuarios del ańo evaluado.'),
(93, 'Air-e.7.2.R', 'EDP_Usuarios_(ańo-1)', 'Resultado de las encuestas de imagen corporativa ante los usuarios del ańo inmediatamente anterior al ańo evaluado.'),
(94, 'Air-e.8.1.R', 'CvPRONE_MMEt ', 'Número de convocatorias PRONE realizadas por el MME en el ańo t'),
(95, 'Air-e.8.1.R', 'CvPRONE_presenORt ', 'Número de convocatorias PRONE realizadas por el MME, a las cuales se presentó el operador durante el ańo t.'),
(96, 'Air-e.8.2.R', 'Total_PRONE_Terminadost ', 'Total proyectos PRONE culminados en el periodo.'),
(97, 'Air-e.8.2.R', 'Total_ PRONE_Prog_Termt', 'Total de proyectos que según cronograma se debieron terminar en el periodo. '),
(98, 'Air-e.8.3.R', 'CNBSNzt', 'Clientes Normalizados en Barrios Subnormales en el ańo t.'),
(99, 'Air-e.8.3.R', 'CNBSNMt', 'Clientes Normalizados en Barrios Subnormales según la Meta establecida para el ańo t. '),
(100, 'Air-e.8.4.R', 'IndiceMorosidadZDGt', 'Indice de Morosidad en Zonas de Difícil Gestión en el ańo de evaluación t.'),
(101, 'Air-e.8.4.R', 'MorosidadMt', 'Morosidad Meta establecida para el ańo t, de acuerdo con la senda de reducción acordada'),
(102, 'Air-e.9.1.R', 'No. Clientes Vinculados t', 'Número de clientes para los cuales se ha verificado y validado su vinculo cliente-transformador.'),
(103, 'Air-e.9.1.R', 'No. De Clientes Meta t', 'Número de clientes programado para realizar la verificación cliente-transformador en el periodo t'),
(104, 'Air-e.9.2.R', 'No. Fronteras Normalizadas s', 'Numero de fronteras normalizadas (registradas y aceptadas).'),
(105, 'Air-e.9.2.R', 'No. De Fronteras Meta s', 'Numero de fronteras programadas para normalizar en el periodo'),
(106, 'Afinia.1.1.P', '% Ejecución Programado', '% Inversión total programada hasta el trimestre que se evalúa'),
(107, 'Afinia.1.1.P', '% Ejecución Real', '% Inversión real ejecutada hasta el trimestre que se evalúa.'),
(108, 'Afinia.1.2.P', '% Ejecución Programado', '% Inversión total programada hasta el trimestre que se evalúa'),
(109, 'Afinia.1.2.P', '% Ejecución Real', '% Inversión real ejecutada hasta el trimestre que se evalúa'),
(110, 'Afinia.1.3.P', 'SAIDICMT', 'Duración total en horas de los eventos que en promedio percibe cada usuario del circuito evaluado del SDL, incluye interrupciones programadas y no programadas (META)'),
(111, 'Afinia.1.3.P', 'SAIDICT', 'Duración total en horas de los eventos que en promedio percibe cada usuario del circuito evaluado del SDL, incluye interrupciones ocurridas programadas y no programadas'),
(112, 'Afinia.1.4.P', 'SAIFICMT', 'Cantidad total de los eventos que en promedio perciben todos los usuarios del circuito evaluado del SDL, incluye interrupciones programadas y no programadas (META).'),
(113, 'Afinia.1.4.P', 'SAIFICT', 'Cantidad total de los eventos que en promedio perciben todos los usuarios del circuito evaluado del SDL, incluye interrupciones programadas y no programadas'),
(114, 'Afinia.1.5.P', 'Cantidad de eventos cerrados en XhT', 'cantidad de eventos atendidos con tiempo de duración entre 4 y 6 horas.'),
(115, 'Afinia.1.5.P', 'Cantidad total de eventos por Grupo evaluación T', 'Cantidad total de eventos en el periodo evaluado'),
(116, 'Afinia.1.6.a.P', 'Municipios interr_programadas', 'Municipios con interrupciones programadas. '),
(117, 'Afinia.1.6.a.P', 'Municipios con cobertura de comunicación por parte', 'Municipios con cobertura de comunicación por parte AFINIA'),
(118, 'Afinia.1.6.b.P', 'TotalUsuariosConMedio', 'Total usuarios cubiertos con medio de comunicaciones'),
(119, 'Afinia.1.6.b.P', 'UsuariosInfMedio', 'Total usuarios cubiertos con medio de comunicaciones    informados'),
(120, 'Afinia.2.1.P', '% Ejecución Programado', 'Inversión total programada hasta el trimestre que se evalúa.'),
(121, 'Afinia.2.1.P', '% Ejecución Real', 'Inversión real ejecutada hasta el trimestre que se evalúa.'),
(122, 'Afinia.2.2.P', '% Mantenimiento Programado', '% planeado para la ejecución del cronograma de actividades de mantenimiento.'),
(123, 'Afinia.2.2.P', '% Mantenimiento Real', '% ejecutado del cronograma de las actividades de mantenimiento'),
(124, 'Afinia.3.1.P', '% Ejecución Programado', '% Inversión total programada hasta el trimestre que se evalúa'),
(125, 'Afinia.3.1.P', '% Ejecución Real', '% Inversión real ejecutada hasta el trimestre que se evalúa'),
(126, 'Afinia.4.1.P', '% Ejecución Programado', 'Inversión total programada hasta el trimestre que se evalúa según curva S.'),
(127, 'Afinia.4.1.P', '% Ejecución Real', 'Inversión real ejecutada hasta el trimestre que se evalúa según curva '),
(128, 'Afinia.4.2.P', '% Ejecución Programado', '% de ejecución programado del cronograma de acciones del plan de control de pérdidas.'),
(129, 'Afinia.4.2.P', '% Ejecución Real', '% de ejecución real del cronograma de acciones del plan de control de pérdidas.'),
(130, 'Afinia.4.3.P', '% Ejecución Programado', '% de ejecución programado del cronograma de acciones del plan de reducción de pérdidas.'),
(131, 'Afinia.4.3.P', '% Ejecución Real', '% de ejecución real del cronograma de acciones del plan de reducción de pérdidas.'),
(132, 'Afinia.4.4.P', '% Ejecución Programado', '% planeado de ejecución del presupuesto aprobado en el plan de inversión para la gestión de pérdidas.'),
(133, 'Afinia.4.4.P', '% Ejecución Real', '% real ejecutado del presupuesto aprobado en el plan de inversión para la gestión de pérdidas.'),
(134, 'Afinia.5.1.P', '% Ejecución Programado', '% Actividades programada en el trimestre que se evalúa.'),
(135, 'Afinia.5.1.P', '% Ejecución Real', '% Actividades ejecutadas en el trimestre que se evalúa'),
(136, 'Afinia.6.1.P', '% Ejecución Programado', 'Inversión total programada hasta el trimestre que se evalúa'),
(137, 'Afinia.6.1.P', '% Ejecución Real', 'Inversión real ejecutada hasta el trimestre que se evalúa.'),
(138, 'Afinia.6.2.P', '% FRCt ', 'porcentaje de casos resueltos en el periodo t, mediante el programa de atención al cliente en primer contacto'),
(139, 'Afinia.6.2.P', '% FRCmt', 'porcentaje de casos resueltos Meta para el periodo t, mediante el programa de atención al cliente en primer contacto.'),
(140, 'Afinia.7.1.P', '% Ejecución Programado', '% Actividades programada en el trimestre que se evalúa.'),
(141, 'Afinia.7.1.P', '% Ejecución Real', '% Actividades ejecutadas en el trimestre que se evalúa'),
(142, 'Afinia.7.2.P', '% Ejecución Programado', '% Actividades programada en el trimestre que se evalúa.'),
(143, 'Afinia.7.2.P', '% Ejecución Real', '% Actividades ejecutadas en el trimestre que se evalúa'),
(144, 'Afinia.8.1.P', '% Ejecución Programado', '% Actividades programada en el trimestre que se evalúa.'),
(145, 'Afinia.8.1.P', '% Ejecución Real', '% Actividades ejecutadas en el trimestre que se evalúa'),
(146, 'Afinia.1.1.a.R', 'SAIDIMT', 'Duración total en horas de los eventos que en promedio percibe cada usuario del SDL, incluye interrupciones programadas y no programadas (META)'),
(147, 'Afinia.1.1.a.R', 'SAIDIT', 'Duración total en horas de los eventos que en promedio percibe cada usuario del SDL, incluye interrupciones ocurridas programadas y no programadas.'),
(148, 'Afinia.1.1.b.R', 'SAIDI_NP_MT', 'Duración total en horas de los eventos que en promedio percibe cada usuario del SDL, incluye interrupciones no programadas (META)'),
(149, 'Afinia.1.1.b.R', 'SAIDI_NPT  ', 'Duración total en horas de los eventos que en promedio percibe cada usuario del SDL, incluye interrupciones ocurridas no programadas'),
(150, 'Afinia.1.2.a.R', 'SAIFIMT', 'Cantidad total de los eventos que en promedio perciben todos los usuarios del SDL, incluye interrupciones programadas y no programadas (META).'),
(151, 'Afinia.1.2.a.R', 'SAIFIT', 'Cantidad total de los eventos que en promedio perciben todos los usuarios del SDL, incluye interrupciones ocurridas programadas y no programadas.  '),
(152, 'Afinia.1.2.b.R', 'SAIFI_NP_MT', 'Cantidad total de los eventos que en promedio perciben todos los usuarios del SDL, incluye interrupciones no programadas (META)'),
(153, 'Afinia.1.2.b.R', 'SAIFI_NPT   ', 'Cantidad total de los eventos que en promedio perciben todos los usuarios del SDL, incluye interrupciones ocurridas no programadas.'),
(154, 'Afinia.1.3.R', 'EventosProgramadosInformados', 'Total de interrupciones programadas informadas                '),
(155, 'Afinia.1.3.R', 'TotalEventosProgramados', 'Total de interrupciones programadas'),
(156, 'Afinia.2.1.R', 'DNAt', 'Demanda no atendida durante el ańo t (MWh).'),
(157, 'Afinia.2.1.R', 'DNAMT', 'Meta de demanda no atendida para el ańo t (MWh).'),
(158, 'Afinia.2.1.a.R', 'IA_NP_STRt', 'Cantidad de horas de indisponibilidad de activos asociadas a interrupciones no programadas en activos del STR en el ańo t'),
(159, 'Afinia.2.1.a.R', 'IA_NP_STRM_t', 'Meta de cantidad de horas de indisponibilidad de activos asociadas a interrupciones no programadas en activos del STR en el periodo T'),
(160, 'Afinia.2.1.b.R', 'IA_P_STRt', 'Cantidad de horas de indisponibilidad de activos asociadas a interrupciones programadas en activos del STR en el ańo t.'),
(161, 'Afinia.2.1.b.R', 'IA_P_STRMT', 'Meta de cantidad de horas de indisponibilidad de activos asociadas a interrupciones programadas en activos del STR en el periodo T.'),
(162, 'Afinia.3.1.R', 'TPts_con_medicion ejecutadost', 'Total de puntos de medición que se les instaló equipo de calidad de la potencia en el periodo t'),
(163, 'Afinia.3.1.R', 'TPts_con_medición_Viables', 'Total de puntos de medición viables para la instalación de equipos de calidad de la potencia'),
(164, 'Afinia.3.2.a.R', 'T_(sem ańo)', 'Semanas del ańo'),
(165, 'Afinia.3.2.a.R', 'DETs_(con medición t)', 'Total de Semanas con registros de desviación de tensión en estado estacionario de los puntos del sistema con medición los cuales cumplen con los rangos definidos en la regulación.'),
(166, 'Afinia.3.2.a.R', 'Registro_BC', 'Total de registros de los puntos del sistema con medición'),
(167, 'Afinia.3.2.b.R', 'T_(sem ańo)', 'Semanas del ańo'),
(168, 'Afinia.3.2.b.R', 'ITs_(con medición t)', 'Total de semanas con registros de interrupciones transitorias de los puntos del sistema con medición los cuales cumplen con los rangos definidos en la regulación.'),
(169, 'Afinia.3.2.b.R', 'Registro_BC', 'Total de registros de los puntos del sistema con medición'),
(170, 'Afinia.3.3.R', 'T_(sem ańo)', 'Semanas del ańo'),
(171, 'Afinia.3.3.R', 'PERC_95registros_cumple', 'Total de registros que cumplen con los rangos definidos en la regulación para la variable THDV'),
(172, 'Afinia.3.3.R', 'Tmed', 'Total de puntos con medición'),
(173, 'Afinia.4.1.R', 'IPTs', 'Índice de pérdidas totales de la senda establecida según Resolución CREG 167 de 2020.'),
(174, 'Afinia.4.1.R', 'IPTp', 'Índice de pérdidas totales'),
(175, 'Afinia.4.2.R', '%PartMT', 'Meta para la participación de clientes sin medidor respecto de clientes totales, para el periodo T'),
(176, 'Afinia.4.2.R', 'CSMEdT', 'Clientes sin medidor en el periodo T'),
(177, 'Afinia.4.2.R', 'Total ClientesT', 'Total clientes en el periodo T'),
(178, 'Afinia.5.1.R', 'No AOEMt ', 'Número de Accidentes de Origen Eléctrico Meta para el periodo t (2020).'),
(179, 'Afinia.5.1.R', 'No AOEt', 'Número de Accidentes de Origen Eléctrico Total ańo t'),
(180, 'Afinia.5.2.R', '%Ejecución Programado', 'Porcentaje de ejecución del proyecto programado y definido en el cronograma y curva S.'),
(181, 'Afinia.5.2.R', '%Ejecución Real', 'Porcentaje de ejecución real del proyecto en el periodo t'),
(182, 'Afinia.6.1.R', '% NşSAPMT', 'Meta de número de Silencios Administrativos Positivos'),
(183, 'Afinia.6.1.R', '% NşSAPT', 'Silencios Administrativos Positivos en el periodo T.'),
(184, 'Afinia.6.2.R', 'RAP_Rev&Mod_t', 'Recursos de Apelación modificados y revocados en el periodo t'),
(185, 'Afinia.6.2.R', 'RAP_(TOT_t )', 'Recursos de Apelación Totales en el periodo t'),
(186, 'Afinia.6.2.R', '%RAP_M', 'Porcentaje de RAPs meta para el periodo t'),
(187, 'Afinia.7.1.R', 'Calificación SPCt ', 'Calificación del Sentido de Pertenencia de los colaboradores en el ańo de evaluación.'),
(188, 'Afinia.7.1.R', 'Calificación SPCt-1', 'Calificación del Sentido de Pertenencia de los colaboradores en el ańo anterior al ańo de evaluación.'),
(189, 'Afinia.7.2.R', 'Calificación SPCt', 'Calificación del Sentido de Pertenencia de los usuarios en el ańo de evaluación t.'),
(190, 'Afinia.7.2.R', 'Calificación SPCt-1', 'Calificación del Sentido de Pertenencia de los colaboradores en el ańo t-1.'),
(191, 'Afinia.8.1.R', 'CNBSNt ', 'Clientes normalizados en barrios subnormales para el ańo t'),
(192, 'Afinia.8.1.R', 'CNBSNMt ', 'Clientes normalizados en barrios subnormales Meta para el ańo t.\n'),
(193, 'Afinia.8.2.R', 'CMed_Prepagot', 'Cantidad de clientes con sistema de medición prepago instalado para el ańo t.'),
(194, 'Afinia.8.2.R', 'CObjetivo _Prepagot', 'Mercado Objetivo para la instalación de medición prepago.'),
(195, 'Afinia.8.2.R', 'CPMOMt', 'Cantidad de clientes con sistema de medición prepago meta, definido en la senda para el ańo t'),
(196, 'Afinia.8.3.R', 'Cartera vencida mayor a 60 días', 'Valor en pesos de la cartera vencida mayor a 60 días en el total del mercado del operador.'),
(197, 'Afinia.8.3.R', 'Total de la Cartera', 'Valor en pesos del Total de la Cartera existente en el mercado del operador, en el ańo de evaluación.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos_soporte`
--
ALTER TABLE `archivos_soporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fecha_cargue`
--
ALTER TABLE `fecha_cargue`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rep_archivos`
--
ALTER TABLE `rep_archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rep_indicadores`
--
ALTER TABLE `rep_indicadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rep_soportes`
--
ALTER TABLE `rep_soportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `variables`
--
ALTER TABLE `variables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos_soporte`
--
ALTER TABLE `archivos_soporte`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT de la tabla `fecha_cargue`
--
ALTER TABLE `fecha_cargue`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rep_archivos`
--
ALTER TABLE `rep_archivos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rep_indicadores`
--
ALTER TABLE `rep_indicadores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rep_soportes`
--
ALTER TABLE `rep_soportes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `variables`
--
ALTER TABLE `variables`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
