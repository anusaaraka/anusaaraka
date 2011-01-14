
(defrule zoom0
(declare (salience 5000))
(id-root ?id zoom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZora_kI_AvAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zoom.clp 	zoom0   "  ?id "  jZora_kI_AvAjZa )" crlf))
)

;"zoom","N","1.jZora_kI_AvAjZa"
;The zoom of the motor cars on the highway adds to the noise-pollution.
;
;


;Modified by Meena(15.01.10)
;The jet zoomed across the sky.
(defrule zoom1
(declare (salience 4900))
(id-root ?id zoom)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZI_se_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zoom.clp 	zoom1   "  ?id "  wejZI_se_jA )" crlf))
)

;"zoom","V","1.bahuwa_wejZI_se_jAnA"
;
