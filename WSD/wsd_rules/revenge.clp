
(defrule revenge0
(declare (salience 5000))
(id-root ?id revenge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiSoXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revenge.clp 	revenge0   "  ?id "  prawiSoXa )" crlf))
)

;"revenge","N","1.prawiSoXa"
;She swore to take her revenge against her in-laws.
;
(defrule revenge1
(declare (salience 4900))
(id-root ?id revenge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiSoXa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revenge.clp 	revenge1   "  ?id "  prawiSoXa_le )" crlf))
)

;"revenge","VT","1.prawiSoXa_lenA"
;He revenged his brother's death.
;
