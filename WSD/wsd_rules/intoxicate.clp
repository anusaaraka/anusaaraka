
(defrule intoxicate0
(declare (salience 5000))
(id-root ?id intoxicate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id intoxicating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id naSIlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  intoxicate.clp  	intoxicate0   "  ?id "  naSIlI )" crlf))
)

;"intoxicating","Adj","1.naSIlI"
;Intoxicating drugs  should be avoided.
;
(defrule intoxicate1
(declare (salience 4900))
(id-root ?id intoxicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naSe_meM_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intoxicate.clp 	intoxicate1   "  ?id "  naSe_meM_lA )" crlf))
)

;"intoxicate","VT","1.naSe_meM_lAnA"
;He was intoxicated under the influence of drugs.
;--"2.unmawwa_karanA"
;Hitler was intoxicated by the power of his office.
;
;