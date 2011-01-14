
(defrule local0
(declare (salience 5000))
(id-root ?id local)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAnIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  local.clp 	local0   "  ?id "  sWAnIya )" crlf))
)

;"local","Adj","1.sWAnIya"
;A local resident.
;--"2.sImiwa"
;A local problem affecting certain areas.
;
(defrule local1
(declare (salience 4900))
(id-root ?id local)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAnIya_nivAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  local.clp 	local1   "  ?id "  sWAnIya_nivAsI )" crlf))
)

;"local","N","1.sWAnIya_nivAsI"
;Locals are raising their voice against encroachment.
;
