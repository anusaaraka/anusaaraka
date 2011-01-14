
(defrule nudge0
(declare (salience 5000))
(id-root ?id nudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tahokA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nudge.clp 	nudge0   "  ?id "  tahokA )" crlf))
)

;"nudge","N","1.tahokA"
;He was given a nudge.
;
(defrule nudge1
(declare (salience 4900))
(id-root ?id nudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuhanI_se_CU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nudge.clp 	nudge1   "  ?id "  kuhanI_se_CU )" crlf))
)

;"nudge","VT","1.kuhanI_se_CUnA"
;He nudged that boy.
;
