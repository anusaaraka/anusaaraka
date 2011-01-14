
(defrule slump0
(declare (salience 5000))
(id-root ?id slump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slump.clp 	slump0   "  ?id "  girAvata )" crlf))
)

;"slump","N","1.girAvata"
;The slump occured in share market in USA in 1..
;
(defrule slump1
(declare (salience 4900))
(id-root ?id slump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slump.clp 	slump1   "  ?id "  gira_padZa )" crlf))
)

;"slump","V","1.gira_padZanA"
;During the period of 'Great depression' the economy of most of the European countries was slumped.
;
