
(defrule influence0
(declare (salience 5000))
(id-root ?id influence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  influence.clp 	influence0   "  ?id "  praBAva )" crlf))
)

;"influence","N","1.praBAva"
;Used her parents' influence to get the job
;Her wishes had a great influence on his thinking
;The influence of mechanical action
;She was the most important influence in my life
;
(defrule influence1
(declare (salience 4900))
(id-root ?id influence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  influence.clp 	influence1   "  ?id "  praBAviwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  influence.clp         influence1   "  ?id " ko )" crlf)
)
)

;"influence","VT","1.praBAviwa_karanA"
