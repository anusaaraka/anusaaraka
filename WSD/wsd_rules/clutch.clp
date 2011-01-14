
(defrule clutch0
(declare (salience 5000))
(id-root ?id clutch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clutch.clp 	clutch0   "  ?id "  paMjA )" crlf))
)

;"clutch","N","1.paMjA_[yAMwrika]"
;The clutch of the scooter has become loose.
;
(defrule clutch1
(declare (salience 4900))
(id-root ?id clutch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clutch.clp 	clutch1   "  ?id "  pakadZa )" crlf))
)

;"clutch","V","1.pakadZanA"
;She clutched the baby in her arms.
;
