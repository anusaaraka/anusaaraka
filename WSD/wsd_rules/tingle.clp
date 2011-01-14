
(defrule tingle0
(declare (salience 5000))
(id-root ?id tingle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanasanAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tingle.clp 	tingle0   "  ?id "  sanasanAhata )" crlf))
)

;"tingle","N","1.sanasanAhata"
;I feel a tingle of anticipation.
;
(defrule tingle1
(declare (salience 4900))
(id-root ?id tingle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanasanA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tingle.clp 	tingle1   "  ?id "  sanasanA_jA )" crlf))
)

;"tingle","VT","1.sanasanA_jAnA"
;My fingers are tingling due to cold weather.
;--"2.jalanA"
;The teacher slapped him && that made his cheek tingle.
;
