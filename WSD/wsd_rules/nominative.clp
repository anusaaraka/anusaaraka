
(defrule nominative0
(declare (salience 5000))
(id-root ?id nominative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nominative.clp 	nominative0   "  ?id "  karwA )" crlf))
)

;"nominative","Adj","1.karwA"
;`I',`We',`they' are all nominative pronouns.
;
(defrule nominative1
(declare (salience 4900))
(id-root ?id nominative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karwAkAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nominative.clp 	nominative1   "  ?id "  karwAkAraka )" crlf))
)

;"nominative","N","1.karwAkAraka"
;Nominative is the special form of a noun in sanskrit.
;
