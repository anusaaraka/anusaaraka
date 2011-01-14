
(defrule evergreen0
(declare (salience 5000))
(id-root ?id evergreen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saxA_bahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evergreen.clp 	evergreen0   "  ?id "  saxA_bahAra )" crlf))
)

;"evergreen","Adj","1.saxA_bahAra"
;Periwinkle is an evergreen plant.
;
(defrule evergreen1
(declare (salience 4900))
(id-root ?id evergreen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saxA_bahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evergreen.clp 	evergreen1   "  ?id "  saxA_bahAra )" crlf))
)

;"evergreen","N","1.saxA_bahAra"
