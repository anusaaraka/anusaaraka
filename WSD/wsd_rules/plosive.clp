
(defrule plosive0
(declare (salience 5000))
(id-root ?id plosive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparSa_XvanyAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plosive.clp 	plosive0   "  ?id "  sparSa_XvanyAwmaka )" crlf))
)

;"plosive","Adj","1.sparSa_XvanyAwmaka{Xvani_vijFAna}"
;'p', 'k' && 't' are all plosive sounds.
;
(defrule plosive1
(declare (salience 4900))
(id-root ?id plosive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparSa_Xvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plosive.clp 	plosive1   "  ?id "  sparSa_Xvani )" crlf))
)

;"plosive","N","1.sparSa_Xvani{Xvani_vijFAna}"
;Plosives are sounds which are articulated by sudden release of air.
;
