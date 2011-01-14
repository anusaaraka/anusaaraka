
(defrule question0
(declare (salience 5000))
(id-root ?id question)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  question.clp 	question0   "  ?id "  praSna )" crlf))
)

;"question","N","1.praSna"
;I have a number of questions on this issue.
;--"2.Saka"
;His sincerety is beyond question.
;
(defrule question1
(declare (salience 4900))
(id-root ?id question)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSna_kara))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  question.clp 	question1   "  ?id "  praSna_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  question.clp  question1   "  ?id " se )" crlf)
)
)

;"question","VTI","1.praSna_kara"
;We must question your judgement in this matter
;The suspect was questioned by the police
;
