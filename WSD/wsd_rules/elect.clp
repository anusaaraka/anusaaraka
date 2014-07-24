
(defrule elect0
(declare (salience 5000))
(id-root ?id elect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elect.clp 	elect0   "  ?id "  nirvAciwa )" crlf))
)

;"elect","Adj","1.nirvAciwa"
;The minister elect has to prove his majority.
;
(defrule elect1
(declare (salience 4900))
(id-root ?id elect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAciwa_manuRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elect.clp 	elect1   "  ?id "  nirvAciwa_manuRya )" crlf))
)

;"elect","N","1.nirvAciwa_manuRya"
;People choose the elect as the best.
;
(defrule elect2
(declare (salience 4000))
(id-root ?id elect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAcana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elect.clp 	elect2   "  ?id "  nirvAcana_kara )" crlf))
)

;"elect","VT","1.nirvAcana_karanA"
;Mr. Gupta was elected as the President of the Company.
;--"2.cunanA"
;She elected to work overtime on sundays.
;


;@@@ Added by Pramila(BU) on 04-02-2014
;She elected to work overtime on sundays.   [old clp]
;उसने रविवार को अतिरिक्त समय काम करने के लिए चुना.
(defrule elect3
(declare (salience 4800))
(id-root ?id elect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elect.clp 	elect3   "  ?id "  cuna )" crlf))
)

;@@@ Added by Pramila(BU) on 04-02-2014
;Asutosh was elected President of the Post-graduate Council in Arts as well as of the Post-graduate Council in Science.  ;gyannidhi
;आशुतोष को कला के स्नातकोत्तर परिषद दोनों का ही अध्यक्ष चुना गया।
(defrule elect4
(declare (salience 4800))
(id-root ?id elect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuna))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elect.clp 	elect4   "  ?id "  cuna )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  elect.clp    elect4   "  ?id " ko )" crlf))
)
