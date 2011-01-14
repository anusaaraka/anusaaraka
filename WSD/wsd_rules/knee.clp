
(defrule knee0
(declare (salience 5000))
(id-root ?id knee)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GutanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knee.clp 	knee0   "  ?id "  GutanA )" crlf))
)

;"knee","N","1.GutanA"
;She has a pain in her knees.
;
(defrule knee1
(declare (salience 4900))
(id-root ?id knee)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XakkA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knee.clp 	knee1   "  ?id "  XakkA_xe )" crlf))
)

;"knee","V","1.XakkA_xenA"
;She kneed to open the door.
;
