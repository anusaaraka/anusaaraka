
(defrule trace0
(declare (salience 5000))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tracing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pAraxarSaka_kAgaja_meM_nakala_uwAranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  trace.clp  	trace0   "  ?id "  pAraxarSaka_kAgaja_meM_nakala_uwAranA )" crlf))
)

;"tracing","N","1.pAraxarSaka_kAgaja_meM_nakala_uwAranA"
;The students did the tracing of the pictures.
;
(defrule trace1
(declare (salience 4900))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace1   "  ?id "  niSAna )" crlf))
)

;"trace","N","1.niSAna"
;The thieves disappeared without a trace.
;--"2.kuCa"
;There is a trace of adulteration in the food.
;--"1.bAzXane_vAlA"
;Traces of horses are kept in the stables.
;
(defrule trace2
(declare (salience 4800))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace2   "  ?id "  DUzDa )" crlf))
)

;"trace","VT","1.DUzDanA"
;You have to trace the bag which you have misplaced.
;--"2.jadZeM_Koja_nikAlanA"
;The book traces the causes of the downfall of the Mughal empire.
;Harappan culture has been traced from the pots found during excavations.
;--"3.nakala_uwAranA"
;Trace the map of India.
;
