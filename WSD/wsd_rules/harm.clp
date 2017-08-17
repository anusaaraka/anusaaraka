
;Modified "hAnI as hAni" by Shirisha Manju (21-07-17)
(defrule harm0
(declare (salience 5000))
(id-root ?id harm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAni))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harm.clp 	harm0   "  ?id "  hAni )" crlf))
)

;Modified "hAnI_pahuzcA as hAni_pahuzcA" by Shirisha Manju (21-07-17)
(defrule harm1
(declare (salience 4900))
(id-root ?id harm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAni_pahuzcA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harm.clp 	harm1   "  ?id "  hAni_pahuzcA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  harm.clp      harm1   "  ?id " ko )" crlf)
)
)

