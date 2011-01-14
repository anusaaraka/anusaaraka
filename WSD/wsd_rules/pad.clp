
(defrule pad0
(declare (salience 5000))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAgajZa_yA_soKawe_kI_gaddI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad0   "  ?id "  kAgajZa_yA_soKawe_kI_gaddI )" crlf))
)

;"pad","N","1.kAgajZa_yA_soKawe_kI_gaddI"
;Yesterday I purchased a very beautiful pad.
;
(defrule pad1
(declare (salience 4900))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad1   "  ?id "  Bara_xe )" crlf))
)

;"pad","V","1.Bara_xenA"
;Yesterday I padded my torn clothes in a packet.
;--"2.maMxagawi_se_calanA"
;Tortoise walks with a very pad movements.
;
