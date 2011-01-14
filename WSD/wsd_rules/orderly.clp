
(defrule orderly0
(declare (salience 5000))
(id-root ?id orderly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suvyavasWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  orderly.clp 	orderly0   "  ?id "  suvyavasWiwa )" crlf))
)

;"orderly","Adj","1.suvyavasWiwa"
;The class was very orderly.
;
(defrule orderly1
(declare (salience 4900))
(id-root ?id orderly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suvyavasWiwa_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  orderly.clp 	orderly1   "  ?id "  suvyavasWiwa_rUpa_se )" crlf))
)

;"orderly","Adv","1.suvyavasWiwa_rUpa_se"
;Put the files in an orderly sequence.
;
(defrule orderly2
(declare (salience 4800))
(id-root ?id orderly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id araxalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  orderly.clp 	orderly2   "  ?id "  araxalI )" crlf))
)

;"orderly","N","1.araxalI"
;The orderly laid out the general's uniform.
;
