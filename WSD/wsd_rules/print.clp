
(defrule print0
(declare (salience 5000))
(id-root ?id print)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id printing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id muxraNa_kalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  print.clp  	print0   "  ?id "  muxraNa_kalA )" crlf))
)

;given_word=printing && word_category=noun	$CapAI)

;"printing","N","1.CapAI"
;After the invention of printing our society has changed a lot.
;
(defrule print1
(declare (salience 4900))
(id-root ?id print)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CapAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  print.clp 	print1   "  ?id "  CapAI )" crlf))
)

;"print","N","1.CapAI"
;The print in ordinary mixed with italic is so convenient to read.
;--"2.niSAna"
;The murderer gave a clue to the police by giving his foot prints.
;
(defrule print2
(declare (salience 4800))
(id-root ?id print)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  print.clp 	print2   "  ?id "  CApa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;These are supposed to be the prints of Rama's sandals to which Bharat paid homage.  [Gyannidhi]
;ये राम के चप्पल के रेखा चित्र हैं जिन्हें भरत ने श्रद्दाञ्जलि अर्पित की . 
(defrule print3
(declare (salience 4950))
(id-root ?id print)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reKA_ciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  print.clp 	print3   "  ?id "  reKA_ciwra )" crlf))
)
;"print","V","1.CApanA"
;story books are printed on a great scale.
;
