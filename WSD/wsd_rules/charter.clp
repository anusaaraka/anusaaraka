
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

;$$$  Modified by Preeti(7-5-14)
;The team chartered a plane. [merriam-webster.com]
;tIma ne eka vimAna kirAye_para liyA.
(defrule charter1
;(declare (salience 4900));salience changed
(id-root ?id charter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_para_le));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charter.clp 	charter1   "  ?id "  kirAye_para_le )" crlf))
)

;@@@ Added by Preeti(7-5-14)
;The city was chartered in 1837. [merriam-webster.com]
;1837 meM Sahara kI sWApanA huI WI.
(defrule charter2
(declare (salience 1000))
(id-root ?id charter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApanA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charter.clp 	charter2   "  ?id "  sWApanA_ho)" crlf))
)


;"charter","VT","1.nija_prayoga_ke_liye_kirAye_para_lenA"
;The minister chartered an IAF aircraft.
;
;
