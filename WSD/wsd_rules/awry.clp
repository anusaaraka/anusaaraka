
(defrule awry0
(declare (salience 5000))
(id-root ?id awry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZabadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awry.clp 	awry0   "  ?id "  gadZabadZa )" crlf))
)

;"awry","Adj","1.gadZabadZa/teDZA"
;His plans to visit Germany was went awry.
;jarmanI jAne kI usakI yojanA gadZabadZA gaI.
;
(defrule awry1
(declare (salience 4900))
(id-root ?id awry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  awry.clp 	awry1   "  ?id "  teDZA )" crlf))
)

;"awry","Adv","1.teDZA"
;His clothes were all awry.
;
