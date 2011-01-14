
(defrule clonk0
(declare (salience 5000))
(id-root ?id clonk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clonk.clp 	clonk0   "  ?id "  Xvani )" crlf))
)

;"clonk","N","1.Xvani"
;I could hear the clonk of aircrafts.
;
(defrule clonk1
(declare (salience 4900))
(id-root ?id clonk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xvani_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clonk.clp 	clonk1   "  ?id "  Xvani_kara )" crlf))
)

;"clonk","V","1.Xvani_karanA"
;The heavy machines in the factory clonked.
;
