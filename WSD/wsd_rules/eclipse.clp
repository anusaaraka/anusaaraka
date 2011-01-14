
(defrule eclipse0
(declare (salience 5000))
(id-root ?id eclipse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id grahaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eclipse.clp 	eclipse0   "  ?id "  grahaNa )" crlf))
)

;"eclipse","N","1.grahaNa"
;An eclipse is a rare phenomenon.
;
(defrule eclipse1
(declare (salience 4900))
(id-root ?id eclipse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id grahaNa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eclipse.clp 	eclipse1   "  ?id "  grahaNa_lagA )" crlf))
)

;"eclipse","VT","1.grahaNa_lagAnA"
;The moon was eclipsed by the clouds.
;
