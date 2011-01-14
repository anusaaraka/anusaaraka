
(defrule scythe0
(declare (salience 5000))
(id-root ?id scythe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAsa_kAtane_kI_hzasiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scythe.clp 	scythe0   "  ?id "  GAsa_kAtane_kI_hzasiyA )" crlf))
)

;"scythe","N","1.GAsa_kAtane_kI_hzasiyA/xarAzwI"
;People in villages cut grasses with scythe.
;
(defrule scythe1
(declare (salience 4900))
(id-root ?id scythe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scythe.clp 	scythe1   "  ?id "  kAta )" crlf))
)

;"scythe","V","1.kAtanA"
;Gardener scythed the grass.
;
