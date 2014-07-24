;@@@ Added by Anita-2.1.2014
;On cold mornings the car always refuses to start. [cambridge dictionary]
;हमेशा ठंड में सुबह के समय कार शुरू नहीं होती है ।
(defrule refuse1
(declare (salience 1000))
(id-root ?id refuse)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?)
(kriyA-subject  ?id ?id1)
(id-root ?id1  ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nahIM_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refuse.clp 	refuse1   "  ?id "  nahIM_ho )" crlf))
)

;@@@ Added by Anita-2.1.2014
;The authorities refused permission for the new housing development. [cambridge dictionary]
;अधिकारियों ने नये गृह विकास की अनुमति नहीं दी  ।
;The local council refused him planning permission to build an extra bedroom. [Oxford dictionary]
;स्थानीय कौसिल ने एक और बेडरूम बनाने के लिए उसे अनुमति नहीं दी ।
(defrule refuse2
(declare (salience 2600))
(id-root ?id refuse)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1) 
(id-root ?id1  ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nahIM_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refuse.clp 	refuse2   "  ?id "  nahIM_xe )" crlf))
)

;@@@ Added by Anita-2.1.2014
;He is in trouble but he has refused all my offers of help. [cambridge dictionary]
;वह मुश्किल में है पर उसने मेरे से  कोई भी सहायता लेने से इंकार कर दिया .
(defrule refuse4
(declare (salience 2700))
(id-root ?id refuse)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?)
(kriyA-of_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refuse.clp 	refuse4   "  ?id "  iMkAra_kara )" crlf))
)

;@@@ Added by Anita-2.1.2014
;I politely refused their invitation. [Oxford dictionary]
;मैंने नम्रता से उसके निमंत्रण को अस्वीकार कर दिया । 
(defrule refuse5
(declare (salience 3100))
(id-root ?id refuse)
?mng<-(meaning_to_be_decided ?id)
(or (and (kriyA-kriyA_viSeRaNa  ?id ?id1)(id-root ?id1  politely))(kriyA-for_saMbanXI ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refuse.clp 	refuse5   "  ?id "  asvIkAra_kara )" crlf))
)

;@@@ Added by Anita-2.1.2014
;She would never refuse her kids anything. [Oxford dictionary]
;वह अपने बच्चों को कभी किसी भी चीज़ के लिए न नहीं करेगी ।
(defrule refuse6
(declare (salience 3000))
(id-root ?id refuse)
?mng<-(meaning_to_be_decided ?id)
(id-root ?id1 anything)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id na_nahIM_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refuse.clp 	refuse6   "  ?id "  na_kara )" crlf))
)

;To be translation
;----------------
;The job offer was simply too good to refuse.
;नौकरी का प्रस्ताव वास्तव में इतना अच्छा था कि मना नहीं किया जा सकता था ।

;#################################### Default rule ######################################
;Old clp rule
;"refuse","N","1.walaCata"
;Town refuse is dumped outside the town.
;शहर का तलछट शहर के बाहर फेंका गया है ।    
(defrule refuse_default-Nrule
(id-root ?id refuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walaCata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refuse.clp 	refuse_default-Nrule   "  ?id "  walaCata )" crlf))
)
;Old clp rule
;"refuse","VT","1.asvIkAra_karanA"
;I refused to lend him extra money.
;मैंने उसको अतिरिक्त पैसा उधार देने से मना कर दिया ।
(defrule refuse_default_Vrule
(declare (salience 100))
(id-root ?id refuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manA_kara));('asvIkAra_kara' is changed with 'manA_kara' by sheetal(29-09-09).)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refuse.clp 	refuse_default_Vrule   "  ?id "  manA_kara )" crlf));inconsistency in the mng in assert & print statement has been corrected by Sukhada (15.3.10)
)
