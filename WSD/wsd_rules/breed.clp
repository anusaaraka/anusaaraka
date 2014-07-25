;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01/04/2014
;Fear of failure was bred into him at an early age.[oald]
;असफलता का डर कम उम्र में ही उसमें पैदा किया गया था.
(defrule breed5
(declare (salience 3000))
(id-root ?id breed )
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pExA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  breed.clp  	breed5   "  ?id " pExA_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01/04/2014
;She breeds dogs.[old example]
;To breed cattle.[oald]
;पशु का प्रजनन के लिये पालन पोषण करना
(defrule breed3
(declare (salience 3000))
(id-root ?id breed )
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prajanana_ke_liye_pAlana_poRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  breed.clp  	breed3   "  ?id " prajanana_ke_liye_pAlana_poRaNa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01/04/2014
;The rabbits are bred for their long coats.[oald]
;खरगोश उनके लम्बें कोट के लिये पाले जाते हैं
(defrule breed4
(declare (salience 3000))
(id-root ?id breed )
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  breed.clp  	breed4   "  ?id " pAla )" crlf))
)

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01/04/2014
;"breeding","N","1.uccavaMSa"
;A woman of breeding && refinement
(defrule breed0
(declare (salience 3000))
(id-word ?id breeding )
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-word ?id1 woman)
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uccavaMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  breed.clp  	breed0   "  ?id "  uccavaMSa )" crlf))
)



;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01/04/2014
;changed the meaning from 'vanSa' to 'nasla'
;"breed","N","1.vaMSa"
;A breed of Americans
;He experimented on a particular breed of white rats
(defrule breed1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id breed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nasla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breed.clp 	breed1   "  ?id "  nasla )" crlf))
)

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 01/04/2014
;changed the meaning from 'pExA_kara' to 'bacce_pExA_kara'
;Many animals breed only at certain times of the year.[oald]
;बहुत सारे पशु वर्ष के केवल कुछ समय में बच्चे पैदा करते हैं . 
(defrule breed2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id breed)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacce_pExA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breed.clp 	breed2   "  ?id "  bacce_pExA_kara )" crlf))
)

;"breed","VT","1.pExA_karanA[karavAnA]"
;She breeds dogs
;
