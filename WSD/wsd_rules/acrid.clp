
(defrule acrid0
(declare (salience 5000))
(id-root ?id acrid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ugra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acrid.clp 	acrid0   "  ?id "  ugra )" crlf))
)

(defrule acrid1
(declare (salience 4900))
(id-root ?id acrid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ugra_svaBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acrid.clp 	acrid1   "  ?id "  ugra_svaBAva )" crlf))
)

;"acrid","Adj","1.ugra_svaBAva"
;I don't like Anil's acrid nature.
;--"2.baxabU"
;I get vomitting sensation when I get the acrid of burning rubber.
;
;
