
(defrule programme0
(declare (salience 5000))
(id-root ?id programme)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id programming )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id programa_liKane_kA_warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  programme.clp  	programme0   "  ?id "  programa_liKane_kA_warIkA )" crlf))
)

;"programming","N","1.programa liKane kA warIkA"
;Programming should be so attractive that everyone should be impressed by that.
;
(defrule programme1
(declare (salience 4900))
(id-root ?id programme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryakrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  programme.clp 	programme1   "  ?id "  kAryakrama )" crlf))
)

(defrule programme2
(declare (salience 4800))
(id-root ?id programme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryakrama_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  programme.clp 	programme2   "  ?id "  kAryakrama_banA )" crlf))
)

;"programme","V","1.kAryakrama banAnA"
;They have programmed the list && you are the first to speak.
;
;