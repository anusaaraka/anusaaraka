
(defrule deliberate0
(declare (salience 5000))
(id-root ?id deliberate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id socA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliberate.clp 	deliberate0   "  ?id "  socA )" crlf))
)

(defrule deliberate1
(declare (salience 4900))
(id-root ?id deliberate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliberate.clp 	deliberate1   "  ?id "  vicAra_kara )" crlf))
)

;"deliberate","VT","1.vicAra_karanA"
;They deleberated over the issue for full two hours. 
;Just deliberate before you take an action.
;
;
