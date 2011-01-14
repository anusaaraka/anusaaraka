
(defrule tag0
(declare (salience 5000))
(id-root ?id tag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIwe_kI_GuNdI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tag.clp 	tag0   "  ?id "  PIwe_kI_GuNdI )" crlf))
)

;"tag","N","1.PIwe_kI_GuNdI"
;The tag of my shoe was lost .
;--"2.upanAma"
;The judge earned the tag of `Sir'.
;--"3.AMSika_praSna"
;`He is going. Isn't he?' is a tag question.
;
(defrule tag1
(declare (salience 4900))
(id-root ?id tag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tag.clp 	tag1   "  ?id "  bAzXa )" crlf))
)

;"tag","VT","1.bAzXanA"
;Tag the suitcase well with a knot.
;
