
(defrule antique0
(declare (salience 5000))
(id-root ?id antique)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  antique.clp 	antique0   "  ?id "  purAnA )" crlf))
)

;"antique","Adj","1.purAnA/purAwana"
;She is very fond of antique jewelleries.
;
(defrule antique1
(declare (salience 4900))
(id-root ?id antique)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purAnI_cIje))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  antique.clp 	antique1   "  ?id "  purAnI_cIje )" crlf))
)

;"antique","N","1.purAnI_cIje"
;Her hobby is to collect antiques.
;
