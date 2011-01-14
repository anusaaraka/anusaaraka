
(defrule intellectual0
(declare (salience 5000))
(id-root ?id intellectual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bOxXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intellectual.clp 	intellectual0   "  ?id "  bOxXika )" crlf))
)

(defrule intellectual1
(declare (salience 4900))
(id-root ?id intellectual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buxXigawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intellectual.clp 	intellectual1   "  ?id "  buxXigawa )" crlf))
)

;"intellectual","Adj","1.buxXigawa"
;Child's intellectual development depends on the upbringing && environment.
;factors.
;--"2.prajFAvAna"
;An intellectual person always foresees an act.
;
;
