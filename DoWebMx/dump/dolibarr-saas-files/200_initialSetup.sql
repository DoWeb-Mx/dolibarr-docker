SET NAMES 'utf8mb4';
SET CHARACTER SET utf8mb4;

UPDATE llx_c_tva set code='002' WHERE fk_pays = (SELECT rowid FROM llx_c_country WHERE code = 'MX');

UPDATE llx_c_revenuestamp set active=0 WHERE active=1;

INSERT IGNORE INTO llx_overwrite_trans (entity, lang, transkey, transvalue) VALUES( 1, 'es_MX', 'CompnanyBirthDate', 'Fundación de la empresa');
INSERT IGNORE INTO llx_overwrite_trans (entity, lang, transkey, transvalue) VALUES( 1, 'es_MX', 'ProfId1', 'R.F.C.');
INSERT IGNORE INTO llx_overwrite_trans (entity, lang, transkey, transvalue) VALUES( 1, 'es_MX', 'ProfId1Short', 'R.F.C.');
INSERT IGNORE INTO llx_overwrite_trans (entity, lang, transkey, transvalue) VALUES( 1, 'es_MX', 'VATIntra', 'ID Tributario (Extranjero)');
INSERT IGNORE INTO llx_overwrite_trans (entity, lang, transkey, transvalue) VALUES( 1, 'es_MX', 'VATIntraShort', 'ID Tributario (Extranjero)');
INSERT IGNORE INTO llx_overwrite_trans (entity, lang, transkey, transvalue) VALUES( 1, 'es_MX', 'SignPropal', 'Aceptar Cotización');
INSERT IGNORE INTO llx_overwrite_trans (entity, lang, transkey, transvalue) VALUES( 1, 'es_MX', 'RefusePropal', 'Rechazar Cotización');
INSERT IGNORE INTO llx_overwrite_trans (entity, lang, transkey, transvalue) VALUES( 1, 'es_MX', 'TotalHTBeforeDiscount', 'Total antes del descuento');
INSERT IGNORE INTO llx_overwrite_trans (entity, lang, transkey, transvalue) VALUES( 1, 'es_MX', 'DictionaryVAT', 'Tasa de IVA (Impuesto sobre ventas en México)');
INSERT IGNORE INTO llx_overwrite_trans (entity, lang, transkey, transvalue) VALUES(1, 'es_MX', 'BICNumber', 'Código SWIFT');

CREATE TABLE IF NOT EXISTS `llx_categorie_propal` (
  `fk_categorie` int NOT NULL,
  `fk_propal` int NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_propal`),
  KEY `idx_categorie_propal_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_propal_fk_propal` (`fk_propal`),
  CONSTRAINT `fk_categorie_propal_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `llx_categorie` (`rowid`),
  CONSTRAINT `fk_categorie_propal_fk_propal_rowid` FOREIGN KEY (`fk_propal`) REFERENCES `llx_propal` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT IGNORE INTO llx_const (name, entity, value, `type`, visible, note, tms) VALUES('MAIN_LOGIN_BACKGROUND', 1, 'background.png', 'chaine', 0, '', '2026-04-21 00:00:01');

INSERT IGNORE INTO llx_const (name, entity, value, `type`, visible, note, tms) VALUES('MAIN_SHOW_LOGO', 1, '1', 'chaine', 0, '', '2026-04-21 00:00:01');
