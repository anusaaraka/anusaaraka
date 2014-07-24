
(defrule into0
(declare (salience 5000))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) integer|whole number|number )
(id-word =(+ ?id 1) integer|whole number|number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into0   "  ?id "  guNA )" crlf))
)

(defrule into1
(declare (salience 4900))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) inquiry)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into1   "  ?id "  kI )" crlf))
)

(defrule into2
(declare (salience 4800))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) custody|business|human|coins|consideration) ; Added coins in the list by Aditya and Hardik, IIT(BHU)
; $$$ Added consideration in the list by Prachi Rathore[03-12-13]
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into2   "  ?id "  meM )" crlf))
)

(defrule into3
(declare (salience 4700))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_aMxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into3   "  ?id "  ke_aMxara )" crlf))
)

;"into","Prep","1.aMxara_ko"
;You come into the house.
;--"2.guNiwa_karane_para"
;5 into 1.is fifty.
;

;@@@ Added by Prachi Rathore[03-12-13]
; If nothing else, the school will turn her into an individual.[03-12-13][cambridge]
;यदि कुछ भी नही अन्य, तो विद्यालय एक विशिष्ट व्यक्ति में उसको बदल देगा . 
(defrule into4
(declare (salience 5000))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(id-root =(+ ?id 1) an)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into4   "  ?id "  meM )" crlf))
)

;;@@@   ---Added by Prachi Rathore
; We need to prod him into making a decision. [cambridge]
;हमें निर्णय  करने के लिये उसको उकसाने की जरूरत है . 
(defrule into5
(declare (salience 5000))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(kriyA-into_saMbanXI  ? ?id2)
(kriyA-object  ?id2 ?id1)
(id-root ?id1 team|decision)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into5   "  ?id "  ke_liye )" crlf))
)


;;@@@   ---Added by Prachi Rathore[12-12-13]
; In the hills, ghee freezes into a solid mass.[gyannidhi]
;पहाडियों में, घी एक घनीभूत परिमाण में जमा देता है . 
(defrule into6
(declare (salience 5000))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(kriyA-into_saMbanXI  ?id2 ?)
(kriyA-subject  ?id2 ?id1)
(id-root ?id1 ghee)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into6   "  ?id "  meM)" crlf))
)

;@@@ Added by Prachi Rathore 6-1-14
;The robber-chief insisted that he must have bumped into a sharp stone in the dark.[gyan-nidhi]
;सरदार को यही विश्वास था कि अंधेरे में वह किसी नुकीले पत्थर से टकरा गया होगा।
(defrule into7
(declare (salience 5000))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(kriyA-into_saMbanXI  ?id1 ?id2)
(id-root ?id1 bump)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into7   "  ?id "  se )" crlf))
)


;@@@ Added by Prachi Rathore[3-3-14]
;She's thrown herself into this new job.[cambridge]
; उसने अपने को इस नई नौकरी/काम में पूरी तरह से लिप्त कर लिया है.
(defrule into8
(declare (salience 5000))
(id-root ?id into)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(kriyA-into_saMbanXI  ?id2 ?id1)
(id-root ?id1 job)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	into8   "  ?id "  meM)" crlf))
)
