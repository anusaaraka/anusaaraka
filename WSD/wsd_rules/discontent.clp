
(defrule discontent0
(declare (salience 5000))
(id-root ?id discontent)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id discontented )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id asanwuRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  discontent.clp  	discontent0   "  ?id "  asanwuRta )" crlf))
)

;"discontented","Adj","1.asanwuRta"
;I saw many discontented faces in the room.
;
(defrule discontent1
(declare (salience 4900))
(id-root ?id discontent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asanwuRta_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discontent.clp 	discontent1   "  ?id "  asanwuRta_ho )" crlf))
)

;"discontent","V","1.asanwuRta_ho"
