
(defrule limp0
(declare (salience 5000))
(id-root ?id limp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lacIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limp.clp 	limp0   "  ?id "  lacIlA )" crlf))
)

;"limp","Adj","1.lacIlA"
;Paper-back books have limp covers.
;--"2.SakwihIna"
;Due to the injury his leg has become quite limp.
;
(defrule limp1
(declare (salience 4900))
(id-root ?id limp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laMgadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limp.clp 	limp1   "  ?id "  laMgadA )" crlf))
)

;"limp","V","1.laMgadAnA"
;He limps a lot.
;--"2.kaTinAI_se_Age_baDa_pAnA"
;The boat limped into the harbour.
;
