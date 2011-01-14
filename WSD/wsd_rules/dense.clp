
(defrule dense0
(declare (salience 5000))
(id-root ?id dense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dense.clp 	dense0   "  ?id "  GanA )" crlf))
)

(defrule dense1
(declare (salience 4900))
(id-root ?id dense)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dense.clp 	dense1   "  ?id "  GanA )" crlf))
)

;"dense","Adj","1.GanA"
;The deforestation of the dense forests of the central India will lead to an ecological imbalance.
;--"2.manxabuxXi
;How can she be so dense? 
;
;
