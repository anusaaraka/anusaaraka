
(defrule huff0
(declare (salience 5000))
(id-root ?id huff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JuMJalAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  huff.clp 	huff0   "  ?id "  JuMJalAhata )" crlf))
)

;"huff","N","1.JuMJalAhata"
;usase bAwa mawa kara. vaha 'huff' meM hE.
;
(defrule huff1
(declare (salience 4900))
(id-root ?id huff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kruxXa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  huff.clp 	huff1   "  ?id "  kruxXa_ho_jA )" crlf))
)

;"huff","V","1.kruxXa_ho_jAnA"
;xurvAsa QRi nirAxara vyavahAra se 'huff' hue
;
