
(defrule despite0
(declare (salience 5000))
(id-root ?id despite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bEra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  despite.clp 	despite0   "  ?id "  bEra )" crlf))
)

;"despite","N","1.bEra"
;There was a great despite among them.





;Added by Meena(22.10.09)
;Despite being late she could manage to catch the flight.
(defrule despite1
(declare (salience 4900))
(id-root ?id despite)
?mng <-(meaning_to_be_decided ?id)
(kriyA-despite_saMbanXI  ?id1 ?id2)
;(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAvajUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  despite.clp 	despite1   "  ?id "  ke_bAvajUxa )" crlf))
)

;"despite","Prep","1.bAvajUxa"

;
