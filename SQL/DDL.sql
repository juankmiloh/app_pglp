CREATE TABLE `pglp_db`.`usuarios` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `usuario` VARCHAR(255) NULL,
    `id_agente` VARCHAR(255) NULL,
    `passcode` VARCHAR(255) NULL,
    `trim_ind` INT NULL,
    `year_ind` INT NULL,
    `page_main` VARCHAR(1000) NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `pglp_db`.`objetivos` (
    `id` VARCHAR(50) NOT NULL,
    `agente` VARCHAR(100) NULL,
    `nombre` VARCHAR(1000) NULL,
    `motivantes` VARCHAR(10000) NULL
) ENGINE = InnoDB;

INSERT INTO `objetivos` (`id`, `agente`, `nombre`, `motivantes`)
VALUES ('Air-e.1', 'Air-e', 'Continuidad del servicio en el SDL', '1. Incumplimiento por parte del anterior operador');

INSERT INTO `objetivos` (`id`, `agente`, `nombre`, `motivantes`)
VALUES ('Air-e.2', 'Air-e', 'Confiabilidad en el STR', '1. Existen activos del operador en el STR que han');

CREATE TABLE `pglp_db`.`indicadores` (
    `id` VARCHAR(50) NOT NULL,
    `agente` VARCHAR(50) NULL,
    `tipo` VARCHAR(20) NULL,
    `id_objetivo` VARCHAR(50) NULL,
    `frecuencia` INT NULL,
    `nombre` VARCHAR(1000) NULL
) ENGINE = InnoDB;

INSERT INTO `indicadores` (`id`, `agente`, `tipo`, `id_objetivo`, `frecuencia`, `nombre`)
VALUES ('Air-e.1.1.P', 'Air-e', 'Parcial', 'Air-e.1', '1', 'Ejecución de inversiones orientadas a la calidad del servicio aprobadas en el plan de inversión.');

INSERT INTO `indicadores` (`id`, `agente`, `tipo`, `id_objetivo`, `frecuencia`, `nombre`)
VALUES ('Air-e.1.2.P', 'Air-e', 'Parcial', 'Air-e.1', '1', 'Cumplimiento del programa de mantenimientos por circuito.');

INSERT INTO `indicadores` (`id`, `agente`, `tipo`, `id_objetivo`, `frecuencia`, `nombre`)
VALUES ('Air-e.2.1.P', 'Air-e', 'Parcial', 'Air-e.2', '1', 'Ejecución de inversiones orientadas a la calidad del servicio en el STR aprobadas en el plan de inversión');

INSERT INTO `indicadores` (`id`, `agente`, `tipo`, `id_objetivo`, `frecuencia`, `nombre`)
VALUES ('Air-e.2.2.P', 'Air-e', 'Parcial', 'Air-e.2', '1', 'Cumplimiento del programa de mantenimientos por activo');

CREATE TABLE `pglp_db`.`rep_indicadores` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `reg_date` DATETIME NULL,
    `trim_ind` DOUBLE NULL,
    `year_ind` DOUBLE NULL,
    `id_indicador` VARCHAR(50) NULL,
    `var1` DOUBLE NULL,
    `var2` DOUBLE NULL,
    `var3` DOUBLE NULL,
    `var4` DOUBLE NULL,
    `var5` DOUBLE NULL,
    `usuarios` DOUBLE NULL,
    `inversion` DOUBLE NULL,
    `fecha_pesos` DATE NULL,
    `zona` VARCHAR(1000) NULL,
    `id_usuario` INT NULL
) ENGINE = InnoDB;

CREATE TABLE `pglp_db`.`rep_soportes` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `reg_date` DATETIME NULL,
    `id_rep_indicadores` INT NULL,
    `tipo_soporte` INT NULL,
    `descripcion` VARCHAR(10000) NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

REATE TABLE `pglp_db`.`variables` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `id_indicador` VARCHAR(50) NULL,
    `variable` VARCHAR(50) NULL,
    `descripcion` VARCHAR(1000) NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO `variables` (`id`, `id_indicador`, `variable`, `descripcion`) 
VALUES (NULL, 'Air-e.1.1.P', 'VUC_Ejecutadot', 'Valor de las unidades ...');

INSERT INTO `variables` (`id`, `id_indicador`, `variable`, `descripcion`) 
VALUES (NULL, 'Air-e.1.1.P', 'VUC_Programadot', 'Valor de las unidades ...');

INSERT INTO `variables` (`id`, `id_indicador`, `variable`, `descripcion`) 
VALUES (NULL, 'Air-e.1.2.P', 'Ejecución Real t', 'Actividades ejecutadas ...');

INSERT INTO `variables` (`id`, `id_indicador`, `variable`, `descripcion`) 
VALUES (NULL, 'Air-e.1.2.P', 'Ejecución Programada t', 'Actividades programadas ...');

INSERT INTO `variables` (`id`, `id_indicador`, `variable`, `descripcion`) 
VALUES (NULL, 'Air-e.1.2.P', '%Pond t', 'Porcentaje de ponderación ...');

INSERT INTO `variables` (`id`, `id_indicador`, `variable`, `descripcion`) 
VALUES (NULL, 'Air-e.2.1.P', 'VUC_ejecutado t', 'Valor de las unidades ...');

INSERT INTO `variables` (`id`, `id_indicador`, `variable`, `descripcion`) 
VALUES (NULL, 'Air-e.2.1.P', 'VUC_programado t', 'Valor de las unidades ...');

INSERT INTO `variables` (`id`, `id_indicador`, `variable`, `descripcion`) 
VALUES (NULL, 'Air-e.2.2.P', 'Cant. Mtto Real t', 'Cantidad de mantenimientos ...');

INSERT INTO `variables` (`id`, `id_indicador`, `variable`, `descripcion`) 
VALUES (NULL, 'Air-e.2.2.P', 'Cant Mtto Programado t', 'Cantidad de mantenimientos ...');

CREATE TABLE `pglp_db`.`rep_archivos` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `reg_date` DATETIME NULL,
    `trim_ind` DOUBLE NULL,
    `year_ind` DOUBLE NULL,
    `id_indicador` VARCHAR(50) NULL,
    `id_archivo` INT NULL,
    `nombre` VARCHAR(1000) NULL,
    `ruta` VARCHAR(1000) NULL,
    `observaciones` VARCHAR(10000) NULL,
    `id_usuario` INT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `pglp_db`.`archivos_soporte` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `id_indicador` VARCHAR(50) NULL,
    `n_corto` VARCHAR(200) NULL,
    `descripcion` VARCHAR(10000) NULL,
    `exigencia` VARCHAR(20) NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO `archivos_soporte` (`id`, `id_indicador`, `n_corto`, `descripcion`, `exigencia`)
VALUES (NULL, 'Air-e.1.1.P', 'Curva S', 'Curva S de ejecución...', 'Obligatorio');