
(defrule prefix0
(declare (salience 5000))
(id-root ?id prefix)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upasarga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prefix.clp 	prefix0   "  ?id "  upasarga )" crlf))
)

;"prefix","N","1.upasarga"
;I left out the question in which we had to add prefixes.
;--"2.pUrva_prawyaya"
;In another two years I will finish my medical course && prefix Dr. will be added to my name.
;
(defrule prefix1
(declare (salience 4900))
(id-root ?id prefix)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SurU_yA_prAraMBa_meM_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prefix.clp 	prefix1   "  ?id "  SurU_yA_prAraMBa_meM_lagA )" crlf))
)

;"prefix","V","1.SurU_yA_prAraMBa_meM_lagAnA"
;All S.T.D. codes are prefixed with `0'.
;
