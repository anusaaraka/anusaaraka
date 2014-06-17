



;Modified by Meena(21.4.10)
;They found a Bronze Age drinking vessel . 
(defrule drink0
(declare (salience 5000))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id drinking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pInA))
;(assert (id-wsd_word_mng ?id peya_paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  drink.clp  	drink0   "  ?id "  pInA )" crlf))
)

;"drinking","N","1.peya_paxArWa"
;Drinking && driving is strictly banned in U.S.A. 
;This water is safe for drinking.
;
;

;$$$ modified by Pramila(BU) on 12-12-2013
(defrule drink1
(declare (salience 5000))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?id1)
(id-word =( + ?id 1) in)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) grahaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drink.clp	drink5  "  ?id "  " (+ ?id 1) "  grahaNa_kara  )" crlf))
)



;The students were drinking in every word of the teacher.
;vixyArWI SikRaka ke hara Sabxa ko grahaNa kara rahe We

;$$$ modified by Pramila(BU) on 12-12-2013
(defrule drink2
(declare (salience 4800))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(or(and(id-word ?id1 to)(kriyA-upasarga ?id ?id1))(kriyA-to_saMbanXI  ?id ?id1))
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drink.clp 	drink3   "  ?id "  kAmanA_kara )" crlf))
)


;The father raised his glass && drink to the infant.
;piwA ne navajAwa SiSu ke liye kAmanA kI.
(defrule drink3
(declare (salience 4700))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peya_yA_Sarabawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drink.clp 	drink3   "  ?id "  peya_yA_Sarabawa )" crlf))
)

;"drink","N","1.peya_yA_Sarabawa"
;We can not live without food && drink.
;Bottled drinks are not good for health.
;--"2.SarAba"
;Please make the drink for the guests.  
;
(defrule drink4
(declare (salience 4000))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drink.clp 	drink4   "  ?id "  pI )" crlf))
)


;@@@ added by Pramila(BU) on 12-12-2013
;Drink up and let's go.             ;oald
;खत्म करो और चलते हैं.
;Come on, drink up your juice.         ;oald
;चलो भी, अपना ज्यूस खत्म करो.
(defrule drink5
(declare (salience 5000))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Kawma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drink.clp	drink5  "  ?id "  " ?id1 "  Kawma_kara  )" crlf))
)



;@@@ added by Pramila(BU) on 12-12-2013
;They are drinking themselves to death.            ;sentence of this file
; वे इतना पी रहे हैं कि मर सकते हैं.
(defrule drink6
(declare (salience 4800))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-word ?id1 death)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drink.clp 	drink6   "  ?id "  pI )" crlf))
)

;@@@ added by Pramila(BU) on 12-12-2013
;He drank away his all inheritance.          ;sentence of this file
;उसने अपनी सारी जायदाद पीकर उड़ा दी.
(defrule drink7
(declare (salience 5000))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 away)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pIkara_udZA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drink.clp	drink7  "  ?id "  " ?id1 " pIkara_udZA_xe  )" crlf))
)
;"drink","V","1.pI"
;--"2.pInA/pAna_karanA"
;Why don't you drink a glass of water after food.
;--"3.maxirA_pAna_karanA"
;Though he is an army officer but never drinks.
;He drank away his all inheritance. 
;They are drinking themselves to death.
;
