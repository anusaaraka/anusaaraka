
(defrule reprieve0
(declare (salience 5000))
(id-root ?id reprieve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reprieve.clp 	reprieve0   "  ?id "  CUta )" crlf))
)

;"reprieve","N","1.CUta{prANaxaNda_iwyAxi}"
;The prisoner was given a last minute reprieve.
;
(defrule reprieve1
(declare (salience 4900))
(id-root ?id reprieve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reprieve.clp 	reprieve1   "  ?id "  CUta_xe )" crlf))
)

;"reprieve","VT","1.CUta_xenA{prANaxaNda_iwyAxi}"
;Reprieve a condemned prisoner.  
;
