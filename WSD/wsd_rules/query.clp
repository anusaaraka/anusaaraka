
(defrule query0
(declare (salience 5000))
(id-root ?id query)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  query.clp 	query0   "  ?id "  praSna )" crlf))
)

;"query","N","1.praSna"
;The students have a number of queries on this topic. 
;
(defrule query1
(declare (salience 4900))
(id-root ?id query)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  query.clp 	query1   "  ?id "  praSna_kara )" crlf))
)

;"query","VTI","1.praSna_karanA"
;The lawyer queried the witness to prove his point
;
