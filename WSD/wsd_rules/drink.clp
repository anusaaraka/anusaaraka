



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
(defrule drink1
(declare (salience 4900))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 grahaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drink.clp	drink1  "  ?id "  " ?id1 "  grahaNa_kara  )" crlf))
)

;The students were drinking in every word of the teacher.
;vixyArWI SikRaka ke hara Sabxa ko grahaNa kara rahe We
(defrule drink2
(declare (salience 4800))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 svAsWya_kI_SuBakAmanA_ke_lie_maxirA_pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drink.clp	drink2  "  ?id "  " ?id1 "  svAsWya_kI_SuBakAmanA_ke_lie_maxirA_pI  )" crlf))
)

;The father raised his glass && drink to the infant.
;piwA ne navajAwa SiSu ke nAma kA pyAlA piyA
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
(declare (salience 4600))
(id-root ?id drink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drink.clp 	drink4   "  ?id "  pI )" crlf))
)

;"drink","V","1.pI"
;--"2.pInA/pAna_karanA"
;Why don't you drink a glass of water after food.
;--"3.maxirA_pAna_karanA"
;Though he is an army officer but never drinks.
;He drank away his all inheritance. 
;They are drinking themselves to death.
;
