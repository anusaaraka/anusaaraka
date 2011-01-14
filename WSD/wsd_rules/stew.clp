
(defrule stew0
(declare (salience 5000))
(id-root ?id stew)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stewed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wejZa_kadZavI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stew.clp  	stew0   "  ?id "  wejZa_kadZavI )" crlf))
)

;"stewed","Adj","1.wejZa kadZavI"
;Last evening, I had an experience of stewed tea.
;
(defrule stew1
(declare (salience 4900))
(id-root ?id stew)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stew.clp 	stew1   "  ?id "  pakA )" crlf))
)

;"stew","V","1.pakAnA"
;Meat need to be stewed for several hours.
;--"2.pareSAna honA"  
;Rita gets awfully stewed during her examination period.
;--"3.nicodZanA"
;Ram is very cunning. He knows how to stew others.
;
;