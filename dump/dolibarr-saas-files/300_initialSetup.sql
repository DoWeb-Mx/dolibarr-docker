
INSERT IGNORE INTO llx_c_email_templates (entity, module, type_template, lang, private, fk_user, datec, tms, label, `position`, defaultfortype, enabled, active, email_from, email_to, email_tocc, email_tobcc, topic, joinfiles, content, content_lines) VALUES(1, NULL, 'facture_send', NULL, 0, NULL, '2026-05-05 22:36:44', '2026-05-05 23:05:50', 'FacturasNuevas', 100, 1, '1', 1, NULL, NULL, NULL, NULL, 'Nueva Factura __REF__', '1', '<table border="0" cellpadding="0" cellspacing="0" style="background-color:#152c5b; border-radius:15px; width:100%">
<tr>
<td style="padding:40px 10px">
<table border="0" cellpadding="0" cellspacing="0" style="background-color:#ffffff; border-collapse:separate; border-radius:12px; margin:0 auto; max-width:600px; overflow:hidden; width:95%">
<tr>
<td style="border-bottom:1px solid #eeeeee; padding:30px"><img alt="DoWebMx" src="/viewimage.php?modulepart=medias&amp;entity=1&amp;file=image/logo.png" style="display:block; height:50px; width:160px"></td>
</tr>
<tr>
<td style="padding:40px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:20px"><strong>Hola&nbsp;__THIRDPARTY_NAME__,</strong></span><br>
<br>
<span style="color:#555555; font-family:Arial,sans-serif; font-size:15px">Se ha generado la factura por la renovacion de tus servicios.<br>
A continuacion, el detalle del periodo cubierto:</span>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-radius:10px; border:1px solid #e1e8f0; margin:30px 0 15px 0; width:100%">
<tr>
<td style="border-bottom:1px solid #e1e8f0; border-right:1px solid #e1e8f0; padding:15px 20px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:14px"><strong>Factura:</strong></span></td>
<td style="border-bottom:1px solid #e1e8f0; padding:15px 20px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:14px"><strong>__REF__</strong></span></td>
</tr>
<tr>
<td style="border-bottom:1px solid #e1e8f0; border-right:1px solid #e1e8f0; padding:15px 20px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:14px"><strong>Vencimiento:</strong></span></td>
<td style="border-bottom:1px solid #e1e8f0; padding:15px 20px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:14px"><strong>__DATE_DUE_YMD__</strong></span></td>
</tr>
<tr>
<td style="border-right:1px solid #e1e8f0; padding:20px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:16px"><strong>Saldo Pendiente:</strong></span></td>
<td style="padding:20px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:18px"><strong>__AMOUNT_REMAIN_FORMATED__</strong></span></td>
</tr>
</table>
&nbsp;
<table border="1" cellpadding="0" cellspacing="0" style="background-color:#fcfcfc; border-collapse:collapse; border-radius:10px; border:1px solid #e1e8f0; margin-bottom:30px; width:100%">
<tr>
<td colspan="2" style="border-bottom:1px solid #e1e8f0; padding:15px 20px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:13px"><strong>Informacion de Pago</strong></span></td>
</tr>
<tr>
<td style="padding:10px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">Banco:</span></td>
<td style="padding:10px 20px"><strong>BANCO</strong></td>
</tr>
<tr>
<td style="padding:10px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">Beneficiario:</span></td>
<td style="padding:10px 20px"><strong>BENEFICIARIO</strong></td>
</tr>
<tr>
<td style="padding:10px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">Sucursal:</span></td>
<td style="padding:10px 20px"><strong>0000</strong></td>
</tr>
<tr>
<td style="padding:10px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">Cuenta:</span></td>
<td style="padding:10px 20px"><strong>000 000 0000</strong></td>
</tr>
<tr>
<td style="padding:10px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">Swift:</span></td>
<td style="padding:10px 20px"><strong>XXXXXXXXXXX</strong></td>
</tr>
<tr>
<td style="padding:10px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">CLABE:</span></td>
<td style="padding:10px 20px"><strong>000 000 00000000000 0</strong></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" style="background-color:#152c5b; border-radius:8px; width:100%">
<tr>
<td style="padding:20px; text-align:center"><span style="color:#ffffff; font-family:Arial,sans-serif; font-size:13px">Favor de enviar su comprobante a <strong>mail@domain.com</strong> indicando su numero de factura.</span></td>
</tr>
</table>
</td>
</tr>
<tr>
<td style="border-top:1px solid #f0f0f0; padding:25px; text-align:center"><span style="color:#999999; font-family:Arial,sans-serif; font-size:11px">__MYCOMPANY_NAME__ - __YEAR__<br>
<a href="mailto:__MYCOMPANY_EMAIL__" style="color:#999999; text-decoration:none;">__MYCOMPANY_EMAIL__</a> | <a href="__MYCOMPANY_URL__" style="color:#999999; text-decoration:none;">__MYCOMPANY_URL__</a></span></td>
</tr>
</table>
</td>
</tr>
</table>
', NULL);

INSERT IGNORE INTO llx_c_email_templates (entity, module, type_template, lang, private, fk_user, datec, tms, label, `position`, defaultfortype, enabled, active, email_from, email_to, email_tocc, email_tobcc, topic, joinfiles, content, content_lines) VALUES(1, NULL, 'facture_send', NULL, 0, NULL, '2026-05-05 22:36:44', '2026-05-05 23:02:07', 'FacturasVencidas', 200, 0, '1', 1, NULL, NULL, NULL, NULL, 'PAGO PENDIENTE: Factura __REF__ - Tu servicio presenta un retraso', '1', '<table border="0" cellpadding="0" cellspacing="0" style="background-color:#152c5b; border-radius:15px; width:100%">
<tr>
<td style="padding:40px 10px">
<table border="0" cellpadding="0" cellspacing="0" style="background-color:#ffffff; border-collapse:separate; border-radius:12px; margin:0 auto; max-width:600px; overflow:hidden; width:95%">
<tr>
<td style="border-bottom:1px solid #eeeeee; padding:30px">
<table style="width:100%">
<tr>
<td><img alt="DoWebMx" src="/viewimage.php?modulepart=medias&amp;entity=1&amp;file=image/logo.png" style="display:block; height:50px; width:159px"></td>
<td style="text-align:right"><span style="color:#d9534f"><span style="font-size:20px"><span style="font-family:Arial,sans-serif"><strong>FACTURA VENCIDA</strong></span></span></span></td>
</tr>
</table>
</td>
</tr>
<tr>
<td style="padding:40px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:20px"><strong>Estimado(a) __THIRDPARTY_NAME__,</strong></span><br>
<br>
<span style="color:#555555; font-family:Arial,sans-serif; font-size:15px">Te informamos que tu factura presenta un</span> <span style="color:#d9534f"><span style="font-family:Arial,sans-serif; font-size:15px"><strong>retraso en el pago</strong></span></span><span style="color:#555555; font-family:Arial,sans-serif; font-size:15px">. Es importante regularizar este saldo a la brevedad para asegurar la continuidad de tus servicios.</span>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-radius:10px; border:2px solid #d9534f; margin:30px 0 15px 0; width:100%">
<tr>
<td style="border-bottom:1px solid #e1e8f0; border-right:1px solid #e1e8f0; padding:15px 20px"><strong>Factura</strong><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:14px"><strong>:</strong></span></td>
<td style="border-bottom:1px solid #e1e8f0; padding:15px 20px"><strong>__REF__</strong></td>
</tr>
<tr>
<td style="border-bottom:1px solid #e1e8f0; border-right:1px solid #e1e8f0; padding:15px 20px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:14px"><strong>Venció el:</strong></span></td>
<td style="border-bottom:1px solid #e1e8f0; padding:15px 20px"><span style="color:#d9534f"><span style="font-family:Arial,sans-serif; font-size:14px"><strong>__DATE_DUE_YMD__</strong></span></span></td>
</tr>
<tr>
<td style="border-right:1px solid #e1e8f0; padding:20px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:16px"><strong>Saldo Pendiente:</strong></span></td>
<td style="padding:20px"><span style="color:#d9534f"><span style="font-family:Arial,sans-serif; font-size:22px"><strong>__AMOUNT_REMAIN_FORMATTED__</strong></span></span></td>
</tr>
</table>
<table border="1" cellpadding="0" cellspacing="0" style="background-color:#fcfcfc; border-collapse:collapse; border-radius:10px; border:1px solid #e1e8f0; margin-bottom:30px; width:100%">
<tr>
<td colspan="2" style="border-bottom:1px solid #e1e8f0; padding:15px 20px"><span style="color:#152c5b; font-family:Arial,sans-serif; font-size:13px"><strong>Información de Pago</strong></span></td>
</tr>
<tr>
<td style="padding:8px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">Banco:</span></td>
<td style="padding:8px 20px"><strong>BANCO</strong></td>
</tr>
<tr>
<td style="padding:8px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">Beneficiario:</span></td>
<td style="padding:8px 20px"><strong>BENEFICIARIO</strong></td>
</tr>
<tr>
<td style="padding:8px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">Sucursal:</span></td>
<td style="padding:8px 20px"><strong>0000</strong></td>
</tr>
<tr>
<td style="padding:8px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">Cuenta:</span></td>
<td style="padding:8px 20px"><strong>000 000 0000</strong></td>
</tr>
<tr>
<td style="padding:8px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">Swift:</span></td>
<td style="padding:8px 20px"><strong>XXXXXXXXXXX</strong></td>
</tr>
<tr>
<td style="padding:8px 20px"><span style="color:#666666; font-family:Arial,sans-serif; font-size:12px">CLABE:</span></td>
<td style="padding:8px 20px"><strong>000 000 00000000000&nbsp;0</strong></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" style="background-color:#152c5b; border-radius:8px; width:100%">
<tr>
<td style="padding:20px; text-align:center"><span style="color:#ffffff; font-family:Arial,sans-serif; font-size:13px">Favor de enviar su comprobante a <strong>mail@domain.com</strong> indicando su numero de factura.</span></td>
</tr>
</table>
</td>
</tr>
<tr>
<td style="border-top:1px solid #f0f0f0; padding:25px; text-align:center"><span style="color:#999999; font-family:Arial,sans-serif; font-size:11px">__MYCOMPANY_NAME__ - __YEAR__<br>
<a href="mailto:__MYCOMPANY_EMAIL__" style="color:#999999; text-decoration:none;">__MYCOMPANY_EMAIL__</a> | <a href="__MYCOMPANY_URL__" style="color:#999999; text-decoration:none;">__MYCOMPANY_URL__</a></span></td>
</tr>
</table>
</td>
</tr>
</table>
', NULL);