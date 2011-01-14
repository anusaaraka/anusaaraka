
(defrule armchair0
(declare (salience 5000))
(id-root ?id armchair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuBavahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  armchair.clp 	armchair0   "  ?id "  anuBavahIna )" crlf))
)

;"armchair","Adj","1.anuBavahIna"
;He is an armchair politician.
;
(defrule armchair1
(declare (salience 4900))
(id-root ?id armchair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAmakursI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  armchair.clp 	armchair1   "  ?id "  ArAmakursI )" crlf))
)

;"armchair","N","1.ArAmakursI"
;He is sitting in the veranda in an armchair.
;
