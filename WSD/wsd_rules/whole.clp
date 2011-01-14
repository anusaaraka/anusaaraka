
(defrule whole0
(declare (salience 5000))
(id-root ?id whole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whole.clp 	whole0   "  ?id "  pUrA )" crlf))
)

;"whole","Adj","1.samaswa"
;--"2.pUrA"
;The whole village was washed away by the floods.
;
(defrule whole1
(declare (salience 4900))
(id-root ?id whole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whole.clp 	whole1   "  ?id "  pUrNa )" crlf))
)

;default_sense && category=noun	samaswa	0
;"whole","N","1.samaswa"
;They all together make a whole.
;
