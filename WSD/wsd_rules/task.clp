
(defrule task0
(declare (salience 5000))
(id-root ?id task)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  task.clp 	task0   "  ?id "  kAma )" crlf))
)

;"task","N","1.kAma"
;Shyam finished the task which was assigned to him.
;
(defrule task1
(declare (salience 4900))
(id-root ?id task)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyawa_kAma_niyukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  task.clp 	task1   "  ?id "  niyawa_kAma_niyukwa_kara )" crlf))
)

;"task","VT","1.niyawa_kAma_niyukwa_karanA"
;I tasked him to look after the children.
;
