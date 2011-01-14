
(defrule grease0
(declare (salience 5000))
(id-root ?id grease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carbI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grease.clp 	grease0   "  ?id "  carbI )" crlf))
)

;"grease","N","1.carbI"
;The higes are making a lot of noise, they need some grease.
;
(defrule grease1
(declare (salience 4900))
(id-root ?id grease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grease.clp 	grease1   "  ?id "  cikanA_kara )" crlf))
)

;"grease","VT","1.cikanA_karanA"
;I grease my bicycle regularly.
;
