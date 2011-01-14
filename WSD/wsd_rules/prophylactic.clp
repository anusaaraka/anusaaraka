
(defrule prophylactic0
(declare (salience 5000))
(id-root ?id prophylactic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roganiroXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prophylactic.clp 	prophylactic0   "  ?id "  roganiroXI )" crlf))
)

;"prophylactic","Adj","1.roganiroXI"
;Some diseases like AIDS couldn't have proper prophalytic medicines.
;
(defrule prophylactic1
(declare (salience 4900))
(id-root ?id prophylactic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roganiroXaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prophylactic.clp 	prophylactic1   "  ?id "  roganiroXaka )" crlf))
)

;"prophylactic","N","1.roganiroXaka"
;Anti-biotic is a prophylactic.
;
