
(defrule canker0
(declare (salience 5000))
(id-root ?id canker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAsUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  canker.clp 	canker0   "  ?id "  nAsUra )" crlf))
)

;"canker","N","1.nAsUra"
;She has a few cankers on her lower lip.
;--"2.BraRtAcAra_kA_kArana"
;Poverty is a canker in underdeveloped countries.
;
(defrule canker1
(declare (salience 4900))
(id-root ?id canker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  canker.clp 	canker1   "  ?id "  sadZa_jA )" crlf))
)

;"canker","VI","1.sadZa_jAnA"
;The Kashmiri rose plant cankered last month.
;
(defrule canker2
(declare (salience 4800))
(id-root ?id canker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadZA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  canker.clp 	canker2   "  ?id "  sadZA_xe )" crlf))
)

;"canker","VT","1.sadZA_xenA"
;A few dishonest men can canker the whole crew.
;
