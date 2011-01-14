
(defrule though0
(declare (salience 5000))
(id-root ?id though)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaxyapi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  though.clp 	though0   "  ?id "  yaxyapi )" crlf))
)

;"though","Adv","1.yaxyapi"
;Our team lagged behind.It was a good team though.
;
(defrule though1
(declare (salience 4900))
(id-root ?id though)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaxyapi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  though.clp 	though1   "  ?id "  yaxyapi )" crlf))
)

;"though","Conj","1.yaxyapi"
;Though she was sick, she finished the task.
;
