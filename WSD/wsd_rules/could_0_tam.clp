

;Added by Meena(4.11.09)
;Could this be that?
(defrule could_0_tam0
(declare (salience 5000))
(id-TAM ?id could_0)
?mng <-(meaning_to_be_decided ?id)
(yes_no_question)
(id-word 1 could)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id could_0 0_sakawA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  could_0_tam.clp        could_0_tam0  "  ?id "  0_sakawA_hE )" crlf))
)



;Added by Meena(4.11.09)
;This could be that.
(defrule could_0_tam1
(declare (salience 4800))
(id-TAM ?id could_0)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id be|stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id could_0 0_sakawA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  could_0_tam.clp        could_0_tam1  "  ?id "  0_sakawA_WA )" crlf))
)




;Added by Meena(4.11.09)
;He could go.(for all verbs except "be")
(defrule could_0_tam2
(declare (salience 1000))
(id-TAM ?id could_0)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id could_0 0_sakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  could_0_tam.clp        could_0_tam2  "  ?id "  0_sakA )" crlf))
)

