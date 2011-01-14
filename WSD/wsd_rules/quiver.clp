
(defrule quiver0
(declare (salience 5000))
(id-root ?id quiver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMpana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quiver.clp 	quiver0   "  ?id "  kaMpana )" crlf))
)

;"quiver","N","1.kaMpana"
;At the sight of the tiger a quiver ran through her body.
;--"2.warakaSa"
;He put the arrow back in its quiver.
;
(defrule quiver1
(declare (salience 4900))
(id-root ?id quiver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quiver.clp 	quiver1   "  ?id "  kAzpa )" crlf))
)

;"quiver","VT","1.kAzpanA"
;She was quivered with fear when she saw the thief.
;
