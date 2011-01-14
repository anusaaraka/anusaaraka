
(defrule shelve0
(declare (salience 5000))
(id-root ?id shelve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shelving )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id alpapravaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  shelve.clp  	shelve0   "  ?id "  alpapravaNa )" crlf))
)

;"shelving","N","1.alpapravaNa"
;
(defrule shelve1
(declare (salience 4900))
(id-root ?id shelve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAkZa_para_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shelve.clp 	shelve1   "  ?id "  wAkZa_para_raKa )" crlf))
)

;"shelve","V","1.wAkZa para raKanA"
;Plans for a new theatre were shelved due to lack of funds.
;--"2.SelPZa para raKanA"
;The books have been shelved in the wrong order.
;
;