
(defrule cloak0
(declare (salience 5000))
(id-root ?id cloak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id labAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cloak.clp 	cloak0   "  ?id "  labAxA )" crlf))
)

;"cloak","N","1.labAxA"
;Most of the Shakespearean characters wore cloaks.
;
(defrule cloak1
(declare (salience 4900))
(id-root ?id cloak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DakA_huA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cloak.clp 	cloak1   "  ?id "  DakA_huA_ho )" crlf))
)

;"cloak","V","1.DakA_huA_honA"
;The investigation is cloaked in mystery.
;
