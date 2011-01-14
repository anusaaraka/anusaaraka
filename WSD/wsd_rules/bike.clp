;FILE ADDED BY MEENA(26.8.09)



;I biked Johnson Creek.
(defrule bike0
(declare (salience 4900))
(id-root ?id bike)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
;(assert (id-wsd_root_mng ?id sAikila_yA_motarasAikila_para_GumA))
(assert (id-wsd_root_mng ?id bAika_para_GumA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bike.clp    bike0   "  ?id "  sAikila_yA_motarasAikila_para_GumA )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bike.clp    bike0   "  ?id "  bAika_para_GumA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  bike.clp    bike0   "  ?id " ko )" crlf)
)
)

                                                          
