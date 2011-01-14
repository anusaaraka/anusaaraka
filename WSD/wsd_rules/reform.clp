
(defrule reform0
(declare (salience 5000))
(id-root ?id reform)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reform.clp 	reform0   "  ?id "  suXAra )" crlf))
)

(defrule reform1
(declare (salience 4900))
(id-root ?id reform)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reform.clp 	reform1   "  ?id "  suXAra )" crlf))
)

;"reform","VTI","1.suXAranA"
;She's given up bad habits && is now a reformed personality.
;
;