
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14/03/2014
;His leg was getting better.[oald]
;उसका पैर ठीक हो रहा है
(defrule better5
(declare (salience 5000))
(id-word ?id better)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(id-root ?kri get)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?kri TIka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " better.clp	better5  "  ?id "  " ?kri "  TIka_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14/03/2014
;Don't go back to work until you are better.[oald]
;काम पर वापस मत जाओ जब तक तुम ठीक नहीं हो जाते
(defrule better6
(declare (salience 5000))
(id-word ?id better)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?sub ?id)
(kriyA-vAkya_viBakwi  ?kri ?id1)
(kriyA-subject  ?kri  ?sub)
(id-word ?id1 until)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?kri TIka_nahIM_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " better.clp	better6  "  ?id "  " ?kri "  TIka_nahIM_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14/03/2014
;Sound travels better in water than in air.[oald]
;ध्वनि  हवा की तुलना में पानी में ज्यादा अच्छे से यात्रा करती है . 
(defrule better7
(declare (salience 5000))
(id-word ?id better)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(kriyA-in_saMbanXI  ?kri ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyAxA_acCe_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp    better7   "  ?id "  jyAxA_acCe_se )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14/03/2014
;You'll like her when you know her better.[oald]
;आप उसको ज्यादा पसंद करेगें जब आप उसको और ज्यादा/ जानेगे
;There's nothing I'd like better! [oald]
;ऐसा कुछ भी नहीं है जो मुझे और ज्यादा/अधिक पसंद आये
(defrule better8
(declare (salience 5000))
(id-word ?id better)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(id-word ?kri know|like)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_jyAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp    better8   "  ?id "  Ora_jyAxA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 14/03/2014
;Fit people are better able to cope with stress.[oald]
;तंदरुस्त लोग मानसिक तनाव से निपटने में ज्यादा समर्थ होते हैं
(defrule better9
(declare (salience 5000))
(id-word ?id better)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id1 ?id)
(id-word ?id1 able)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp    better9   "  ?id "  jyAxA )" crlf))
)


;$$$ Modified by Garima Singh(M.Tech-C.S, BanasthaliVidyapith) 14/03/2014
;Added by Meena(25.02.10)
;Certain phenomena can be approached better by certain techniques.
(defrule better0
(declare (salience 4900))
(id-word ?id better);added by Garima Singh
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
(id-root ?id1 approach);added by Garima Singh
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behawara_warIke_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp    better0   "  ?id "  behawara_warIke_se )" crlf))
)



;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15/03/2014
;changed 'id-root' to 'id-word'
;Modified by Meena(25.02.10)
(defrule better1
(declare (salience 0))
;(declare (salience 4900))
(id-word ?id better)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behawara_warIke_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp 	better1   "  ?id "  behawara_warIke_se )" crlf))
)

;"better","Adv","1.behawara_warIke_se"
;The better I know him,the more I admire him.
;



;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15/03/2014
;changed 'id-root' to 'id-word'
;Modified by Meena(25.02.10)
(defrule better2
(declare (salience 0))
;(declare (salience 5000))
(id-word ?id better)
?mng <-(meaning_to_be_decided ?id)
(or (id-cat ?id adjective|adjective_comparative|adjective_superlative) (id-cat_coarse ?id adjective)) ;Added cat_coarse fact by Roja for sd-pipeline
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behawara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp    better2   "  ?id "  behawara )" crlf))
)

;"better","Adj","1.behawara"
;I wish you a better luck next time!
;



;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15/03/2014
;changed 'id-root' to 'id-word'
(defrule better3
(declare (salience 0));salience reduced by Garima Singh
(id-word ?id better)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_yogya_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp 	better3   "  ?id "  Ora_yogya_vyakwi )" crlf))
)

;"better","N","1.Ora_yogya_vyakwi"
;I expected better of him.
;





;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15/03/2014
;changed 'id-root' to 'id-word'
(defrule better4
(declare (salience 0));salience reduced by Garima Singh
(id-word ?id better)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behawara_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp 	better4   "  ?id "  behawara_banA )" crlf))
)

;"better","V","1.behawara_banAnA"
;Sergei Bubka's record cannot be bettered.
;


;*******************EXAMPLES**************************

;We're hoping for better weather tomorrow.
;Her work is getting better and better.
;He is in a much better mood than usual.
;The meal couldn't have been better.
;There's nothing better than a long soak in a hot bath.
;If you can only exercise once a week, that's better than nothing.
;She's far better at science than her brother.
;Can you think of a better word than ‘nice’?
;It would be better for him to talk to his parents about his problems.
;She's a lot better today.
;His leg was getting better.
;You'll feel all the better for a good night's sleep.
;Don't go back to work until you are better.
;She sings much better than I do.
;Sound travels better in water than in air.
;People are better educated now.
;You'll like her when you know her better.
;There's nothing I'd like better!
;Fit people are better able to cope with stress.
;The money could be better spent on more urgent cases.
;Some things are better left unsaid.
;You'd do better to tell her everything before she finds out from someone else.
;She's better off without him.
;The weather was so bad we'd have been better off staying at home.
;You'd better go to the doctor about your cough.
;We'd better leave now or we'll miss the bus.
;You'd better not do that again.
 
