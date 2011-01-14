
(defrule pause0
(declare (salience 5000))
(id-root ?id pause)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id virAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pause.clp 	pause0   "  ?id "  virAma )" crlf))
)

;"pause","N","1.virAma"
;He slipped out during a pause in the conversation.
;
(defrule pause1
(declare (salience 4900))
(id-root ?id pause)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pause.clp 	pause1   "  ?id "  ruka )" crlf))
)

;"pause","VI","1.rukanA"
;He paused before answering my question.
;
