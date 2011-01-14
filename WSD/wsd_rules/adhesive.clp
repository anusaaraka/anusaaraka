
(defrule adhesive0
(declare (salience 5000))
(id-root ?id adhesive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipacipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adhesive.clp 	adhesive0   "  ?id "  cipacipA )" crlf))
)

;"adhesive","Adj","1.cipacipA"
;Nowadays, adhesive tape is an essential commodity.
;
(defrule adhesive1
(declare (salience 4900))
(id-root ?id adhesive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipakAne_vAlA_paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adhesive.clp 	adhesive1   "  ?id "  cipakAne_vAlA_paxArWa )" crlf))
)

;"adhesive","N","1.cipakAne_vAlA_paxArWa"
;Always use quick dry  adhesives for any kind of models of buildings.
;
