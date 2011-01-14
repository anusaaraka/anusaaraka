
(defrule steel0
(declare (salience 5000))
(id-root ?id steel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ispAwa_se_nirmiwa_Saswra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steel.clp 	steel0   "  ?id "  ispAwa_se_nirmiwa_Saswra )" crlf))
)

;"steel","Adj","1.ispAwa_se_nirmiwa_Saswra"
;Various kinds of steel weapons were used in IInd world war.
;
(defrule steel1
(declare (salience 4900))
(id-root ?id steel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ispAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steel.clp 	steel1   "  ?id "  ispAwa )" crlf))
)

;"steel","N","1.ispAwa"
;Steel utensils are easy to wash && maintain.
;
(defrule steel2
(declare (salience 4800))
(id-root ?id steel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saKwa_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steel.clp 	steel2   "  ?id "  saKwa_bana )" crlf))
)

;"steel","V","1.saKwa_bananA"
;She steeled herself before going for the interview.
;
