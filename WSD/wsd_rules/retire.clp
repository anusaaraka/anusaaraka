
(defrule retire0
(declare (salience 5000))
(id-root ?id retire)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id retired )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id avakASa_prApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  retire.clp  	retire0   "  ?id "  avakASa_prApwa )" crlf))
)

;"retired","Adj","1.avakASa prApwa"
;He is a retired chief medical officer.
;
(defrule retire1
(declare (salience 4900))
(id-root ?id retire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avakASa_prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retire.clp 	retire1   "  ?id "  avakASa_prApwa_kara )" crlf))
)

;"retire","VTI","1.avakASa_prApwa_karanA"
;Politicians should retire at the age of 65.
;--"2.pICe_hatanA"
;The battalion retired to take positions.
;--"3.avakASa_lenA"
;The player retired from the match with knee injury.
;The director retired from his chamber at lunch.
;
