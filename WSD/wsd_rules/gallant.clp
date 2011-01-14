
(defrule gallant0
(declare (salience 5000))
(id-root ?id gallant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAxura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gallant.clp 	gallant0   "  ?id "  bahAxura )" crlf))
)

;"gallant","Adj","1.bahAxura"
;Our gallant soldiers are sacrificing their lives for the country.
;
(defrule gallant1
(declare (salience 4900))
(id-root ?id gallant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gallant.clp 	gallant1   "  ?id "  CElA )" crlf))
)

;"gallant","N","1.CElA"
;Ajay is a gallant.
;
