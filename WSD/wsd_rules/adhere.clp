
;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;added 'kriyA-to_saMbanXI' relation and saMbanXI as commitment and modified the meaning 'xqDZa_raha' as 'para_xqDZa_raha'
;Removed 'kriyA-upasarga' and 'kriyA-object' relations 
;She adheres to her commitments.
;वह उसकी प्रतिबद्धताओं पर दृढ़ रहती है
;vaha apanI vacana baxXawA para xqDZa rahawI hE
(defrule adhere1
(declare (salience 5500));salience kept higher than rule2
(id-root ?id adhere)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1);added by Garima Singh
(id-root ?id1 commitment);added by Garima Singh
(id-word ?id2 to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 para_xqDZa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " adhere.clp	adhere1  "  ?id "  " ?id2 "  para_xqDZa_raha  )" crlf))
)
;note:above rule was not correct as the conditions do not match with the example given above for this rule.


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;For ten months he adhered to a strict no-fat low-salt diet.[oald]
;दस महीनों तक उसने एक कडक बिना वसा बिना कम नमक वाले आहार का पालन किया .
(defrule adhere2
(declare (salience 5000))
(id-root ?id adhere)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adhere.clp 	adhere2   "  ?id "  pAlana_kara )" crlf)
)
)
 

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;What he had said when he was young, he adhered to at the age of 59.[oald]
;युवावस्था में उन्होंने जो बात कही थी उस पर वे 59 वर्ष की आयु तक डटे रहे।
(defrule adhere3
(declare (salience 5000))
(id-root ?id adhere)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id ?id1)
(id-root ?id1 say)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id date_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adhere.clp 	adhere3   "  ?id "  date_raha )" crlf))
)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;Once in the bloodstream, the bacteria adhere to the surface of the red cells.[oald]
;रक्तप्रवाह में एक बार ,जीवाणु लाल कोशिकाओं की सतह पर चिपकते हैं 
(defrule adhere4
(declare (salience 5000))
(id-root ?id adhere)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1 surface|feather)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adhere.clp 	adhere4   "  ?id "  cipaka )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;Clean the surface first, or the paint will not adhere.[oald]
;पहले सतह को साफ करो अथवा रङ्ग चिपकेगा नहीं  
(defrule adhere5
(declare (salience 5000))
(id-root ?id adhere)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-root ?sub paint|oil)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adhere.clp 	adhere5   "  ?id "  cipaka )" crlf)
)
)




;*************************DEFAULT RULES********************************

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)20-jan-2014
;The diet will work if it is adhered to.[oald]
;आहार काम करेगा यदि इसका अनुपालन किया जाय . 
(defrule adhere0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id adhere)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anupAlana_kara));meaning changed from 'anusaraNa_kara' to 'anupAlana_kara' by Garima Singh.suggested by Vineet Sir
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adhere.clp 	adhere0   "  ?id "  anupAlana_kara )" crlf))
)

;default_sense && category=verb	pAlana_kara	
;"adhere","V","1.pAlana_karanA"
;You must adhere to the rules specified.
;--"2.cipakanA"
;An electrically charged balloon will adhere to the walls of a room.
;

;*********************************EXAMPLES*********************************

;She adheres to her commitments.[oald]
;What he had said when he was young, he adhered to at the age of 59.[oald]
;For ten months he adhered to a strict no-fat low-salt diet.[oald]
;She adheres to teaching methods she learned over 30 years ago.[oald]
;Staff should adhere strictly to the safety guidelines.[oald]
;The diet will work if it is adhered to.[oald]
;You must adhere to the rules specified.[old example]
;Once in the bloodstream, the bacteria adhere to the surface of the red cells.[oald]
;Clean the surface first, or the paint will not adhere.[oald]
;There was oil adhering to the bird's feathers.[oald]
