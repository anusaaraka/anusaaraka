
(defrule clap0
(declare (salience 5000))
(id-root ?id clap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadagadAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clap.clp 	clap0   "  ?id "  gadagadAhata )" crlf))
)

(defrule clap1
(declare (salience 4900))
(id-root ?id clap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAlI_bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clap.clp 	clap1   "  ?id "  wAlI_bajA )" crlf))
)

;"clap","V","1.wAlI_bajAnA"
;The children clapped their hands while singing.
;
;