
(defrule picket0
(declare (salience 5000))
(id-root ?id picket)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id picketing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XaranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  picket.clp  	picket0   "  ?id "  XaranA )" crlf))
)

;"picketing","N","1.XaranA/GerA"
;Picketing should be made illegal.
;
(defrule picket1
(declare (salience 4900))
(id-root ?id picket)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XaranEwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  picket.clp 	picket1   "  ?id "  XaranEwa )" crlf))
)

;"picket","N","1.XaranEwa"
;The pickets became violent when their demands were refused.
;--"2.KUztA"
;The cow was tied to the picket.
;
(defrule picket2
(declare (salience 4800))
(id-root ?id picket)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GerA_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  picket.clp 	picket2   "  ?id "  GerA_dAla )" crlf))
)

;"picket","V","1.GerA_dAlanA/KUztA_gAdanA"
;On sports day, ground will be picketed.
;--"2.XaranA_xenA"
;Some workers of the company want to picket.
;
