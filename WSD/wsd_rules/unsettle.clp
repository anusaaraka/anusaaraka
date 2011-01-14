
(defrule unsettle0
(declare (salience 5000))
(id-root ?id unsettle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id unsettled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id asWira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  unsettle.clp  	unsettle0   "  ?id "  asWira )" crlf))
)

;"unsettled","Adj","1.asWira/aniSciwa"
;He leads  an unsettled lifestyle.
;
(defrule unsettle1
(declare (salience 4900))
(id-root ?id unsettle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unsettle.clp 	unsettle1   "  ?id "  hatA )" crlf))
)

;"unsettle","VT","1.hatA/asWira_kara/gadZabadZa_kara"
;Their divorce seems to have unsettled the children.
;
;