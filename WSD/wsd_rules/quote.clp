
(defrule quote0
(declare (salience 5000))
(id-root ?id quote)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxXaraNacihna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quote.clp 	quote0   "  ?id "  uxXaraNacihna )" crlf))
)

;"quote","N","1.uxXaraNacihna"
;He put his remarks within quotes.
;
(defrule quote1
(declare (salience 4900))
(id-root ?id quote)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxXqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quote.clp 	quote1   "  ?id "  uxXqwa_kara )" crlf))
)

;"quote","VT","1.uxXqwa_karanA"
;He could quote from Shakespeare.
;--"2.xAma_lagAnA"
;Quote your prices for these cars.
;
