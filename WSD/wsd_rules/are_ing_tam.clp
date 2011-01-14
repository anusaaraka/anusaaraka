
(defrule are_en_tam0
(declare (salience 5000))
(id-TAM ?id are_en)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 born)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_en yA_hE))
(assert (root_id-TAM-vachan ?id are_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_en_tam.clp  	are_en_tam0  "  ?id "  yA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_en_tam.clp    are_en_tam0  "  ?id " are_en p )" crlf))
(assert (id-tam_type ?id passive))
)

;They are born in Patna.



;Modified by Meena(27.8.10)
;
(defrule are_en_tam1
(declare (salience 4900))
(id-TAM ?id are_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id need|require)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_en hE))
(assert (root_id-TAM-vachan ?id are_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_en_tam.clp  	are_en_tam1  "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_en_tam.clp    are_en_tam1  "  ?id " are_en p )" crlf))
(assert (id-tam_type ?id passive))
)






;Added by Meena(20.02.10)
;There must be another sort of rules according to which sentences are composed. 
(defrule are_en_tam2
(declare (salience 4800))
(id-TAM ?id are_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 sentence|music)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_en yA_jAwA_hE))
(assert (root_id-TAM-vachan ?id are_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_en_tam.clp    are_en_tam2  "  ?id "  yA_jAwA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_en_tam.clp    are_en_tam2  "  ?id " are_en p )" crlf))
(assert (id-tam_type ?id passive))
)





;-H_tam_mng changed from wA_hE to yA_jAwA_hE(Meena 17.4.10)
;Added by Meena(4.3.10)
;Such flowers are found mainly in Europe . 
(defrule are_en_tam3
(declare (salience 5000))
(id-TAM ?id are_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id find|keep)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_en yA_jAwA_hE))
(assert (root_id-TAM-vachan ?id are_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_en_tam.clp    are_en_tam3  "  ?id " yA_jAwA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_en_tam.clp    are_en_tam3  "  ?id " are_en p )" crlf))
(assert (id-tam_type ?id passive))
)



(defrule are_en_tam4
(declare (salience 4800))
(id-TAM ?id are_en)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_en yA_gayA_hE))
(assert (root_id-TAM-vachan ?id are_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_en_tam.clp  	are_en_tam4  "  ?id "  yA_gayA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_en_tam.clp    are_en_tam4  "  ?id " are_en p )" crlf))
(assert (id-tam_type ?id passive))
)

