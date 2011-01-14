
(defrule support0
(declare (salience 5000))
(id-root ?id support)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  support.clp 	support0   "  ?id "  sahArA )" crlf))
)

;"support","N","1.sahArA"
;--"2.AXAra/sahArA"
;He was their only means of support.
;
(defrule support1
(declare (salience 4900))
(id-root ?id support)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahArA_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  support.clp 	support1   "  ?id "  sahArA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  support.clp   support1   "  ?id " ko )" crlf)
)
)

;"support","V","1.sahArA_xenA"
;He supported his friend in his difficulties.
;--"2.BaraNa_poRaNa_karanA"
;He supported his family.
;
