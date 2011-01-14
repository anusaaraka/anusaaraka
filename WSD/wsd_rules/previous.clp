
(defrule previous0
(declare (salience 5000))
(id-root ?id previous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  previous.clp 	previous0   "  ?id "  piCalA )" crlf))
)

(defrule previous1
(declare (salience 4900))
(id-root ?id previous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrvavarwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  previous.clp 	previous1   "  ?id "  pUrvavarwI )" crlf))
)

;"previous","Adj","1.pUrvavarwI"
;The students were asked to complete all of the exercises of the previous 
;lessons before starting a new one.
;
;
