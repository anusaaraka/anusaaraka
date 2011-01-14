
(defrule is_ing_tam0
(declare (salience 5000))
(id-TAM ?id is_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id is_ing hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_ing_tam.clp  	is_ing_tam0  "  ?id "  hE )" crlf))
)

;He is standing.
(defrule is_ing_tam1
(declare (salience 4900))
(id-TAM ?id is_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  sit|miss|stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id is_ing yA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_ing_tam.clp  	is_ing_tam1  "  ?id "  yA_hE )" crlf))
)

;He is sitting.
(defrule is_ing_tam2
(declare (salience 4800))
(id-TAM ?id is_ing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id is_ing 0_rahA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_ing_tam.clp  	is_ing_tam2  "  ?id "  0_rahA_hE )" crlf))
)

;He is eating fruits.


;Added by sheetal(2-01-10)
(defrule is_ing_tam3
(declare (salience 4850))
(id-TAM ?id is_ing)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 always)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id is_ing 0_wA_rahawA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  is_ing_tam.clp    is_ing_tam3  "  ?id "  0_wA_rahawA_hE )" crlf))
)
;He is always looking at himself in the mirror .

