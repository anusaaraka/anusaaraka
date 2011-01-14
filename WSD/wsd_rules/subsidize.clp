
(defrule subsidize0
(declare (salience 5000))
(id-root ?id subsidize)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id subsidized )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sahAyawAprApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  subsidize.clp  	subsidize0   "  ?id "  sahAyawAprApwa )" crlf))
)

;"subsidized","V","1.sahAyawAprApwa"
;Aman as a friend of kamal subsidized him.
;
(defrule subsidize1
(declare (salience 4900))
(id-root ?id subsidize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArWika_sahAyawA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  subsidize.clp 	subsidize1   "  ?id "  ArWika_sahAyawA_xe )" crlf))
)

;"subsidize","V","1.ArWika sahAyawA xenA"
;Amar as a friend of kamal subsidized him.
;
;
