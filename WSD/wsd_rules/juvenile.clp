
(defrule juvenile0
(declare (salience 5000))
(id-root ?id juvenile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waruNa_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  juvenile.clp 	juvenile0   "  ?id "  waruNa_saMbaMXI )" crlf))
)

;"juvenile","Adj","1.waruNa_saMbaMXI"
;There is an increase in cases of juvenile crimes.
;
(defrule juvenile1
(declare (salience 4900))
(id-root ?id juvenile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiSora_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  juvenile.clp 	juvenile1   "  ?id "  kiSora_vyakwi )" crlf))
)

;"juvenile","N","1.kiSora_vyakwi"
;There is an increase in the number of juveniles taking to crimes.
;
