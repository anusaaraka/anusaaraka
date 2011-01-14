
(defrule charter0
(declare (salience 5000))
(id-root ?id charter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GoRaNA_pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charter.clp 	charter0   "  ?id "  GoRaNA_pawra )" crlf))
)

(defrule charter1
(declare (salience 4900))
(id-root ?id charter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nija_prayoga_ke_liye_kirAye_para_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charter.clp 	charter1   "  ?id "  nija_prayoga_ke_liye_kirAye_para_le )" crlf))
)

;"charter","VT","1.nija_prayoga_ke_liye_kirAye_para_lenA"
;The minister chartered an IAF aircraft.
;
;