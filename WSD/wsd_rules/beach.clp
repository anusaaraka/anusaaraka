
(defrule beach0
(declare (salience 5000))
(id-root ?id beach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samuxrawata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beach.clp 	beach0   "  ?id "  samuxrawata )" crlf))
)

;"beach","N","1.samuxrawata"
;Beach of Bombay is very beautiful.
;
(defrule beach1
(declare (salience 4900))
(id-root ?id beach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samuxra_ke_kinAre_para_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beach.clp 	beach1   "  ?id "  samuxra_ke_kinAre_para_lA )" crlf))
)

;"beach","V","1.samuxra_ke_kinAre_para_lAnA"
;We have to find a place to beach the boat.
;
