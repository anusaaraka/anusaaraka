
(defrule dump0
(declare (salience 5000))
(id-root ?id dump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dump.clp 	dump0   "  ?id "  Dera )" crlf))
)

;"dump","N","1.Dera{kUdZe_iwyAxi_kA}"
(defrule dump1
(declare (salience 4900))
(id-root ?id dump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dump.clp 	dump1   "  ?id "  pataka )" crlf))
)

;"dump","VT","1.patakanA"
;The company dumped him after many years of service
;--"2.kUdZe_kI_waraha_PeMkanA"
;No dumping in these woods!
;
