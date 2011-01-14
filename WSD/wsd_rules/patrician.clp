
(defrule patrician0
(declare (salience 5000))
(id-root ?id patrician)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBijAwika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patrician.clp 	patrician0   "  ?id "  aBijAwika )" crlf))
)

;"patrician","Adj","1.aBijAwika"
;He lives a patrician lifestyle.
;
(defrule patrician1
(declare (salience 4900))
(id-root ?id patrician)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kulIna_jana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patrician.clp 	patrician1   "  ?id "  kulIna_jana )" crlf))
)

;"patrician","N","1.kulIna_jana"
;He is the first patrician from Rome.
;
