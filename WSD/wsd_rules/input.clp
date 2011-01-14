
(defrule input0
(declare (salience 5000))
(id-root ?id input)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id inaputa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  input.clp 	input0   "  ?id "  inaputa )" crlf))
)

(defrule input1
(declare (salience 4900))
(id-root ?id input)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kampyUtara_meM_saMgaNana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  input.clp 	input1   "  ?id "  kampyUtara_meM_saMgaNana_kara )" crlf))
)

;"input","V","1.kampyUtara_meM_saMgaNana_karanA"
;Input the annual sales figures.
;
;
