;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14/03/2014
;Painting is best done in daylight.[oald]
;चिञकारी  सबसे अच्छे तरीके से दिन के उजाले में की जाती है
(defrule best4
(declare (salience 5000))
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  =(+ ?id 1) ?id)
;(kriyA-in_saMbanXI  =(+ ?id 1) ?) ;uncomment if any conflict is found
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCe_warIke_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  best.clp 	best4   "  ?id "  acCe_warIke_se )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14/03/2014
;We're the best of friends.[oald]
;हम सबसे अच्छे दोस्त हैं
(defrule best5
(declare (salience 5000))
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 friends)
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sabase_acCe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " best.clp	best5  "  ?id "  " ?id1 "  sabase_acCe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14/03/2014
;He was determined not to be bested by his old rival.[oald]
;वह उसके पुराने प्रतिद्वन्दी से परास्त नहीं होने का दृढ निश्चय कर चुका था 
(defrule best6
(declare (salience 5000))
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?kri ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parAswA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  best.clp 	best6   "  ?id " parAswA_ho  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15/03/2014
;He was determined not to be bested by his old rival.[oald]
;वह उसके पुराने प्रतिद्वन्दी से परास्त नहीं होने का दृढ निश्चय कर चुका था 
(defrule best7
(declare (salience 0))
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parAswA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  best.clp 	best7   "  ?id " parAswA_kara  )" crlf))
)

(defrule best0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarvowwama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  best.clp 	best0   "  ?id "  sarvowwama )" crlf))
)

;"best","Adj","1.sarvowwama"
;I don't know the best film of the year.
;
(defrule best1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabase_acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  best.clp 	best1   "  ?id "  sabase_acCA )" crlf))
)

;"best","Adv","1.sabase_acCA"
;I work best in the morning.
;
(defrule best2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarvowwama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  best.clp 	best2   "  ?id "  sarvowwama )" crlf))
)

;"best","N","1.sarvowwama"
;I tried my level best to win the match.
;


;Added by Aditya and Hardik(6.7.13),IIT(BHU)
;This is the color I like best.
(defrule best3
(declare (salience 5000))
(id-root ?id best)
?mng <-(meaning_to_be_decided ?id)
(id-word = (- ?id 1) like)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabase_jyAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  best.clp 	best3   "  ?id "  sabase_jyAxA )" crlf))
)
