
(defrule singular0
(declare (salience 5000))
(id-root ?id singular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekavacana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  singular.clp 	singular0   "  ?id "  ekavacana )" crlf))
)

;"singular","Adj","1.ekavacana"
;'boy' is in singular number.
;
(defrule singular1
(declare (salience 4900))
(id-root ?id singular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asAmAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  singular.clp 	singular1   "  ?id "  asAmAnya )" crlf))
)

;"singular","N","1.asAmAnya"
;The detectives were greatly puzzled by the singular nature of the crime.
;
