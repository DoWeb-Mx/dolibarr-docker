UPDATE llx_c_payment_term set active = 0 WHERE code <> 'RECEP';
UPDATE llx_c_payment_term set active = 1, sortorder = 1 WHERE code ='RECEP';
UPDATE llx_c_payment_term set active = 1, sortorder = 40 WHERE code ='30D';
INSERT IGNORE INTO llx_c_payment_term VALUES(null, 1, '15D', 30, 1, '15 días', 'Pago a 15 días', 0, 15, NULL, NULL, NULL, 0);
INSERT IGNORE INTO llx_c_payment_term VALUES(null, 1, 'INM', 20, 1, 'Inmediato', 'Pago inmediato', 0, 1, NULL, NULL, NULL, 0);
UPDATE llx_c_payment_term set active = 1 WHERE code = 'INM';
UPDATE llx_c_payment_term set active = 1 WHERE code = '15D';
UPDATE llx_c_payment_term set active = 1, libelle='30 días', libelle_facture='Pago a 30 días' WHERE code = '30D';

UPDATE llx_c_paiement set active = 0 WHERE code NOT LIKE 'SAT_%';
UPDATE llx_c_paiement set active = 1 WHERE code LIKE 'SAT_%';

INSERT IGNORE INTO llx_c_civility (code, label, active, module) VALUES('DRA', 'Doctora', 1, NULL);
INSERT IGNORE INTO llx_c_civility (code, label, active, module) VALUES('ING', 'Ingeniero', 1, NULL);
INSERT IGNORE INTO llx_c_civility (code, label, active, module) VALUES('INGA', 'Ingeniera', 1, NULL);
INSERT IGNORE INTO llx_c_civility (code, label, active, module) VALUES('LIC', 'Licenciado', 1, NULL);
INSERT IGNORE INTO llx_c_civility (code, label, active, module) VALUES('LICA', 'Licenciada', 1, NULL);

INSERT IGNORE INTO llx_default_values (entity, `type`, user_id, page, param, value) VALUES(1, 'createform', 0, 'societe/card.php', 'cond_reglement_id', '14');
INSERT IGNORE INTO llx_default_values (entity, `type`, user_id, page, param, value) VALUES(1, 'createform', 0, 'societe/card.php', 'mode_reglement_id', '108');
INSERT IGNORE INTO llx_default_values (entity, `type`, user_id, page, param, value) VALUES(1, 'createform', 0, 'societe/card.php', 'forme_juridique_code', '15401');
INSERT IGNORE INTO llx_default_values (entity, `type`, user_id, page, param, value) VALUES(1, 'createform', 0, 'societe/card.php', 'options_cfdi_usocfdi', 'G03');
INSERT IGNORE INTO llx_default_values (entity, `type`, user_id, page, param, value) VALUES(1, 'createform', 0, 'societe/card.php', 'state_id', '1560');
INSERT IGNORE INTO llx_default_values (entity, `type`, user_id, page, param, value) VALUES(1, 'createform', 0, 'societe/card.php', 'typent_id', '8');
INSERT IGNORE INTO llx_default_values (entity, `type`, user_id, page, param, value) VALUES(1, 'createform', 0, 'societe/card.php', 'effectif_id', '1');
INSERT IGNORE INTO llx_default_values (entity, `type`, user_id, page, param, value) VALUES(1, 'createform', 0, 'propal/card.php', 'cond_reglement_id', '17');
