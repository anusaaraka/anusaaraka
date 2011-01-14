
(defrule trigger0
(declare (salience 5000))
(id-root ?id trigger)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yanwra_ko_cAlU_karane_kA_purjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trigger.clp 	trigger0   "  ?id "  yanwra_ko_cAlU_karane_kA_purjA )" crlf))
)

;"trigger","N","1.yanwra_ko_cAlU_karane_kA_purjA"
;Keep your finger on the trigger.
;--"2.Jata_prawikriyA"
;His joining in the office was the trigger that brought profits to the company.
;
(defrule trigger1
(declare (salience 4900))
(id-root ?id trigger)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trigger.clp 	trigger1   "  ?id "  preriwa_kara )" crlf))
)

;"trigger","VT","1.preriwa_karanA"
;--"2.uwwejiwa_honA[karanA]"
;Violence triggered off after the function .
;
