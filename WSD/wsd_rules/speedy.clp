
(defrule speedy0
(declare (salience 5000))
(id-root ?id speedy)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) progress)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  speedy.clp 	speedy0   "  ?id "  wejI_se )" crlf))
)

