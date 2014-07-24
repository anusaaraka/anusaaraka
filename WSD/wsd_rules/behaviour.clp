;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15/03/2014
;The recognition of concepts of dimensions which guide the description of physical behavior is of basic importance as only those physical quantities can be added or subtracted which have the same dimensions.[ncert]
;विमाओं की सङ्कल्पना की स्वीकृति, जो भौतिक व्यवहार के वर्णन में मार्गदर्शन करती है, अपना एक आधारिक महत्व रखती है क्योङ्कि इसके अनुसार केवल वही भौतिक राशियाँ सङ्कलित या व्यवकलित की जा सकती हैं जिनकी विमाएँ समान हैं.
(defrule behaviour1
(declare (salience 3000))
(id-root ?id behaviour)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1 physical)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behaviour.clp 	behaviour1   "  ?id "  vyavahAra )" crlf))
)



;(added by Darpan Baweja : NIT allahabad)
;(Most of us tend to blame others for our own bad behavior )
(defrule behaviour0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id behaviour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barwAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  behaviour.clp 	behaviour0   "  ?id "  barwAva )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_behaviour1
(declare (salience 3000))
(id-root ?id behaviour)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 physical)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " behaviour.clp   sub_samA_behaviour1   "   ?id " vyavahAra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_behaviour1
(declare (salience 3000))
(id-root ?id behaviour)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 physical)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " behaviour.clp   obj_samA_behaviour1   "   ?id " vyavahAra )" crlf))
)
