
(defrule fool0
(declare (salience 5000))
(id-root ?id fool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fool.clp 	fool0   "  ?id "  mUrKa )" crlf))
)

;"fool","N","1.mUrKa"
;He is a fool to visit Kashmir at this point of time.
;
(defrule fool1
(declare (salience 4900))
(id-root ?id fool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrKa_banA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fool.clp 	fool1   "  ?id "  mUrKa_banA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  fool.clp      fool1   "  ?id " ko )" crlf)
)
)

;"fool","VT","1.mUrKa_banAnA"
;I was fooled by my friends on April 1.
;
