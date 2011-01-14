
(defrule frustrate0
(declare (salience 5000))
(id-root ?id frustrate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id frustrating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nirASa_yukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  frustrate.clp  	frustrate0   "  ?id "  nirASa_yukwa )" crlf))
)

;"frustrating","Adj","1.nirASa_yukwa"
;The police made frustrating efforts to keep the mob away.
;
(defrule frustrate1
(declare (salience 4900))
(id-root ?id frustrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frustrate.clp 	frustrate1   "  ?id "  nirASa_kara )" crlf))
)

;"frustrate","VT","1.nirASa_karanA"
;Constant failures frustrated him.
;The businessman tried to frustrate his partner by secret dealings.
;
;