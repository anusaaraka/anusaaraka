
(defrule giant0
(declare (salience 5000))
(id-root ?id giant)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  giant.clp 	giant0   "  ?id "  bahuwa_badZA )" crlf))
)

;"giant","Adj","1.bahuwa_badZA"
;A giant T.V. screen was put up in pubs to show matches.
;
(defrule giant1
(declare (salience 4900))
(id-root ?id giant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xEwya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  giant.clp 	giant1   "  ?id "  xEwya )" crlf))
)

;"giant","N","1.xEwya"
;Yetis are the giants of Himalayas.
;
