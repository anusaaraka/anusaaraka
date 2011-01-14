
(defrule monitor0
(declare (salience 5000))
(id-root ?id monitor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kakRAnAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  monitor.clp 	monitor0   "  ?id "  kakRAnAyaka )" crlf))
)

;"monitor","N","1.kakRAnAyaka"
;The monitor was ineffective.
;--"2.mOYnItara{kampyUtara_Axi_kA}"
;I bought a new monitor for my computer.
;
(defrule monitor1
(declare (salience 4900))
(id-root ?id monitor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id najZara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  monitor.clp 	monitor1   "  ?id "  najZara_raKa )" crlf))
)

;"monitor","V","1.najZara_raKanA"
;A team of experts was monitoring the progress of the project.
;
