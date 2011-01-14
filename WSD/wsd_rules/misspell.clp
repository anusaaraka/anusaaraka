
(defrule misspell0
(declare (salience 5000))
(id-root ?id misspell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id misspelling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id galawa_varwanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  misspell.clp  	misspell0   "  ?id "  galawa_varwanI )" crlf))
)

;"misspelling","N","1.galawa varwanI"
;Check the document for any misspellings.
;
(defrule misspell1
(declare (salience 4900))
(id-root ?id misspell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id misspelled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id galawa_varwanI_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  misspell.clp  	misspell1   "  ?id "  galawa_varwanI_vAlA )" crlf))
)

;"misspelled","Adj","1.galawa varwanI vAlA"
;The name is misspelled.
;
;
(defrule misspell2
(declare (salience 4800))
(id-root ?id misspell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_varwanI_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  misspell.clp 	misspell2   "  ?id "  galawa_varwanI_liKa )" crlf))
)

;"misspell","V","1.galawa varwanI liKanA"
;Try not to misspell anything.
;
;
