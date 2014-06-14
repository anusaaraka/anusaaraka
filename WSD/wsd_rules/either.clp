
;Either we go now or we remain here forever.     ;free dictionary
;या तो हम जा सकते हैं या हमेशा के लिए यहाँ रह सकते हैं.
;Either Ram or Shyam can go.		;
;राम और श्याम में से कोई एक जा सकता है.  
(defrule either0
(declare (salience 5000))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 or)
(id-cat_coarse ?id1 conjunction)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yA_wo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either0   "  ?id " yA_wo  )" crlf))
)


;If q and q are of the same sign ([either] both positive or both negative), F is along, which denotes repulsion, as 
;it should be for like charges.
;यदि q तथा q समान चिह्न के हैं ( या तो दोनों ही धनात्मक अथवा दोनों ही ऋणात्मक हैं ) तब f , के अनुदिश है , जो प्रतिकर्षण को प्रदर्शित करता है जैसा सजातीय आवेशों के लिए होना ही चाहिए . 
;You may have either cheese or a sweet.		;free dictionary
;तुम या तो पनीर या मिठाई ले सकते हो.
;There had been no indication of either breathlessness or any loss of mental faculties right until 
;his death.	;mycobuild.com		;
 ;उसकी मृत्यु तक मानसिक संकायों के किसी नुकसान का या सांस लेने में तकलीफ का कोई संकेत नहीं था.
(defrule either1
(declare (salience 5000))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 or)
(id-cat_coarse ?id1 conjunction)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yA_wo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either1   "  ?id " yA_wo  )" crlf))
)

;The former President was demanding that he should be either put on trial or set free.	;mycobuild.com
;पूर्व राष्ट्रपति ने मांग की कि उसे या तो जाँच के लिए रखा जाए या मुक्त कर दिया जाए.
(defrule either2
(declare (salience 5000))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 or)
(id-cat_coarse ?id1 conjunction)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yA_wo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either2   "  ?id " yA_wo  )" crlf))
)

;Keep either of the photos.[कोई-एक] ;cfilt.iitb.ac.in
;कोई भी एक फोटो रखो.
;You may borrow either of these books.		;free dictionary	;
;तुम इन पुस्तको में से कोई भी एक ले सकते हो.


(defrule either3
(declare (salience 4900))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI_ek))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either3   "  ?id " koI_BI_ek  )" crlf))
)

;There were glasses of champagne and cigars, but not many of either were consumed.	;mycobuild.com		;
;वहाँ शराब और सिगार के गिलास थे परन्तु उनमें से कोई भी उपयोग नहीं किया गया.
(defrule either4
(declare (salience 4900))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either4   "  ?id " koI_BI  )" crlf))
)

;Wear either coat.	;free dictionary	;
;कोई सा भी कोट पहन लो.
;He can write with either hand.		;free dictionary	;
;वह कोई से भी हाथ से लिख सकता है.
(defrule either5
(declare (salience 4800))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_sA_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either5   "  ?id " koI_sA_BI  )" crlf))
)

;Either way he wins.	;free dictionary	;
;किसी भी तरीके से वह जीत सकता है.
(defrule either6
(declare (salience 4900))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either6   "  ?id " kisI_BI  )" crlf))
)

;There were ladies at either end of the table.	;free dictionary	;
;मेज के दोनो कोनों पर महिलाएँ थी.
;There are trees on either side of the river.	;free dictionary
;नदी के दोनो तरफ पेड है.
;The basketball nets hung down from the ceiling at either end of the gymnasium.
;बास्केटबॉल जाल व्यायामशाला के दोनों छोर पर छत से नीचे लटका दिया.
(defrule either7
(declare (salience 4950))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xono))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either7   "  ?id " xono  )" crlf))
)

;I don't particularly agree with either group.	;mycobuild.com		;
;मैं  किसी भी समूह के साथ विशेष रूप से सहमत नहीं हूँ.
;He sometimes couldn't remember either man's name.		;
;उसे कभी कभी तो किसी भी आदमी का नाम याद नहीं रहता.
(defrule either8
(declare (salience 4970))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(niReXawmaka_vAkya)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either8   "  ?id " kisI_BI  )" crlf))
)


(defrule either10
(declare (salience 4500))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either10   "  ?id " BI  )" crlf))
)

;--------------------------------------------default rules----------------------------------


;I won't go and Peter won't either. [भी]    ;cfilt.iitb.ac.in
;मैं नहीं जाऊँगा और पीटर भी नहीं जाएगा.
;He isnt stupid, but he isnt exactly a genius either.[दो में से कोई-एक]  ;hinkhoz
;वह मूर्ख नहीं है परन्तु वह वह वास्तव में एक जीनियस भी नहीं है.     [भी]
;I used to sing, and I hadn't a bad voice, either.	;free dictionary
;मैं गाना गाता था और मेरी आवाज भी बुरी नहीं थी.
;He did not even say anything to her, and she did not speak to him either.	;free dictionary
;राम ने सीता से कुछ भी नहीं कहा, और सीता ने राम से बात  भी नहीं की.
;Don't agree, but don't argue either.	;free dictionary
;सहमत नहीं हो, लेकिन बहस भी मत करो.
(defrule either9
(declare (salience 4500))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either9   "  ?id " BI  )" crlf))
)


;If you don't go, I won't either.		;free dictionary
;यदि तुम नहीं जाओगे तो मैं भी नहीं जाऊँगा.
(defrule either12
(declare (salience 4500))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either12   "  ?id " BI  )" crlf))
)


(defrule either11
(declare (salience 4000))
(id-root ?id either)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yA_wo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  either.clp 	either11   "  ?id " yA_wo  )" crlf))
)
