
(defrule lace0
(declare (salience 5000))
(id-root ?id lace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lace.clp 	lace0   "  ?id "  PIwA )" crlf))
)

;"lace","N","1.PIwA"
;shoe-lace.
;
(defrule lace1
(declare (salience 4900))
(id-root ?id lace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIwA_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lace.clp 	lace1   "  ?id "  PIwA_bAzXa )" crlf))
)

;"lace","V","1.PIwA_bAzXanA"
;Lace your shoes.
;--"2.puta_xenA"
;He drinks soda-water laced with alchohol.
;
