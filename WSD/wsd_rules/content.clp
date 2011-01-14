
(defrule content0
(declare (salience 5000))
(id-root ?id content)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id contented )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMwqRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  content.clp  	content0   "  ?id "  saMwqRta )" crlf))
)

;"contented","Adj","1.saMwqRta/wqpwa"
;She is leading a contented life.
;Are you content with your present job?
;
(defrule content1
(declare (salience 4900))
(id-root ?id content)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanwoRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  content.clp 	content1   "  ?id "  sanwoRa )" crlf))
)

;"content","N","1.sanwoRa"
;He is living in peace && content.
;--"2.nihiwa_vaswu"
;He emptied the contents of his pockets
;Food with high calorie fat content is not good for health.
;--"3.viRaya-vaswu"
;She didn't read the article that is why she is unaware of its contents.
;The content of your essay is excellent, but it is not well written.
;
(defrule content2
(declare (salience 4800))
(id-root ?id content)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanwuRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  content.clp 	content2   "  ?id "  sanwuRta_kara )" crlf))
)

;"content","VT","1.sanwuRta_karanA"
;These worldly things do not content me.
;There is no butter today,so we must content ourselves with dry bread.
;
