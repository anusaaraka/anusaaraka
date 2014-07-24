
;Added by Meena(19.02.10)
;There must be another sort of rules according to which sentences are composed .
;(defrule another00
;(declare (salience 5000))
;(id-root ?id another)
;?mng <-(meaning_to_be_decided ?id)
;(viSeRya-of_saMbanXI  ?id1 ?id2)
;;(id-root ?id1 sort|room|matter)
;(viSeRya-det_viSeRaNa  ?id1 ?id)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id xUsarA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp   another00   "  ?id "  xUsarA )" crlf))
;)

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-jan-2014
;Would you like another drink?[oald]
;क्या आप एक और पेय या शरबत लेना पसंद करेंगे
;Added by Meena(19.02.10)
;There must be another sort of rules according to which sentences are composed .
(defrule another0
(declare (salience 4000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_Ora)); modified by Garima Singh.meaning changed from 'xUsarA' to 'eka_Ora'
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp   another0   "  ?id "  eka_Ora )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-jan-2014
;After fasting and praying for another three days, the King went to his court again.[gyananidhi]
;और तीन दिन का उपवास और प्रार्थना करने के बाद राजा सिंहासन की ओर बढ़ा।
(defrule another3
(declare (salience 5000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
(viSeRya-saMKyA_viSeRaNa  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp   another3   "  ?id "  Ora )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-jan-2014
;Let's do it another time.[oald]
;चलिये हम इसको किसी और समय करते है . 
(defrule another4
(declare (salience 5000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
(id-word ?id1 time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp   another4   "  ?id "  kisI_Ora )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-jan-2014
;I'm going to ask for another.[oald]
;मैं दूसरे के लिये पूछने जा रहा हूँ 
(defrule another5
(declare (salience 5000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?kri ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp   another5   "  ?id "  xUsarA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22/03/2014
;Although the number of physical quantities appears to be very large we need only a limited number of units for expressing all the physical quantities since they are inter-related with one another.[oald]
;यद्यपि हमारे द्वारा मापी जाने वाली भौतिक राशियों की सङ्ख्या बहुत अधिक है, फिर भी, हमें इन सब भौतिक राशियों को व्यक्त करने के लिए, मात्रकों की सीमित सङ्ख्या की ही आवश्यकता होती है, क्योङ्कि, ये राशियाँ एक दूसरे से परस्पर सम्बन्धित हैं.
(defrule another6
(declare (salience 5000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?kri ?id1)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?kri inter-related)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 eka_xUsare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng   " ?*wsd_dir* " another.clp   another6  "  ?id "  " ?id1 "  eka_xUsare )" crlf))
)

;********************DEFAULT RULES**********************************
;Salience reduced by Meena(19.02.10)
(defrule another1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp   another1   "  ?id "  eka_Ora )" crlf))
)




;"another","Adj","1.eka_Ora/xUsarA"
;Would you like to have another cup of tea?
;Take this book && bring another one.
;


;Salience reduced by Meena(19.02.10)
(defrule another2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp 	another2   "  ?id "  eka_Ora )" crlf))
)

;"another","Det","1.eka_Ora"

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_another6
(declare (salience 5000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?kri ?id1)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?kri inter-related)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 eka_xUsare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng " ?*wsd_dir* " another.clp   sub_samA_another6   "   ?id " " ?id1 " eka_xUsare )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_another6
(declare (salience 5000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?kri ?id1)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?kri inter-related)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 eka_xUsare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng " ?*wsd_dir* " another.clp   obj_samA_another6   "   ?id " " ?id1 " eka_xUsare )" crlf))
)
