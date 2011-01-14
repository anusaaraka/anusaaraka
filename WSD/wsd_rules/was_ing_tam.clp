
(defrule was_ing_tam0
(declare (salience 5000))
(id-TAM ?id was_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_ing WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_ing_tam.clp  	was_ing_tam0  "  ?id "  WA )" crlf))
)

;He was standing.
(defrule was_ing_tam1
(declare (salience 4900))
(id-TAM ?id was_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  sit|miss|stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_ing yA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_ing_tam.clp  	was_ing_tam1  "  ?id "  yA_WA )" crlf))
)

;He was sitting.
(defrule was_ing_tam2
(declare (salience 4800))
(id-TAM ?id was_ing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id was_ing 0_rahA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  was_ing_tam.clp  	was_ing_tam2  "  ?id "  0_rahA_WA )" crlf))
)

;He was eating fruits.
