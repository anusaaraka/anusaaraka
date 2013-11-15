
(defrule weight0
(declare (salience 5000))
(id-root ?id weight)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 responsibility )
(viSeRya-of_saMbanXI ?id1 ?id) ;Replaced viSeRya-of_viSeRaNa as viSeRya-of_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id boJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weight.clp 	weight0   "  ?id "  boJa )" crlf))
)

(defrule weight1
(declare (salience 4900))
(id-root ?id weight)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 measure)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weight.clp 	weight1   "  ?id "  BAra )" crlf))
)

(defrule weight2
(declare (salience 4800))
(id-root ?id weight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vajana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weight.clp 	weight2   "  ?id "  vajana )" crlf))
)

(defrule weight3
(declare (salience 4700))
(id-root ?id weight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAra_baDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weight.clp 	weight3   "  ?id "  BAra_baDA )" crlf))
)

;"weight","VT","1.BAra_baDAnA"
;Arun is puny.He has to add weight.
;
;
