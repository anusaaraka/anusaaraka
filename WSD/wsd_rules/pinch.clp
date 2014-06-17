
(defrule pinch0
(declare (salience 5000))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikotI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pinch0   "  ?id "  cikotI )" crlf))
)

;"pinch","N","1.cikotI"
;Mala's one of the bad habit is giving a pinch to others.
;--"2.cutakI_Bara"
;Add a pinch of salt to this dish.
;
(defrule pinch1
(declare (salience 4900))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikotI_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pinch1   "  ?id "  cikotI_kAta )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;A pinch of salt. [Cambridge]
;नमक की चुटकी.
(defrule pinch3
(declare (salience 5500))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cutakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pinch3   "  ?id "  cutakI )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;We can fit ten round the table, at a pinch. [Cambridge]
;हम मुश्किल से दस लोग मेज के चारों अोर बैठ सकते हैं.
(defrule pinch4
(declare (salience 5500))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-at_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muSkila_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pinch4   "  ?id "  muSkila_se )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Pinch the nostrils together between your thumb and finger to stop the bleeding. [OALD]
;लहु बहने से रोकने के लिये अपने अँगूठे अौर उँगली के बीच एक साथ नासिका छिद्र दबाइए. 
(defrule pinch5
(declare (salience 5500))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-between_saMbanXI  ?id ?)(kriyA-upasarga  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pinch5   "  ?id "  xabA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;I was pinched for dangerous driving. [OALD]
;मुझे खतरनाक चालन के लिये गिरफ्तार किया गया था .  
(defrule pinch6
(declare (salience 5500))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id giraPwAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pinch6   "  ?id "  giraPwAra_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;Right, who's pinched my chair? [cambridge]
;ठीक है, मेरी कुर्सी किसने चुराई ?  
(defrule pinch7
(declare (salience 5500))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 chair|pen|pencil|rubber|notebook)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id curA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pinch7   "  ?id "  curA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;When we were first married we had to pinch pennies just to get by. [cambridge]
;जब हमारी शुरू में शादी हुई थी हमें  कम खर्च में गुजारा करना पड़ता था .  
(defrule pinch8
(declare (salience 5500))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 penny)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_Karca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pinch.clp  pinch8  "  ?id "  " ?id1 "  kama_Karca_kara  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;Pinch off the dead flowers. [oald]
;मुरझाए फूलों को तोड़िये .  
(defrule pinch9
(declare (salience 5500))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pinch.clp  pinch9  "  ?id "  " ?id1 "  wodZa  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;We can get six people round this table at a pinch. [oald]
;हम एक बार में छः व्यक्ति मेज़ के चारों ओर बिठा सकते हैं .  
(defrule pinch10
(declare (salience 5500))
(id-root ?id pinch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-at_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_bAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pinch10   "  ?id "  eka_bAra )" crlf))
)
;"pinch","V","1.cikotI_kAtanA"
;Ravi pinched the small babies soft cheeks.
;--"2.cAzpanA"
;The door pinched Ravi's finger as it shut.
;The new sandals pinched me.
;--"3.corI_karanA"
;Robbers pinched off Ravi's money.
;
