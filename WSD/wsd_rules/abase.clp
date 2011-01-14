;Added by sheetal(29-01-10)
(defrule abase0
(declare (salience 5000))
(id-root ?id abase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avamAniwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abase.clp       abase0   "  ?id "  avamAniwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  abase.clp       abase0   "  ?id " ko )" crlf))
)
;A policeman is abasing a good businessman .

