
(defrule control0
(declare (salience 5000))
(id-root ?id control)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id controlled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id niyanwriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  control.clp  	control0   "  ?id "  niyanwriwa )" crlf))
)

;"controlled","Adj","1.niyanwriwa"
;He remained calm && controlled during judicial trial.
;
(defrule control1
(declare (salience 4900))
(id-root ?id control)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyaMwraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  control.clp 	control1   "  ?id "  niyaMwraNa )" crlf))
)

(defrule control2
(declare (salience 4800))
(id-root ?id control)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaSa_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  control.clp 	control2   "  ?id "  vaSa_meM_raKa )" crlf))
)

;"control","VT","1.vaSa_meM_raKanA"
;Control the budget
;Are you controlling for the temperature?
;Control an account
;Do you control these data?
;
;
