
(defrule confederate0
(declare (salience 5000))
(id-root ?id confederate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMXi_meM_milAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confederate.clp 	confederate0   "  ?id "  saMXi_meM_milAnA )" crlf))
)

;"confederate","Adj","1.saMXi_meM_milAnA"
;The confederate states of Soviet State collapsed.
;
(defrule confederate1
(declare (salience 4900))
(id-root ?id confederate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAWa_meM_kAma_karanevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confederate.clp 	confederate1   "  ?id "  sAWa_meM_kAma_karanevAlA )" crlf))
)

;"confederate","N","1.sAWa_meM_kAma_karanevAlA"
;Ramu && his confederate was arrested for drug peddling.
;
