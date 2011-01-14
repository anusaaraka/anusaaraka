
(defrule bay0
(declare (salience 5000))
(id-root ?id bay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAdZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bay.clp 	bay0   "  ?id "  KAdZI )" crlf))
)

;"bay","N","1.KAdZI"
;The Bay of Bengal is in the eastern side of India.
;--"2.kuwwoM_kI_eka_viSeRa_prakAra_kI_BOzka"
;I heard the bay of hunting dogs last night.
;--"3.eka_prakAra_kA_pedZa_jisake_hare_pawwe_Ora_jAmunI_Pala_ho"
;I like the fruit of bay.
;
(defrule bay1
(declare (salience 4900))
(id-root ?id bay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BOMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bay.clp 	bay1   "  ?id "  BOMka )" crlf))
)

;"bay","V","1.BOMkanA{SikArI_kuwwoM_kA}"
;I heard hunting dogs baying at night.
;
