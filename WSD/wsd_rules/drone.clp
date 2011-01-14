
(defrule drone0
(declare (salience 5000))
(id-root ?id drone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drone.clp 	drone0   "  ?id "  AvAjZa )" crlf))
)

;"drone","N","1.AvAjZa{maXu_makKI_Axi_kI}"
;--"2.nara_maXu_makKI"
;--"3.kAma_cora"
;
(defrule drone1
(declare (salience 4900))
(id-root ?id drone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvAjZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drone.clp 	drone1   "  ?id "  AvAjZa_kara )" crlf))
)

;"drone","V","1.AvAjZa_karanA{maXu_makKI_jEsI}"
