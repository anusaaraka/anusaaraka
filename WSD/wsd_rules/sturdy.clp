;@@@ Added by jagriti(5.3.2014)
;We shall give them a sturdy resistance.[rajpal]
;हम उनका ज़ोरदार विरोध देंगे .
(defrule sturdy0
(declare (salience 5000))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 opposition|defence|resistance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joraxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sturdy.clp 	sturdy0   "  ?id "  joraxAra )" crlf))
)
;@@@ Added by jagriti(5.3.2014)
;He is a sturdy man.[rajpal]
;वह एक हट्टा-कट्टा आदमी है . 
(defrule sturdy1
(declare (salience 4900))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hattA_kattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sturdy.clp 	sturdy1   "  ?id "  hattA_kattA )" crlf))
)

;@@@ Added by jagriti(5.3.2014)
;All the furniture should be sturdy.[rajpal]
;सारा फर्नीचर मजबूत होना चाहिए .
(defrule sturdy2
(declare (salience 4900))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-root ?id1 furniture|frame|chair|table|wall)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sturdy.clp 	sturdy2   "  ?id "  majabUwa )" crlf))
)
;@@@ Added by jagriti(5.3.2014)
;sturdy behaviour. 
;अच्छा बर्ताव .
(defrule sturdy3
(declare (salience 4800))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-root ?id1 behaviour|sense|work)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sturdy.clp 	sturdy3   "  ?id "  acCA )" crlf))
)
;.....default rule...............
(defrule sturdy4
(declare (salience 100))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hattA_kattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sturdy.clp 	sturdy4   "  ?id "  hattA_kattA )" crlf))
)

(defrule sturdy5
(declare (salience 100))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sturdy.clp 	sturdy5   "  ?id "  xqDZa )" crlf))
)

;"sturdy","Adj","1.xqDZa"
;He is quite sturdy on his decisions.
;--"2.majZabUwa"
;The company offers a range of sturdy footwear.
;"sturdily","Adj","1.xqDZawA se"
;He talked to me sturdily about his plans.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sturdy0
(declare (salience 5000))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 opposition|defence|resistance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joraxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sturdy.clp   sub_samA_sturdy0   "   ?id " joraxAra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sturdy0
(declare (salience 5000))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 opposition|defence|resistance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joraxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sturdy.clp   obj_samA_sturdy0   "   ?id " joraxAra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sturdy1
(declare (salience 4900))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hattA_kattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sturdy.clp   sub_samA_sturdy1   "   ?id " hattA_kattA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sturdy1
(declare (salience 4900))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hattA_kattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sturdy.clp   obj_samA_sturdy1   "   ?id " hattA_kattA )" crlf))
)
