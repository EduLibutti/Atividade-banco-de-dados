-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'instituição'
-- 
-- ---

DROP TABLE IF EXISTS `instituição`;
		
CREATE TABLE `instituição` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `foto de perfil` VARCHAR NULL DEFAULT NULL,
  `descrição` INTEGER NULL DEFAULT NULL,
  `avaliação` INTEGER NULL DEFAULT NULL,
  `posts` INTEGER NULL DEFAULT NULL,
  `voluntariados ` INTEGER NULL DEFAULT NULL,
  `horas de trabalho` INTEGER NULL DEFAULT NULL,
  `Email` VARCHAR NULL DEFAULT NULL,
  `senha ` VARCHAR NULL DEFAULT NULL,
  `CNPJ` INTEGER NULL DEFAULT NULL,
  `permissões` INTEGER NULL DEFAULT NULL,
  `tipo` INTEGER NULL DEFAULT NULL,
  `Nome fictício` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Post'
-- 
-- ---

DROP TABLE IF EXISTS `Post`;
		
CREATE TABLE `Post` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `hora` INTEGER NULL DEFAULT NULL,
  `data` INTEGER NULL DEFAULT NULL,
  `descrição` INTEGER NULL DEFAULT NULL,
  `comentários ` INTEGER NULL DEFAULT NULL,
  `Nome fictício` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `Nome fictício`)
);

-- ---
-- Table 'comentario'
-- 
-- ---

DROP TABLE IF EXISTS `comentario`;
		
CREATE TABLE `comentario` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Conteúdo` VARCHAR NULL DEFAULT NULL,
  `foto de perfil ` INTEGER NULL DEFAULT NULL,
  `hora` INTEGER NULL DEFAULT NULL,
  `Nome fictício` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `Nome fictício`, `foto de perfil `)
);

-- ---
-- Table 'Voluntariado'
-- 
-- ---

DROP TABLE IF EXISTS `Voluntariado`;
		
CREATE TABLE `Voluntariado` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Horas` INTEGER NULL DEFAULT NULL,
  `descrição` VARCHAR NULL DEFAULT NULL,
  `Users (id)` INTEGER NULL DEFAULT NULL,
  `Nome` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `Users (id)`)
);

-- ---
-- Table 'User'
-- 
-- ---

DROP TABLE IF EXISTS `User`;
		
CREATE TABLE `User` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Tags` INTEGER NULL DEFAULT NULL,
  `Email` INTEGER NULL DEFAULT NULL,
  `foto de perfil ` INTEGER NULL DEFAULT NULL,
  `CPF` INTEGER NULL DEFAULT NULL,
  `premissões` INTEGER NULL DEFAULT NULL,
  `voluntariados ` INTEGER NULL DEFAULT NULL,
  `Data de cadastro` INTEGER NULL DEFAULT NULL,
  `descrição` INTEGER NULL DEFAULT NULL,
  `posts` INTEGER NULL DEFAULT NULL,
  `horas de trabalho` INTEGER NULL DEFAULT NULL,
  `senha ` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'tipo'
-- 
-- ---

DROP TABLE IF EXISTS `tipo`;
		
CREATE TABLE `tipo` (
  `ONG` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Empresa` INTEGER NULL DEFAULT NULL,
  `id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`ONG`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `instituição` ADD FOREIGN KEY (posts) REFERENCES `Post` (`id`);
ALTER TABLE `instituição` ADD FOREIGN KEY (voluntariados ) REFERENCES `Voluntariado` (`id`);
ALTER TABLE `instituição` ADD FOREIGN KEY (permissões) REFERENCES `comentario` (`foto de perfil `);
ALTER TABLE `instituição` ADD FOREIGN KEY (tipo) REFERENCES `comentario` (`Nome fictício`);
ALTER TABLE `instituição` ADD FOREIGN KEY (tipo) REFERENCES `Post` (`Nome fictício`);
ALTER TABLE `instituição` ADD FOREIGN KEY (Nome fictício) REFERENCES `tipo` (`ONG`);
ALTER TABLE `Post` ADD FOREIGN KEY (comentários ) REFERENCES `comentario` (`id`);
ALTER TABLE `Voluntariado` ADD FOREIGN KEY (Users (id)) REFERENCES `User` (`id`);
ALTER TABLE `User` ADD FOREIGN KEY (posts) REFERENCES `Post` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `instituição` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Post` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `comentario` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Voluntariado` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `User` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tipo` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `instituição` (`id`,`foto de perfil`,`descrição`,`avaliação`,`posts`,`voluntariados `,`horas de trabalho`,`Email`,`senha `,`CNPJ`,`permissões`,`tipo`,`Nome fictício`) VALUES
-- ('','','','','','','','','','','','','');
-- INSERT INTO `Post` (`id`,`hora`,`data`,`descrição`,`comentários `,`Nome fictício`) VALUES
-- ('','','','','','');
-- INSERT INTO `comentario` (`id`,`Conteúdo`,`foto de perfil `,`hora`,`Nome fictício`) VALUES
-- ('','','','','');
-- INSERT INTO `Voluntariado` (`id`,`Horas`,`descrição`,`Users (id)`,`Nome`) VALUES
-- ('','','','','');
-- INSERT INTO `User` (`id`,`Tags`,`Email`,`foto de perfil `,`CPF`,`premissões`,`voluntariados `,`Data de cadastro`,`descrição`,`posts`,`horas de trabalho`,`senha `) VALUES
-- ('','','','','','','','','','','','');
-- INSERT INTO `tipo` (`ONG`,`Empresa`,`id`) VALUES
-- ('','','');