
(defrule crib0
(declare (salience 5000))
(id-root ?id crib)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAMxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crib.clp 	crib0   "  ?id "  nAMxa )" crlf))
)

;"crib","N","1.nAMxa/tokarA"
;Cattles usually eat its fodder from the crib. 
;--"2.pAlanA/KatolA"
;She bought a beautiful crib from the emporium for her baby. 
;
(defrule crib1
(declare (salience 4900))
(id-root ?id crib)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crib.clp 	crib1   "  ?id "  nakala_kara )" crlf))
)

;"crib","VT","1.nakala_karanA"
;She was caught cribbing in the exams.
;
