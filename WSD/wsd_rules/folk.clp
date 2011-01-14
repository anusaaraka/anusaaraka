
(defrule folk0
(declare (salience 5000))
(id-root ?id folk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varga_viSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  folk.clp 	folk0   "  ?id "  varga_viSeRa )" crlf))
)

(defrule folk1
(declare (salience 4900))
(id-root ?id folk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  folk.clp 	folk1   "  ?id "  loka )" crlf))
)

;"folk","Adj","1.loka"
;folk music, folk dances, folk art of a country or community.
;
;