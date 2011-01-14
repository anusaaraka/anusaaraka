
(defrule uptown0
(declare (salience 5000))
(id-root ?id uptown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rihAiSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uptown.clp 	uptown0   "  ?id "  rihAiSI )" crlf))
)

;"uptown","Adj","1.rihAiSI"
;I like to stay in uptown Hyderabad.
;
(defrule uptown1
(declare (salience 4900))
(id-root ?id uptown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rihAiSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uptown.clp 	uptown1   "  ?id "  rihAiSI )" crlf))
)

;"uptown","Adv","1.rihAiSI"
;He is going to stay uptown.
;
