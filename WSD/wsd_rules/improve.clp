;Added by Shirisha Manju (Suggested by Chaitanya Sir 6-6-13)
;Man has constantly made endeavors to improve the quality of communication with other human beings.
(defrule improve0
(declare (salience 5000))
(id-root ?id improve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suXAra))
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  improve.clp    improve0   "  ?id "  suXAra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  improve.clp    improve0   "  ?id " )" crlf)
)
)

(defrule improve1
(declare (salience 4900))
(id-root ?id improve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suXara))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  improve.clp    improve1   "  ?id "  suXara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  improve.clp    improve1   "  ?id " se ) " crlf))
)


