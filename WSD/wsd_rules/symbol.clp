

;Added by Meena(28.4.10)
;To the people of India he is the symbol of mature wisdom . 
(defrule symbol1
(declare (salience 6000))
(id-root ?id symbol)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id  ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " symbol.clp    symbol1  "  ?id "   prawIka  )" crlf))
)

