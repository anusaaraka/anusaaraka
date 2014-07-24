;@@@ Added by Anita-8.1.2014 
;"repeat","N","1.xuharAva"
;There is nothing except repeats on television these days. {cambridge dictionary -Change in sentence -;instead of 'but' i have put 'except']
(defrule repeat0
(declare (salience 4650))
(id-root ?id repeat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-except_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuharAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repeat.clp 	repeat0   "  ?id "  xuharAva )" crlf))
)

;@@@ Added by Anita-8.1.2014
;Would you mind repeating what you just said? [Cambridge Dictionary]
;क्या तुमने जो अभी कहा उसे दोबारा कहोगी ?(दोहरओगें )
(defrule repeat1
(declare (salience 4900))
(id-root ?id repeat)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-vAkyakarma  ?id ?)(kriyA-vAkya_viBakwi  ?id ?)(kriyA-kqxanwa_karma  ? ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repeat.clp 	repeat1   "  ?id "  xoharA )" crlf))
)

;
;"repeat","VT","1.xoharAnA"
;Repeat the tables ten times.
;History repeats itself.  
;--"2.xubArA_AnA"
;The programme is repeated on Wednesday at 9p.m. 
;
;@@@ Added by Anita-8.1.2014
;This is an offer never to be repeated. [Cambridge Dictionary]
;यह सस्ती बिक्री फिर कभी नहीं दोहराई जाएगी .
(defrule repeat2
(declare (salience 4750))
(id-root ?id repeat)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repeat.clp 	repeat2   "  ?id "  xoharA_jA )" crlf))
)

;@@@ Added by Anita-8.1.2014
;Cucumber always repeats on me. [Cambridge Dictionary]
;खीरे का स्वाद फिर से मुँह में आ गया .  
(defrule repeat3
(declare (salience 4800))
(id-root ?id repeat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?)
(id-root =(+ ?id 1) on)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  =(+ ?id 1) svAxa_mzuha_meM_xubArA_A_jA))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  repeat.clp 	repeat5   "  ?id " " (+ ?id 1)  "  svAxa_mzuha_meM_xubArA_A_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  repeat.clp  repeat3   "  ?id " kA )" crlf)
)
)
;#######################################defaultrule###################################
;"repeat","V","1.xoharA"
(defrule repeat_default_Vrule
(declare (salience 100))
(id-root ?id repeat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repeat.clp 	repeat_default_Vrule   "  ?id "  xoharA )" crlf))
)

;$$$ Modified by Anita-8.1.2014 ; changed meaning from 'xuharAva' to 'punarprasAraMa'
;There will be a repeat of Prime Minister's speech tomorrow on radio. [Cambridge Dictionary]
;कल रेडियो पर प्रधानमंत्री के भाषण का पुनर्प्रसारण होगा ।
(defrule repeat_default_Nrule
(declare (salience 100))
(id-root ?id repeat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punarprasAraMa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repeat.clp 	repeat_default_Nrule   "  ?id "  punarprasAraMa )" crlf))
)
