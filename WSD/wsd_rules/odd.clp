
(defrule odd0
(declare (salience 5000))
(id-root ?id odd)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajIba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  odd.clp 	odd0   "  ?id "  ajIba )" crlf))
)

(defrule odd1
(declare (salience 4900))
(id-root ?id odd)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  odd.clp 	odd1   "  ?id "  viRama )" crlf))
)

;"odd","Adj","1.viRama"
;Three is an odd number.
;
;
