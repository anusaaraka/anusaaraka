
(defrule stride0
(declare (salience 5000))
(id-root ?id stride)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laMbe_kaxama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stride.clp 	stride0   "  ?id "  laMbe_kaxama )" crlf))
)

;"stride","N","1.laMbe_kaxama"
;With each stride he came closer to success.
;Great strides have recently been made towards preserving the environment.
;--"2.laMbe_daga_lekara_calanA"
;A stride in the morning is good for health.
;
(defrule stride1
(declare (salience 4900))
(id-root ?id stride)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laMbe_kaxama_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stride.clp 	stride1   "  ?id "  laMbe_kaxama_raKa )" crlf))
)

;"stride","V","1.laMbe_kaxama_raKanA"
;Ram strode towards the class when he saw the principal coming.
;--"2.lAzGanA"
;Girls should not stride their limits.
;
