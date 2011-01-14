
(defrule continent0
(declare (salience 5000))
(id-root ?id continent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmasaMyamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  continent.clp 	continent0   "  ?id "  AwmasaMyamI )" crlf))
)

;"continent","Adj","1.AwmasaMyamI"
;He is able to control on his continent desires.
;
(defrule continent1
(declare (salience 4900))
(id-root ?id continent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahAxvIpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  continent.clp 	continent1   "  ?id "  mahAxvIpa )" crlf))
)

;"continent","N","1.mahAxvIpa"
;There are seven continents.
;
