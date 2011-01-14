
(defrule father0
(declare (salience 5000))
(id-root ?id father)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  father.clp 	father0   "  ?id "  piwA )" crlf))
)

;"father","N","1.piwA"
;His father was born in Atlanta
;
(defrule father1
(declare (salience 4900))
(id-root ?id father)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piwA_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  father.clp 	father1   "  ?id "  piwA_bana )" crlf))
)

;"father","VT","1.piwA_bananA"
;He fathered her child.
;
