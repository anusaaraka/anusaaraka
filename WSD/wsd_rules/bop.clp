
(defrule bop0
(declare (salience 5000))
(id-root ?id bop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pOpa_saMgIwa_para_nqwya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bop.clp 	bop0   "  ?id "  pOpa_saMgIwa_para_nqwya )" crlf))
)

;"bop","N","1.pOpa_saMgIwa_para_nqwya"
;They had a nice bop in the party.
;
(defrule bop1
(declare (salience 4900))
(id-root ?id bop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukke_yA__lATI_se_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bop.clp 	bop1   "  ?id "  mukke_yA__lATI_se_mAra )" crlf))
)

;"bop","V","1.mukke_yA__lATI_se_mAranA"
;They bopped the thief continously. 
;
