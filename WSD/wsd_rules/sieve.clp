
(defrule sieve0
(declare (salience 5000))
(id-root ?id sieve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sieve.clp 	sieve0   "  ?id "  CalanI )" crlf))
)

;"sieve","N","1.CalanI"
;Sieves are used for separating solids or large pieces from liquids. 
;
(defrule sieve1
(declare (salience 4900))
(id-root ?id sieve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sieve.clp 	sieve1   "  ?id "  CAna )" crlf))
)

;"sieve","V","1.CAnanA"
;Sieve the soup first && then drink.
;
