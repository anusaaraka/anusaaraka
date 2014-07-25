
(defrule upset0
(declare (salience 5000))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) get)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nArAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset0   "  ?id "  nArAja )" crlf))
)

(defrule upset1
(declare (salience 4900))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZabadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset1   "  ?id "  gadZabadZa )" crlf))
)

;default_sense && category=noun	aswavyaswawA/viparyaya/palata	0
;"upset","N","1.aswavyaswawA/viparyaya/palata"
;His carelessness could have caused an ecological upset
;--"2.GabadZAhata/pareSAnI"
;He was badly bruised by the upset of his sled at a high speed
;
;

;@@@ Added by Prachi Rathore 2-1-14
;Benimadhava Singh was upset.[bade ghar ki beti]
;बेनिमाधव सिंह दुखी था . 
(defrule upset2
(declare (salience 4900))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset2   "  ?id "  xuKI )" crlf))
)

;@@@ Added by Prachi Rathore 2-1-14
;Try not to let him upset you.[oald] 
;उसे आपको दुखी करने का प्रयास  मत करने दीजिए . 
(defrule upset3
(declare (salience 4900))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset3   "  ?id "  xuKI_kara )" crlf))
)


;@@@ Added by Prachi Rathore 2-1-14
;She stood up suddenly, upsetting a glass of wine.[oald]
;वह अचानक वाइन का एक गिलास उल्टा करते हुए खडी हुयी . 
(defrule upset4
(declare (salience 5000))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 glass)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ultA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset4   "  ?id "  ultA_kara )" crlf))
)

;@@@ Added by Prachi Rathore 3-1-14
;I had an upset stomach after eating all those cookies.[m-w]
;वे सब मीठे बिस्कुट खाने के बाद मेरा पेट  खराब था. 
;My stomach was upset and I felt like I might throw up.[m-w]
;मेरा पेट खराब था और मैंने महसूस किया कि मैं उल्टी कर सकता हूँ .  
(defrule upset5
(declare (salience 5000))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-root ?id1 stomach)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset5   "  ?id "  KarAba )" crlf))
)

;@@@ Added by Prachi Rathore 3-1-14
;An emotional upset can affect your physical health.[m-w]
;भावनात्मक परेशानी आपके शारीरिक स्वास्थ्य को प्रभावित कर सकती है . 
(defrule upset6
(declare (salience 5000))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 emotional)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset6   "  ?id "  pareSAnI )" crlf))
)

;@@@ Added by Prachi Rathore 3-1-14
;Spicy food upsets my stomach.[m-w]
;मसालेदार आहार मेरा पेट खराब कर देता है. 
(defrule upset7
(declare (salience 5000))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 stomach)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset7   "  ?id "  KarAba_kara )" crlf))
)



;@@@ Added by Prachi Rathore 3-1-14
;He arrived an hour late and upset all our arrangements.[oald]
;वह एक घण्टा  देरी से पहुँचा और हमारे सब प्रबन्ध गडबड कर दिये . 
(defrule upset8
(declare (salience 5000))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 plan|arrangement)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadabada_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset8   "  ?id "  gadabada_kara_xe )" crlf))
)

;@@@ Added by Prachi Rathore 6-1-14
;The king was very upset.
;राजा अत्यंत दुखी था. 
(defrule upset9
(declare (salience 5000))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upset.clp 	upset9   "  ?id "  xuKI )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_upset6
(declare (salience 5000))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 emotional)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " upset.clp   sub_samA_upset6   "   ?id " pareSAnI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_upset6
(declare (salience 5000))
(id-root ?id upset)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 emotional)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " upset.clp   obj_samA_upset6   "   ?id " pareSAnI )" crlf))
)
