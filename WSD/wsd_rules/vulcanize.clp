
(defrule vulcanize0
(declare (salience 5000))
(id-root ?id vulcanize)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id vulcanised )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ganXakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  vulcanize.clp  	vulcanize0   "  ?id "  ganXakI )" crlf))
)

;"vulcanised","Adj","1.ganXakI"
;These tyres are vulcanised
;
(defrule vulcanize1
(declare (salience 4900))
(id-root ?id vulcanize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id valkaniwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vulcanize.clp 	vulcanize1   "  ?id "  valkaniwa_kara )" crlf))
)

;"vulcanize","V","1.valkaniwa_karanA2"
