
(defrule loom0
(declare (salience 5000))
(id-root ?id loom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karaGA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loom.clp 	loom0   "  ?id "  karaGA )" crlf))
)

(defrule loom1
(declare (salience 4900))
(id-root ?id loom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aspaRta_CAyA_xIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loom.clp 	loom1   "  ?id "  aspaRta_CAyA_xIKa )" crlf))
)

;"loom","V","1.aspaRta CAyA xIKanA"
;I was relaxing on the ground when an enormous figure suddenly appeared from somewhere && loomed at me.
;--"2.samBAvanA honA"
;The possibility of a sense storm loomed large in the eastern horizon.
;
;