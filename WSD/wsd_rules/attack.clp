(defrule attack0
(declare (salience 5000))
(id-root ?id attack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attack.clp 	attack0   "  ?id "  hamalA )" crlf))
;(assert (kriyA_id-subject_viBakwi ?id ne))
;(assert (kriyA_id-object_viBakwi ?id para))
)


(defrule attack1
(declare (salience 5000))
(id-root ?id attack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attack.clp 	attack1   "  ?id "  hamalA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  attack.clp    attack1   "  ?id " para )" crlf)
)
;(assert (kriyA_id-subject_viBakwi ?id ne))
)

