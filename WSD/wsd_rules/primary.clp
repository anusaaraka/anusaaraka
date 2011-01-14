
(defrule primary0
(declare (salience 5000))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primary.clp 	primary0   "  ?id "  Axya )" crlf))
)

;"primary","Adj","1.Axya"
;The doctor cured the disease in its primary stage only.
;--"2.mUla"
;The primary aim of N.S.S. is to produce social volunteers.
;--"3.prAWamika"
;One must possess primary education for high school study.
;
(defrule primary1
(declare (salience 4900))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_prakAra_kA_nirvAcana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primary.clp 	primary1   "  ?id "  eka_prakAra_kA_nirvAcana )" crlf))
)

;"primary","N","1.eka_prakAra_kA_nirvAcana"
;He won by a great margin in primary elections.
;
