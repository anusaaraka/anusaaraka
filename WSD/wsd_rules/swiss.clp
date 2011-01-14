
(defrule swiss0
(declare (salience 5000))
(id-root ?id swiss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svitjarlEMdZa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swiss.clp 	swiss0   "  ?id "  svitjarlEMdZa_se )" crlf))
)

;"swiss","Adj","1.svitjarlEMdZa_se"
;He is a swiss soldier.
;
(defrule swiss1
(declare (salience 4900))
(id-root ?id swiss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svitjarlEMdZa_kA_nivAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swiss.clp 	swiss1   "  ?id "  svitjarlEMdZa_kA_nivAsI )" crlf))
)

;"swiss","N","1.svitjarlEMdZa_kA_nivAsI"
;He is a swiss.
;
