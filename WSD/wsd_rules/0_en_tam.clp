
(defrule 0_en_tam0
(declare (salience 5000))
(id-TAM ?id 0_en)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) please)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id 0_en wA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  0_en_tam.clp  	0_en_tam0  "  ?id "  wA_hE )" crlf))
)

; Please come here.
