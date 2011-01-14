
(defrule vermilion0
(declare (salience 5000))
(id-root ?id vermilion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siMxUrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vermilion.clp 	vermilion0   "  ?id "  siMxUrI )" crlf))
)

;"vermilion","Adj","1.siMxUrI"
;Red vermilion goes well with her dress
;
(defrule vermilion1
(declare (salience 4900))
(id-root ?id vermilion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siMxUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vermilion.clp 	vermilion1   "  ?id "  siMxUra )" crlf))
)

;"vermilion","N","1.siMxUra"
;Married Hindu women put vermilion in the parting of their hair as a sign of marriage.
;
