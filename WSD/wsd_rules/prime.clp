
(defrule prime0
(declare (salience 5000))
(id-root ?id prime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prime.clp 	prime0   "  ?id "  muKya )" crlf))
)

;"prime","Adj","1.muKya"
;The prime cause for this is not known.
;
(defrule prime1
(declare (salience 4900))
(id-root ?id prime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prime.clp 	prime1   "  ?id "  bahAra )" crlf))
)

;"prime","N","1.bahAra"
;He is in the prime of his life.
;
(defrule prime2
(declare (salience 4800))
(id-root ?id prime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prime.clp 	prime2   "  ?id "  wEyAra_kara )" crlf))
)

;"prime","V","1.wEyAra_karanA"
;The workers were primed by their leader for strike.
;The windows were all primed before actual painting.
;
