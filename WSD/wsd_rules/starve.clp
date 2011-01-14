
(defrule starve0
(declare (salience 5000))
(id-root ?id starve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUKA_mara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  starve.clp 	starve0   "  ?id "  BUKA_mara )" crlf))
)

;"starve","VI","1.BUKA_maranA"
;The poor man was literature starved to death. 	
;
(defrule starve1
(declare (salience 4900))
(id-root ?id starve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUKa_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  starve.clp 	starve1   "  ?id "  BUKa_laga )" crlf))
)

;"starve","VT","1.BUKa_laganA"
;I am starving to have something as I had not taken anything  since last night.
;
