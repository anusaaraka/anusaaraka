;Salience reduced by Meena(26.10.10)
(defrule if0
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id if)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaxi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  if.clp 	if0   "  ?id "  yaxi )" crlf))
)



;Added know in the list(Meena,(26.10.10))
;I don't know if he came.
(defrule if1
(declare (salience 4900))
(id-root ?id if)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) ask|decide|depend|discuss|know|tell|question|wonder)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki_kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  if.clp 	if1   "  ?id "  ki_kyA )" crlf))
)

;"if","Conj","1.yaxi"
;--"2.agara"
;If you have finished eating you may leave the table.
;
