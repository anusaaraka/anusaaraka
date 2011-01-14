
(defrule degenerate0
(declare (salience 5000))
(id-root ?id degenerate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BraRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degenerate.clp 	degenerate0   "  ?id "  BraRta )" crlf))
)

;"degenerate","Adj","1.BraRta"
;He has a degenrate character.
;
(defrule degenerate1
(declare (salience 4900))
(id-root ?id degenerate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRaya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  degenerate.clp 	degenerate1   "  ?id "  kRaya_ho )" crlf))
)

;"degenerate","V","1.kRaya_honA"
;His physical weakness degenerated his mental abilities also.
;
