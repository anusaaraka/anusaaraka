;Added by sheetal(17-03-10)
;The coverage on TV and on the radio has been terrible .
(defrule terrible0
(declare (salience 5000))
(id-root ?id terrible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?sub ?id)
(id-root ?sub coverage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awiSaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  terrible.clp      terrible0   "  ?id "  awiSaya )" crlf))
)

;@@@ Added by Prachi Rathore[17-2-14]
;I felt terrible after our discussion. [verified sentence]
; हमारी चर्चा के बाद मुझे बहुत खराब लगा . 
(defrule terrible1
(declare (salience 4000))
(id-root ?id terrible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  terrible.clp      terrible1   "  ?id "  bahuwa_KarAba )" crlf))
)

;@@@ Added by Prachi Rathore[17-2-14]
;He saw a terrible accident.
;उसने एक भयानक दुर्घटना को देखा . 
(defrule terrible2
(declare (salience 5000))
(id-root ?id terrible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BayAnaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  terrible.clp      terrible2   "  ?id "  BayAnaka )" crlf))
)


;@@@ Added by Prachi Rathore[17-2-14]
;That's a terrible thing to say![oald]
;वह कहने के लिये एक खराब बात है! 
(defrule terrible3
(declare (salience 5050))
(id-root ?id terrible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 thing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  terrible.clp      terrible3   "  ?id "  KarAba )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_terrible3
(declare (salience 5050))
(id-root ?id terrible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 thing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " terrible.clp   sub_samA_terrible3   "   ?id " KarAba )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_terrible3
(declare (salience 5050))
(id-root ?id terrible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 thing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " terrible.clp   obj_samA_terrible3   "   ?id " KarAba )" crlf))
)
