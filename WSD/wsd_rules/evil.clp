
(defrule evil0
(declare (salience 5000))
(id-root ?id evil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evil.clp 	evil0   "  ?id "  xuRta )" crlf))
)

;"evil","Adj","1.xuRta/burA/pApI"
;Evil purposes
;
(defrule evil1
(declare (salience 4900))
(id-root ?id evil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evil.clp 	evil1   "  ?id "  burAI )" crlf))
)

;"evil","N","1.burAI/xuRtawA"
;He sees no evil.
;The evil that men do lives after them; the good is oft interred with their bones
;Attempts to explain the origin of evil in the world
;
