
(defrule anthropoid0
(declare (salience 5000))
(id-root ?id anthropoid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnavakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anthropoid.clp 	anthropoid0   "  ?id "  mAnavakAra )" crlf))
)

;"anthropoid","Adj","1.mAnavakAra"
;Monkeys are anthoropoid ancestors of modern humans.
;
(defrule anthropoid1
(declare (salience 4900))
(id-root ?id anthropoid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxaro_kA_samUha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anthropoid.clp 	anthropoid1   "  ?id "  baMxaro_kA_samUha )" crlf))
)

;"anthropoid","N","1.baMxaro_kA_samUha"
;Anthropoid have a nuclear family system.
;
