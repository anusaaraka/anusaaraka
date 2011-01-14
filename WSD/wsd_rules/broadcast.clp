
(defrule broadcast0
(declare (salience 5000))
(id-root ?id broadcast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broadcast.clp 	broadcast0   "  ?id "  prasAriwa )" crlf))
)

;"broadcast","Adj","1.prasAriwa"
;The broadcast news
;The broadcast sowing of wheat
;
(defrule broadcast1
(declare (salience 4900))
(id-root ?id broadcast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAroM_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broadcast.clp 	broadcast1   "  ?id "  cAroM_ora )" crlf))
)

;"broadcast","Adv","1.cAroM_ora/PeMka_kara"
(defrule broadcast2
(declare (salience 4800))
(id-root ?id broadcast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAroM_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broadcast.clp 	broadcast2   "  ?id "  cAroM_ora )" crlf))
)

;"broadcast","V","1.cAroM_ora"
;I watch the news broadcast on our local channel.
;
(defrule broadcast3
(declare (salience 4700))
(id-root ?id broadcast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasAriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broadcast.clp 	broadcast3   "  ?id "  prasAriwa_kara )" crlf))
)

;"broadcast","VTI","1.prasAriwa_karanA"
;The event was broadcasted live on TV.
;
