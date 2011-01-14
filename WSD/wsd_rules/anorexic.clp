
(defrule anorexic0
(declare (salience 5000))
(id-root ?id anorexic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUKa_na_lagane_kI_bImArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anorexic.clp 	anorexic0   "  ?id "  BUKa_na_lagane_kI_bImArI )" crlf))
)

;"anorexic","Adj","1.BUKa_na_lagane_kI_bImArI"
;Many figure conscious girls are anorexic.
;
(defrule anorexic1
(declare (salience 4900))
(id-root ?id anorexic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUKa_na_lagane_kI_bImArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anorexic.clp 	anorexic1   "  ?id "  BUKa_na_lagane_kI_bImArI )" crlf))
)

;"anorexic","N","1.BUKa_na_lagane_kI_bImArI"
;Many figure conscious girls are anorexic.
;
