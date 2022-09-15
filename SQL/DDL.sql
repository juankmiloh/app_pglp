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