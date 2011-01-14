
(defrule mentally0
(declare (salience 5000))
(id-root ?id mentally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnasika_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mentally.clp 	mentally0   "  ?id "  mAnasika_rUpa_se )" crlf))
)

;"mentally","Adj","1.mAnasika_rUpa_se"
;He is mentally challenged, not retarded.
;
(defrule mentally1
(declare (salience 4900))
(id-root ?id mentally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnasika_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mentally.clp 	mentally1   "  ?id "  mAnasika_rUpa_se )" crlf))
)

;"mentally","Adv","1.mAnasika_rUpa_se"
