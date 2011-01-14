
(defrule upturn0
(declare (salience 5000))
(id-root ?id upturn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id upturned )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ulatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  upturn.clp  	upturn0   "  ?id "  ulatA )" crlf))
)

;"upturned","Adj","1.ulatA"
;She sat on an upturned crate.
;
(defrule upturn1
(declare (salience 4900))
(id-root ?id upturn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upturn.clp 	upturn1   "  ?id "  suXAra )" crlf))
)

;"upturn","N","1.suXAra"
;This year's sale of greeting cards took an upturn.
;
;