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

CREATE TABLE `pglp_db`.`indicadores` (
    `id` VARCHAR(50) NOT NULL,
    `agente` VARCHAR(50) NULL,
    `tipo` VARCHAR(20) NULL,
    `id_objetivo` VARCHAR(50) NULL,
    `frecuencia` INT NULL,
    `nombre` VARCHAR(1000) NULL
) ENGINE = InnoDB;

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

CREATE TABLE `pglp_db`.`fecha_cargue` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_agente` VARCHAR(255) DEFAULT NULL,
  `trim_ind` INT NULL,
  `year_ind` INT NULL,
  `fecha_limite` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;