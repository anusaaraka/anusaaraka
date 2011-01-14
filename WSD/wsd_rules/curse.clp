
(defrule curse0
(declare (salience 5000))
(id-root ?id curse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curse.clp 	curse0   "  ?id "  SApa )" crlf))
)

(defrule curse1
(declare (salience 4900))
(id-root ?id curse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SApa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curse.clp 	curse1   "  ?id "  SApa_xe )" crlf))
)

;"curse","VT","1.SApa_xenA"
;Durvasa cursed Shakuntala
;
;