
(defrule am_ing_tam0
(declare (salience 5000))
(id-TAM ?id am_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id am_ing hE))
(assert (root_id-TAM-vachan ?id am_ing s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  am_ing_tam.clp  	am_ing_tam0  "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  am_ing_tam.clp    am_ing_tam0  "  ?id " am_ing s )"  crlf))
)

;I am standing.
(defrule am_ing_tam1
(declare (salience 4900))
(id-TAM ?id am_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  sit|miss|stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id am_ing yA_hE))
(assert (root_id-TAM-vachan ?id am_ing s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  am_ing_tam.clp  	am_ing_tam1  "  ?id "  yA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  am_ing_tam.clp    am_ing_tam1  "  ?id "  am_ing s )" crlf))
)

;I am sitting.
(defrule am_ing_tam2
(declare (salience 4800))
(id-TAM ?id am_ing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id am_ing 0_rahA_hE))
(assert (root_id-TAM-vachan ?id am_ing s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  am_ing_tam.clp  	am_ing_tam2  "  ?id "  0_rahA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  am_ing_tam.clp    am_ing_tam2  "  ?id " am_ing s )" crlf))
)

