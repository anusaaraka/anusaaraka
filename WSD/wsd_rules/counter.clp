
(defrule counter0
(declare (salience 5000))
(id-root ?id counter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id virUxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  counter.clp 	counter0   "  ?id "  virUxXa )" crlf))
)

(defrule counter1
(declare (salience 4900))
(id-root ?id counter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAuMtara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  counter.clp 	counter1   "  ?id "  kAuMtara )" crlf))
)

;"counter","N","1.kAuMtara"
;Go to the teller counter.
;--"2.ginane_kA_yaMwra"
;Japanese always use special counter for counting. 
;
;
