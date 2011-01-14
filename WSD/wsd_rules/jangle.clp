
(defrule jangle0
(declare (salience 5000))
(id-root ?id jangle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JanaJanAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jangle.clp 	jangle0   "  ?id "  JanaJanAhata )" crlf))
)

;"jangle","N","1.JanaJanAhata"
;I like the jangle of her anklets.
;
(defrule jangle1
(declare (salience 4900))
(id-root ?id jangle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JanaJanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jangle.clp 	jangle1   "  ?id "  JanaJanA )" crlf))
)

;"jangle","V","1.JanaJanAnA"
;Her anklets jangelled as she ran across the corridor.
;
