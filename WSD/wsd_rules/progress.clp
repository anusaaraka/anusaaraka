
(defrule progress0
(declare (salience 5000))
(id-root ?id progress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pragawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  progress.clp 	progress0   "  ?id "  pragawi )" crlf))
)

;"progress","N","1.pragamana"
;people with will in their hearts can only achieve progress in their lives.
;
(defrule progress1
(declare (salience 4900))
(id-root ?id progress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  progress.clp 	progress1   "  ?id "  Age_baDa )" crlf))
)

;"progress","V","1.Age_baDanA"
;One should progress in life in spite of hardships.
;
