
(defrule mere0
(declare (salience 5000))
(id-root ?id mere)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kevala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mere.clp 	mere0   "  ?id "  kevala )" crlf))
)

;"mere","Adj","1.kevala"
;A mere Rs. 50/- cannot feed my family.
;
(defrule mere1
(declare (salience 4900))
(id-root ?id mere)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id poKarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mere.clp 	mere1   "  ?id "  poKarA )" crlf))
)

;"mere","N","1.poKarA"
;Go jump in the mere, you'll soon learn swimming.
;
