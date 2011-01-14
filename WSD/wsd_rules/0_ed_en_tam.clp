
(defrule 0_ed_en_tam0
(declare (salience 5000))
(id-TAM ?id 0_ed_en)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) he|she|it)
(id-root ?id1  put|cut|set|read)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id 0_ed_en WawawawawawawaWawawawawawawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  0_ed_en_tam.clp  	0_ed_en_tam0  "  ?id "  WawawawawawawaWawawawawawawa )" crlf))
)

; She put it on the table.
; He read an article from the newspaper.
