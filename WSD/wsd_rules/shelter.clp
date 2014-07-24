;$$$ modified by jagriti(9.1.2014).... added 'give' in the list
;I gave shelter to a puppy.
;मैंने पिल्ले को आश्रय दिया . 
(defrule shelter0
(declare (salience 5000))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 take|give)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASraya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter0   "  ?id "  ASraya )" crlf))
)

;@@@ Added by jagriti(9.1.2014)
;They built a rough shelter from the old pieces of wood and cardboard.[oald] 
;उन्होंने लकडी और गत्ते के पुराने टुकडों से एक शरण स्थल बनाया . 
;They opened a shelter to provide temporary housing for the city's homeless.[cambridge dictionary]
;उन्होंने शहर के बेघर लेगों को अस्थायी घर देने के लिये शरण स्थल खोला .
(defrule shelter1
(declare (salience 4900))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 build|open)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SaraNa_sWala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter1   "  ?id "  SaraNa_sWala )" crlf))
)

;@@@ Added by jagriti(9.1.2014)
;A group of us were sheltering from the rain under the trees.[cambridge dict]
;हम में से एक समूह  पेड़ के नीचे बारिश से बच रहा था.
(defrule shelter2
(declare (salience 4800))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI ?id ?)
(not(kriyA-object ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter2   "  ?id "  baca )" crlf))
)

;@@@ Added by jagriti(9.1.2014)
;he sheltered her from the danger .
;उसने उसे खतरे से बचाया. 
(defrule shelter3
(declare (salience 4700))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter3   "  ?id "  bacA )" crlf))
)

;@@@ Added by jagriti(9.1.2014)
;In the storm people were sheltering in the doors .
;तूफान में लोग दरवाजों में शरण ले रहे थे . 
(defrule shelter4
(declare (salience 4600))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SaraNa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter4   "  ?id " SaraNa_le )" crlf))
)

;@@@ Added by jagriti(9.1.2014)
;These plants will grow well in a sheltered position.
;ये वनस्पतियाँ एक छायादार स्थान में अच्छी तरह बढेंगी . 
(defrule shelter5
(declare (salience 4500))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 spot|position)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyAxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter5   "  ?id " CAyAxAra )" crlf))
)

;....Default Rule...

(defrule shelter6
(declare (salience 100))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surakRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter6   "  ?id "  surakRA )" crlf))
)

;@@@ Added by jagriti(9.1.2014)
;They are helping the poor and sheltering the homeless.
;वे दीनों की सहायता कर रहे हैं और बेघरों को शरण दे रहे हैं . 
(defrule shelter7
(declare (salience 100))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SaraNa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter7   "  ?id "  SaraNa_xe )" crlf))
)
;@@@ Added by jagriti(9.1.2014)
;He had a very sheltered childhood.[oald]
;उसका बहुत ही सुरक्षित बचपन था.
(defrule shelter8
(declare (salience 100))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surakRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelter.clp 	shelter8   "  ?id "  surakRiwa )" crlf))
)



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_shelter5
(declare (salience 4500))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 spot|position)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyAxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shelter.clp   sub_samA_shelter5   "   ?id " CAyAxAra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_shelter5
(declare (salience 4500))
(id-root ?id shelter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 spot|position)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyAxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shelter.clp   obj_samA_shelter5   "   ?id " CAyAxAra )" crlf))
)
