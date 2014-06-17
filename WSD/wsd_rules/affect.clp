
(defrule affect0
(declare (salience 0));salience reduced by Garima Singh
(id-word ?id affecting )
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praBAvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  affect.clp  	affect0   "  ?id "  praBAvapUrNa )" crlf))
)

;"affecting","Adj","1.praBAvapUrNa"
;The film I recently saw had many affecting scenes, && all the people were crying.


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27/03/2014
;He showed affected feelings of sadness when his uncle died.
;उसने दुख की बनावटी संवेदनाएँ दिखाईं जब उसका चाचा मरा . 
(defrule affect1
(declare (salience 0))
(id-root ?id affect)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 feeling)
;(viSeRya-of_saMbanXI  ?id1 ?);uncomment if any conflict is found
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id banAvatI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  affect.clp  	affect1   "  ?id "  banAvatI )" crlf))
)

;"affected","Adj","1.banAvatI"
;note :modified rule 'affect1' as it was similar to rule 'affect0'



;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27/03/2014
;corrected the meaning 'praBAva_dAla' to 'praBAviwa_kara' in printout statement
;Modified by Meena(17.3.11);have added (assert (kriyA_id-object_viBakwi ?id ko)) and changed the meaning from "praBAva_dAla" to "praBAviwa_kara" 
;These cuts in services will particularly affect the old.
(defrule affect2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id affect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  affect.clp 	affect2   "  ?id "  praBAviwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  affect.clp      affect2   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27/03/2014
;Even the work of banks and offices were affected.[news-dev]
; यहां तक की बैंकों तथा दफ्तरों के कामकाज प्रभावित हुए
;Mobile services and other work was also affected.[news-dev]
;मोबाइल सेवा तथा बाकी काम भी प्रभावित हुए
(defrule affect3
(declare (salience 0))
(id-root ?id affect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriya-object ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  affect.clp 	affect3   "  ?id "  praBAviwa_ho )" crlf)
)
)

;"affect","V","1.praBAva_dAlanA"
;The huge amount of polluting compounds produced will adversely affect humans && the environment.
;--"2.bahAnA_karanA"
;The convict affected an air of innocence even after he was senteneed.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_affect1
(declare (salience 0))
(id-root ?id affect)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 feeling)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id banAvatI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " affect.clp   sub_samA_affect1   "   ?id " banAvatI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_affect1
(declare (salience 0))
(id-root ?id affect)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 feeling)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id banAvatI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " affect.clp   obj_samA_affect1   "   ?id " banAvatI )" crlf))
)
