
(defrule stucco0
(declare (salience 5000))
(id-root ?id stucco)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id plAswara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stucco.clp 	stucco0   "  ?id "  plAswara )" crlf))
)

;"stucco","N","1.plAswara"
;The hut had stucco walls.
;
(defrule stucco1
(declare (salience 4900))
(id-root ?id stucco)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gacakArI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stucco.clp 	stucco1   "  ?id "  gacakArI_kara )" crlf))
)

;"stucco","V","1.gacakArI_karanA"
; We stuccoed the wall twice.
;
