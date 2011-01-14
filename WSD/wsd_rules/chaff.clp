
(defrule chaff0
(declare (salience 5000))
(id-root ?id chaff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CilakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chaff.clp 	chaff0   "  ?id "  CilakA )" crlf))
)

;"chaff","N","1.CilakA/CAztana"
;The sifting of grain from the chaff is done sometime in March-April.
;
(defrule chaff1
(declare (salience 4900))
(id-root ?id chaff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hazsI_meM_KijA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chaff.clp 	chaff1   "  ?id "  hazsI_meM_KijA )" crlf))
)

;"chaff","VT","1.hazsI_meM_KijAnA/waMga_karanA"
;The senior boys chaffed the juniors during ragging.
;
