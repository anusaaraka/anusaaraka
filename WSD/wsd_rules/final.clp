
(defrule final0
(declare (salience 5000))
(id-root ?id final)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 report)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwima))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  final.clp 	final0   "  ?id "  aMwima )" crlf))
)

(defrule final1
(declare (salience 4900))
(id-root ?id final)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwima))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  final.clp 	final1   "  ?id "  aMwima )" crlf))
)

(defrule final2
(declare (salience 4800))
(id-root ?id final)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwima_caraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  final.clp 	final2   "  ?id "  aMwima_caraNa )" crlf))
)

;"final","N","1.aMwima_caraNa"
;He has reached the finals in the match.
;
;
