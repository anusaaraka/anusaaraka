
(defrule express0
(declare (salience 5000))
(id-root ?id express)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGra_jAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  express.clp 	express0   "  ?id "  SIGra_jAne_vAlA )" crlf))
)

;"express","Adj","1.SIGra_jAne_vAlA"
;I'm going to Indore in express train.
;--"2.spaRta"
;It was her express wish to get her son married to a poor girl.
;
(defrule express1
(declare (salience 4900))
(id-root ?id express)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  express.clp 	express1   "  ?id "  vyakwa_kara )" crlf))
)

;"express","VT","1.vyakwa_karanA"
;She expressed her feelings very clearly.
;
