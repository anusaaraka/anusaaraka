



;She is born in Patna.
(defrule is_en_tam0
(declare (salience 5000))
(id-TAM ?id is_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id born)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id is_en yA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_en_tam.clp  	is_en_tam0  "  ?id "  yA_hE )" crlf))
(assert (id-tam_type ?id passive))
)


;Added call|consider in the list (Meena 8.3.11)
;Jumma masjid is considered to be one of the most beautiful mosques in western india. 
;Madras, or Chennai as it is now called, is known as the gateway of southern india. 
;Added (not(id-cat_coarse =(+ ?id 2) noun|verbal_noun)) by Meena(17.1.11) ex. She is used to eating meat. He is used to tourists here.
; Protoplasm is known as the physical basis for life.
;Modified by Meena(19.11.10);Added "use" in the list.
;In physics, the term “fluid” is used to mean either a gas or a liquid.
(defrule is_en_tam1
(declare (salience 4900))
(id-TAM ?id is_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id  know|play|use|call|consider)
;(id-word ?id  known|played)
;(not(id-cat_coarse =(+ ?id 2) noun|verbal_noun)) 
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id is_en yA_jAwA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_en_tam.clp  	is_en_tam1  "  ?id "  yA_jAwA_hE )" crlf))
(assert (id-tam_type ?id passive))
)


;(27.1.11) to be checked
;Modified by Shirisha Manju(30-05-13) Added "is" in the list
;The holy book is found in the temples. 
(defrule is_en_tam01
(declare (salience 4900))
(id-TAM ?id is_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id  use|find)
;(id-word ?id  known|played)
(not(id-cat_coarse =(+ ?id 2) noun|verbal_noun)) 
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id is_en yA_jAwA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_en_tam.clp     is_en_tam1  "  ?id "  yA_jAwA_hE )" crlf))
(assert (id-tam_type ?id passive))
)




;Modified by Meena(1.8.11)
;Uttar pradesh is a land of cultural and geographical diversity, which is blessed by an innumerable perennial rivers, dense forests, and fertile soil. 
;The fruit is eaten by the child.
(defrule is_en_tam2
(declare (salience 4800))
(id-TAM ?id is_en)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) as|by|for|of)
(id-root  ?id ?root)
=>
(if (eq ?root bless) then
      (assert (id-E_tam-H_tam_mng ?id is_en hE ))
      (retract ?mng)
      (if ?*debug_flag* then
      (printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng   " ?*wsd_dir* "  is_en_tam.clp      is_en_tam2   "  ?id "  hE )" crlf))
else
      (assert (id-E_tam-H_tam_mng ?id is_en yA_gayA_hE))
      (retract ?mng)
      (if ?*debug_flag* then
      (printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_en_tam.clp  	is_en_tam2  "  ?id "  yA_gayA_hE )" crlf))
      (assert (id-tam_type ?id passive))
))
