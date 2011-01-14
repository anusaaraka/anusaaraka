
(defrule few0
(declare (salience 5000))
(id-root ?id few)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  few.clp 	few0   "  ?id "  kuCa )" crlf))
)

;"few","Adj","1.kuCa"
;I was with this organisation for a few years.
;Only a few people in this area are rich.
;--"2.WodZA"
;She is a woman of few needs.
;
(defrule few1
(declare (salience 4900))
(id-root ?id few)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  few.clp 	few1   "  ?id "  kuCa )" crlf))
)

;"few","Det","1.kuCa"
;Few people know about this episode. 
;
