;@@@ Added by Shirisha Manju 29-4-14 Suggested by Chaitanya Sir
;The contribution of women in society is the highest.
;samAja meM swriyoM kA yogaxAna sabase aXika hE.
(defrule high00
(declare (salience 5000))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 contribution)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp      high00   "  ?id "  - )" crlf))
)


;$$$ Modified by Prachi Rathore(21-10-13)
;Meaning changed from aXika to UzcA and also salience is reduced.
 
;Modified by Meena(3.3.11) ; added (viSeRya-viSeRaNa ?id1 ?id) and deleted (samAsa_viSeRya-samAsa_viSeRaNa ?id2 ?id)
;Added by Meena(4.12.09)
;High income taxes are important .
;A high building.[CAMBRIDGE learnersdictionary]
;एक ऊँची इमारत . 
(defrule high0
(declare (salience 4700))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(or (samAsa_viSeRya-samAsa_viSeRaNa ?id2 ?id1)(viSeRya-viSeRaNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp      high0   "  ?id "  UzcA )" crlf))
)


;Added by Meena
;It is high time we updated our thinking on women 's issues .
(defrule high4
(declare (salience 5000))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(id-root =(+ ?id 1) time|noon)
(viSeRya-viSeRaNa  =(+ ?id 1)  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp    high4   "  ?id "  TIka )" crlf))
)



;@@@ Added by Prachi Rathore(21-10-13)
;Avoid foods that are high in salt.[CAMBRIDGE learnersdictionary]
;आहार को टालिए जिनमें नमक ज्यादा हैं . 
(defrule high5
(declare (salience 5000))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-in_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high5   "  ?id "  jyAxA )" crlf))
)

;@@@ Added by Prachi Rathore(21-10-13)
;The whole band seemed to be high on heroin.[CAMBRIDGE learnersdictionary]
;पूरा बैंड मादक पदार्थ पर धुत प्रतीत  होता है .
(defrule high6
(declare (salience 5000))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-on_saMbanXI ?id ?id1)
(id-root ?id1 heroin|cocain|drink|drug)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high6   "  ?id "  Xuwa )" crlf))
)

;@@@ Added by Prachi Rathore(21-10-13)
;The coach is very high on this new player. [M-W learnersdictionary]
;प्रशिक्षक इस नये खिलाडी पर अत्यन्त उतेजित है . 
(defrule high7
(declare (salience 4900))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-on_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwejiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high7   "  ?id "  uwejiwa )" crlf))
)

;@@@ Added by Prachi Rathore
;The ball looped high up in the air.[oald]
;गोले ने वायु मेँ ऊँचाई पर फन्दा बनाया . 
(defrule high8
(declare (salience 5000))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?id1 ?id)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 UzcAI_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " high.clp	high8  "  ?id "  " ?id1 " UzcAI_para  )" crlf))
)


;@@@ Added by Prachi Rathore[19-2-14]
;High income taxes are important .
;अधीक आय कर महत्त्वपूर्ण हैं . 
(defrule high9
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 tax|price|workload|load)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high9   "  ?id "  aXika )" crlf))
)

;@@@ Added by Sukhada[17-4-14]
;The income taxes are high .
;Aya kara aXika hE. 
;The workload is very high. 
;kAma_kA boJa bahuwa aXika hE.
(defrule high9s
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 tax|price|workload|load)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp     high9s   "  ?id "  aXika )" crlf))
)


;@@@ Added by Prachi Rathore[19-2-14]
;She got very high marks in her geography exam.[cambridge]
;उसने उसकी भूगोल परीक्षा में बहुत अच्छे अङ्क प्राप्त किये है. 
(defrule high10
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 mark)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high10   "  ?id "  acCA )" crlf))
)

;@@@ Added by Prachi Rathore[19-2-14]
;She demands very high standards from the people who work for her.[cambridge]
;वह लोगों से बहुत उच्च कोटी के स्तर की माँग करती है जो उसके लिये काम करते हैं . 
(defrule high11
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 standard)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca_kotI_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high11   "  ?id "  ucca_kotI_kA )" crlf))
)

;@@@ Added by Prachi Rathore[19-2-14]
;This meat is rather high - shall I throw it out?[cambridge]
;यह माँस काफी बदबूदार- क्या मैं इसे बाहर फेंक दूँ? 
(defrule high12
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 meat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxabUxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high12   "  ?id "  baxabUxAra )" crlf))
)

;@@@ Added by Prachi Rathore[19-2-14]
;High winds caused delays on the ferries.[cambridge]
;प्रचंड हवाएँ बडी नावों के विलम्ब का कारण हुईं . 
(defrule high13
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 wind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracaMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high13   "  ?id "  pracaMda )" crlf))
)

;@@@ Added by Prachi Rathore[19-2-14]
;A high proportion of our staff are female.[oald]
;हमारे कर्मचारियों का एक बडा हिस्सा स्त्रियाँ हैं .  
(defrule high14
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 proportion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high14   "  ?id "  badA )" crlf))
)

;@@@ Added by Prachi Rathore[6-3-14]
;He is listening music on high volume. [verified sentence]
 ;वह तेज आवाज पर सङ्गीत सुन रहा है . 
(defrule high15
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 volume)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high15   "  ?id "  weja )" crlf))
)

;----------------------------------- Default rules ----------------------------------
;Salience reduced by Meena(4.12.09)
(defrule high1
(declare (salience 0))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp     high1   "  ?id "  UzcA )" crlf))
)

; Changed from paxa_meM_UzcA to UzcA : Amba
;"high","Adj","1.paxa_meM_UzcA"
;jilAXISa kA paxa jile meM sabase'high' howA hE.
;
(defrule high2
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcAI_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp     high2   "  ?id "  UzcAI_para )" crlf))
)

;"high","Adv","1.UzcAI_para"
;bADZa se bacane ke liye loga'high' Gara banAwe hE'

;Salience reduced by Meena(3.12.09)
(defrule high3
(declare (salience 0))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcA_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp     high3   "  ?id "  UzcA_sWAna )" crlf))
)

;"high","N","1.UzcA_sWAna"
;Sera bAjAra Ajakala'high' nahIM hE.

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_high9
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 tax|price|workload|load)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   sub_samA_high9   "   ?id " aXika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_high9
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 tax|price|workload|load)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   obj_samA_high9   "   ?id " aXika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_high10
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mark)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   sub_samA_high10   "   ?id " acCA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_high10
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mark)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   obj_samA_high10   "   ?id " acCA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_high11
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 standard)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca_kotI_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   sub_samA_high11   "   ?id " ucca_kotI_kA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_high11
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 standard)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca_kotI_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   obj_samA_high11   "   ?id " ucca_kotI_kA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_high13
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 wind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracaMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   sub_samA_high13   "   ?id " pracaMda )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_high13
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 wind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracaMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   obj_samA_high13   "   ?id " pracaMda )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_high14
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 proportion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   sub_samA_high14   "   ?id " badA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_high14
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 proportion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   obj_samA_high14   "   ?id " badA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_high15
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 volume)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   sub_samA_high15   "   ?id " weja )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_high15
(declare (salience 5050))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 volume)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " high.clp   obj_samA_high15   "   ?id " weja )" crlf))
)
