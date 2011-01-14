
(defrule piggy0
(declare (salience 5000))
(id-root ?id piggy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suara_ke_jEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piggy.clp 	piggy0   "  ?id "  suara_ke_jEsA )" crlf))
)

;"piggy","Adj","1.suara_ke_jEsA"
;He has got a cute little piggy nose.
;
(defrule piggy1
(declare (salience 4900))
(id-root ?id piggy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piggy.clp 	piggy1   "  ?id "  suara )" crlf))
)

;"piggy","N","1.suara{wowalI_BARA_meM}"
;And the big piggy climbed the window.
;
