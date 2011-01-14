
(defrule overnight0
(declare (salience 5000))
(id-root ?id overnight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAwa_Bara_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overnight.clp 	overnight0   "  ?id "  rAwa_Bara_kA )" crlf))
)

;"overnight","Adj","1.rAwa_Bara_kA"
;Their flight has an overnight stop at Germany
;
(defrule overnight1
(declare (salience 4900))
(id-root ?id overnight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAwa_Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overnight.clp 	overnight1   "  ?id "  rAwa_Bara )" crlf))
)

;"overnight","Adv","1.rAwa_Bara"
;We all stayed overnight at our friend's place
;--"2.sahasA"
;The singer became popular overnight
;
