
(defrule peg0
(declare (salience 5000))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUztI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg0   "  ?id "  KUztI )" crlf))
)

;"peg","N","1.KUztI"
;When I hang a picture on the wall, I hammer in a strong thin peg to hold it in place.
;
(defrule peg1
(declare (salience 4900))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUztI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg1   "  ?id "  KUztI_lagA )" crlf))
)

;"peg","V","1.KUztI_lagAnA"
;During a storm the people have to peg their tents firmly to the ground.
;
