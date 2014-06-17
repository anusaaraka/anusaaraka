;Added by Sukhada. (8-2-13)
;Ex. What is the probability of tossing a fair coin twice in a row and getting heads both times? 
;She has been voted Best Actress three years in a row.
(defrule toss_in_a_row
(declare (salience 5000))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 toss|vote); $$$ Added vote in the list by Anita 
(id-word =(- ?id 2) in)
(kriyA-in_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 2)  lagAwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " row.clp	toss_in_a_row "  ?id "  " (- ?id 2) " lagAwAra)   )" crlf))
)

;"row","N","1.JagadZA"
;They had a row again.
; उन्होंने फिर से झगड़ा किया ।
(defrule row0
(declare (salience 3000))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  row.clp 	row0   "  ?id "  JagadZA )" crlf))
)
;"row","VT","1.KenA"
;@@@ Added by Anita
;He rowed us across the hussain sagar lake.
(defrule row1
(declare (salience 4600))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 lake)
(kriyA-across_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkA_meM_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  row.clp 	row1   "  ?id "  nOkA_meM_le_jA )" crlf))
)

;--"2.paMkwi"
;$$$ Modified by Anita-6.12.2013
;She has arranged all her books in rows. 
;उसने अपनी सारी पुस्तकों को पँक्ति में रखा ।
;The machine punches a row of holes in the metal sheet.
;मशीन धातु की चद्दर पर छेदों को एक पँक्ति में करती है ।  
(defrule row2
(declare (salience 4500))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-in_saMbanXI ? ?id)(viSeRya-of_saMbanXI ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMkwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  row.clp 	row2   "  ?id " paMkwi )" crlf))
)
;They've gone for a row to the island.
;वे नौका विहार के लिए आईलैंड जा चुके हैं ।
;@@@ Added by Anita-6.12.2013
(defrule row3
(declare (salience 4550))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkA_vihAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  row.clp 	row3   "  ?id " nOkA_vihAra )" crlf))
)

;--"2.JagadZanA"
;@@@ Added by Anita-6.12.2013
;She has being rowing again over money with her husband. (old clp sentence)
;वह अपने पति के साथ पैसों के फिर से झगड़ा कर रही है ।
;My parents are always rowing about money. (parser problem)
;मेरे माता-पिता पैसों के लिए हमेशा झगड़ा करते रहते हैं ।
(defrule row4
(declare (salience 4900))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 money)
(or(kriyA-with_saMbanXI  ?id ?)(subject-subject_samAnAXikaraNa  ? ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  row.clp 	row1   "  ?id "  JagadZa_kara)" crlf))
)

;@@@ Added by Anita-6.12.2013
;The wind dropped, so we had to row back home. [cambridge dictionary]
;हवा मन्द हो गई थी , इसलिए हमें नौका घर की ओर वापस खेनी पड़ी ।
(defrule row5
(declare (salience 4650))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 back)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkA_vApasa_Ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  row.clp 	row5   "  ?id "  nOkA_vApasa_Ke )" crlf))
)

(defrule row_default_verb_rule
;(declare (salience 4900))
(id-root ?id row)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  row.clp 	row1   "  ?id "  Ke )" crlf))
)
;"row","VT","1.KenA"
;He rowed us across the hussain sagar lake.
;--"2.JagadZanA"
;She's being rowing again over money with her husband.
;
