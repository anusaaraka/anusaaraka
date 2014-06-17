
(defrule seed0
(declare (salience 100))
(id-root ?id seed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id seeded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bIjaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  seed.clp  	seed0   "  ?id "  bIjaxAra )" crlf))
)

;"seeded","Adj","1.bIjaxAra"
;I need only seeded raisins.
;--"2.prODZa"
;Only seeded players were sent to play abroad. 
;
(defrule seed1
(declare (salience 100))
(id-root ?id seed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seed.clp 	seed1   "  ?id "  bIja )" crlf))
)
;@@@ Added by jagriti(20.3.2014) 
;According to bible we all are seed of Adam.[rajpal]
;बाइबिल के अनुसार हम सब आदम के संतान हैं . 
(defrule seed2
(declare (salience 5000))
(id-root ?id seed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seed.clp 	seed2   "  ?id "  saMwAna )" crlf))
)
;@@@ Added by jagriti(20.3.2014)
;That was the seed of all troubles.[rajpal]
;वह सब परेशानियों का मूल करण था .
(defrule seed3
(declare (salience 4900))
(id-root ?id seed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 discontent|trouble)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla_karaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seed.clp 	seed3   "  ?id "  mUla_karaNa )" crlf))
) 
;@@@ Added by jagriti(20.3.2014)
;He seeded the mango.[rajpal] 
;उसने आम से बीज निकाला .    
(defrule seed4
(declare (salience 100))
(id-root ?id seed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIja_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seed.clp 	seed4   "  ?id "  bIja_nikAla)" crlf))
)
;"seed","N","1.bIja"
;Birds ate away all the seeds he had sown.
;
;
