;Added by Shirisha Manju 12-10-13 Suggested by Sukhada.
;He realized that he was in great danger but he did not lose heart.
(defrule realize0
(id-root ?id realize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  boXa_ho))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " realize.clp   realize0  "  ?id "   boXa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi  " ?*wsd_dir* "  realize.clp   realize0  "  ?id " ko )" crlf))
)
