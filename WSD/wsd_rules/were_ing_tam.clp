
(defrule were_ing_tam0
(declare (salience 5000))
(id-TAM ?id were_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id were_ing WA))
(assert (root_id-TAM-vachan ?id were_ing p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  were_ing_tam.clp  	were_ing_tam0  "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  were_ing_tam.clp          were_ing_tam0  "  ?id " were_ing p )" crlf))
)

;We were standing.
(defrule were_ing_tam1
(declare (salience 4900))
(id-TAM ?id were_ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  sit|miss|stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id were_ing yA_WA))
(assert (root_id-TAM-vachan ?id were_ing p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  were_ing_tam.clp  	were_ing_tam1  "  ?id "  yA_WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  were_ing_tam.clp          were_ing_tam1  "  ?id " were_ing p )" crlf))
)

;We were sitting.
(defrule were_ing_tam2
(declare (salience 4800))
(id-TAM ?id were_ing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id were_ing 0_rahA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  were_ing_tam.clp  	were_ing_tam2  "  ?id "  0_rahA_WA )" crlf))
)

;We were eating fruits.
(defrule were_ing_tam3
(declare (salience 4700))
(id-TAM ?id were_ing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id were_ing 0_rahA_WA))
(assert (root_id-TAM-vachan ?id were_ing p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  were_ing_tam.clp  	were_ing_tam3  "  ?id "  0_rahA_WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  were_ing_tam.clp          were_ing_tam3  "  ?id " were_ing p) " crlf))
)

