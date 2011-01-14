
(defrule competent0
(declare (salience 5000))
(id-root ?id competent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakRama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  competent.clp 	competent0   "  ?id "  sakRama )" crlf))
)

(defrule competent1
(declare (salience 4900))
(id-root ?id competent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  competent.clp 	competent1   "  ?id "  samarWa )" crlf))
)

;"competent","Adj","1.samarWa"
;He is a competent typist.
;
;
