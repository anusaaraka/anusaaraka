
(defrule kink0
(declare (salience 5000))
(id-root ?id kink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kink.clp 	kink0   "  ?id "  bala )" crlf))
)

(defrule kink1
(declare (salience 4900))
(id-root ?id kink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bala_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kink.clp 	kink1   "  ?id "  bala_padZa )" crlf))
)

;"kink","V","1.bala_padZanA/dAlanA"
;Dont let the rope kink.
;
;