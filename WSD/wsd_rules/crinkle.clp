
(defrule crinkle0
(declare (salience 5000))
(id-root ?id crinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id silavata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crinkle.clp 	crinkle0   "  ?id "  silavata )" crlf))
)

;"crinkle","N","1.silavata/sikudZana"
;Her mother got crinkles on her face. 
;
(defrule crinkle1
(declare (salience 4900))
(id-root ?id crinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikudZaneM_dAlanA_yA_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crinkle.clp 	crinkle1   "  ?id "  sikudZaneM_dAlanA_yA_padZa )" crlf))
)

;"crinkle","V","1.sikudZaneM_dAlanA_yA_padZanA"
;I crinkled the aluminium paper up into a ball. 
;
