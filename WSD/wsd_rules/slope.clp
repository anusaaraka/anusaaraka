
(defrule slope0
(declare (salience 5000))
(id-root ?id slope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slope.clp 	slope0   "  ?id "  DAla )" crlf))
)

;"slope","N","1.DAla"
;You can find high slopes in hilly regions.
;
(defrule slope1
(declare (salience 4900))
(id-root ?id slope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAlU_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slope.clp 	slope1   "  ?id "  DAlU_ho )" crlf))
)

;"slope","V","1.DAlU_ho"
