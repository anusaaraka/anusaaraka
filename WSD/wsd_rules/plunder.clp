
(defrule plunder0
(declare (salience 5000))
(id-root ?id plunder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lUtamAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunder.clp 	plunder0   "  ?id "  lUtamAra )" crlf))
)

;"plunder","N","1.lUtamAra"
;plunders are increasing in number day by day.
;
(defrule plunder1
(declare (salience 4900))
(id-root ?id plunder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plunder.clp 	plunder1   "  ?id "  lUta )" crlf))
)

;"plunder","V","1.lUtanA"
;Robber plundered the house totally.
;
