
;We are standing.
(defrule are_ing_tam0
(declare (salience 5000))
(id-TAM ?id are_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id stand);$$$ Modified ?id1 to ?id by Roja(17-05-14) for the same example.
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_ing hE))
(assert (root_id-TAM-vachan ?id are_ing p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_ing_tam.clp  	are_ing_tam0  "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_ing_tam.clp   are_ing_tam0  "  ?id " are_ing  p )" crlf))
)

;We are sitting.
(defrule are_ing_tam1
(declare (salience 4900))
(id-TAM ?id are_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id  sit|miss|stand) ;$$$ Modified ?id1 to ?id by Roja(17-05-14) for the same example.
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_ing yA_hE))
(assert (root_id-TAM-vachan ?id are_ing p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_ing_tam.clp  	are_ing_tam1  "  ?id "  yA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_ing_tam.clp   are_ing_tam1  "  ?id " are_ing  p )" crlf))
)

(defrule are_ing_tam2
(id-TAM ?id are_ing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_ing 0_rahA_hE))
(assert (root_id-TAM-vachan ?id are_ing p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_ing_tam.clp  	are_ing_tam2  "  ?id "  0_rahA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_ing_tam.clp   are_ing_tam2  "  ?id " are_ing  p )" crlf))
)

