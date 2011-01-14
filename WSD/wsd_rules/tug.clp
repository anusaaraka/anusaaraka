
(defrule tug0
(declare (salience 5000))
(id-root ?id tug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JatakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tug.clp 	tug0   "  ?id "  JatakA )" crlf))
)

;"tug","N","1.JatakA"
;The crowd gave a tug && there was stampede.
;
(defrule tug1
(declare (salience 4900))
(id-root ?id tug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jatake_se_KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tug.clp 	tug1   "  ?id "  Jatake_se_KIMca )" crlf))
)

;"tug","VTI","1.Jatake_se_KIMcanA"
;He tugged so hard that the latch broke.
;
