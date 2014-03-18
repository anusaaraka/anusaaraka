
;Added by Meena(8.02.10)
;We noticed a sharp increase in unemployment in the last few years.
;We need to give young criminals a sharp shock.
(defrule sharp00
(declare (salience 5000))
(id-root ?id sharp)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sharp.clp       sharp00   "  ?id "  weja )" crlf))
)




;Salience reduced by Meena(8.02.10)
(defrule sharp0
;(declare (salience 5000))
(declare (salience 0))
(id-root ?id sharp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wEjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sharp.clp       sharp0   "  ?id "  wEjI )" crlf))
)
;There is a sharp rise in crime .
;Added by Veena Bagga (22-01-10)
