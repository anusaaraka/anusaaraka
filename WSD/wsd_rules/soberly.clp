
(defrule soberly0
(declare (salience 5000))
(id-root ?id soberly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sOmyawApUrNa_DaMga_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soberly.clp 	soberly0   "  ?id "  sOmyawApUrNa_DaMga_se )" crlf))
)

;"soberly","Adj","1.sOmyawApUrNa_DaMga_se"
;When you come to school you should be soberly dressed.
;
(defrule soberly1
(declare (salience 4900))
(id-root ?id soberly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sOmyawA_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soberly.clp 	soberly1   "  ?id "  sOmyawA_se )" crlf))
)

;"soberly","Adv","1.sOmyawA_se"
