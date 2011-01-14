
(defrule diminutive0
(declare (salience 5000))
(id-root ?id diminutive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awi_CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diminutive.clp 	diminutive0   "  ?id "  awi_CotA )" crlf))
)

;"diminutive","Adj","1.awi_CotA"
;The joker in circus was diminutive in stature.
;
(defrule diminutive1
(declare (salience 4900))
(id-root ?id diminutive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laGu_saMjFA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diminutive.clp 	diminutive1   "  ?id "  laGu_saMjFA )" crlf))
)

;"diminutive","N","1.laGu_saMjFA"
;`Hari'is the diminutive of the name `Harikrishna'.
;
