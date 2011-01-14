
(defrule outdoors0
(declare (salience 5000))
(id-root ?id outdoors)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gara_ke_bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outdoors.clp 	outdoors0   "  ?id "  Gara_ke_bAhara )" crlf))
)

;"outdoors","Adv","1.Gara_ke_bAhara"
;Children go && play outdoors.
;
(defrule outdoors1
(declare (salience 4900))
(id-root ?id outdoors)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAzva_kA_mAhOla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outdoors.clp 	outdoors1   "  ?id "  gAzva_kA_mAhOla )" crlf))
)

;"outdoors","N","1.gAzva_kA_mAhOla"
;Come to India to enjoy the refreshing outdoors.
;
