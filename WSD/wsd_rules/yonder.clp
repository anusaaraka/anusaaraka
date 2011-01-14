
(defrule yonder0
(declare (salience 5000))
(id-root ?id yonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pare_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yonder.clp 	yonder0   "  ?id "  pare_kA )" crlf))
)

;"yonder","Adj","1.pare_kA"
;I can see yonder rose plants from my window.
;
(defrule yonder1
(declare (salience 4900))
(id-root ?id yonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yonder.clp 	yonder1   "  ?id "  pare )" crlf))
)

;"yonder","Adv","1.pare"
;What is that red thing (over)yonder?
;
