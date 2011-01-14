
(defrule overflow0
(declare (salience 5000))
(id-root ?id overflow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bADZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overflow.clp 	overflow0   "  ?id "  bADZa )" crlf))
)

;"overflow","N","1.bADZa"
;The people stopped the overflow of water by constucting bund 
;--"2.aXikawA"
;
(defrule overflow1
(declare (salience 4900))
(id-root ?id overflow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinAre_se_baha_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overflow.clp 	overflow1   "  ?id "  kinAre_se_baha_nikala )" crlf))
)

;"overflow","VTI","1.kinAre_se_baha_nikalanA"
;The river overfowed due to inceesant rain
;
