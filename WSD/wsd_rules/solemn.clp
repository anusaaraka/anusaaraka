
(defrule solemn0
(declare (salience 100))
(id-root ?id solemn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gamBIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solemn.clp 	solemn0   "  ?id "  gamBIra )" crlf))
)

(defrule solemn1
(declare (salience 100))
(id-root ?id solemn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paviwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solemn.clp 	solemn1   "  ?id "  paviwra )" crlf))
)
;@@@ Added by jagriti(13.2.2014)
;Everything is done in a solemn way.[rajpal]
;सब कुछ एक औपचारिक तरीके से किया जाता है.
(defrule solemn2
(declare (salience 5000))
(id-root ?id solemn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 way)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viXivawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solemn.clp 	solemn2   "  ?id "  viXivawa )" crlf))
)

;@@@ Added by jagriti(13.2.2014)
;It is my solemn duty to thank you.[rajpal]
;आपको धन्यवाद देना मेरा परम पावन कर्त्तव्य है . 
(defrule solemn4
(declare (salience 5000))
(id-root ?id solemn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-root ?id1 duty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parama_pAvana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solemn.clp 	solemn4   "  ?id "  parama_pAvana )" crlf))
)


;"solemn","Adj","1.paviwra"
;Holy places are considered to be solemn.
;--"2.OpacArika"
;Soldiers performed their duties with full solemn for their mother land.
;--"3.gaMBIra"
;He looked very solemn when he came to know about his uncle's death.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_solemn2
(declare (salience 5000))
(id-root ?id solemn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 way)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viXivawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " solemn.clp   sub_samA_solemn2   "   ?id " viXivawa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_solemn2
(declare (salience 5000))
(id-root ?id solemn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 way)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viXivawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " solemn.clp   obj_samA_solemn2   "   ?id " viXivawa )" crlf))
)
