
(defrule impose0
(declare (salience 5000))
(id-root ?id impose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id imposing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praBAvaSAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  impose.clp  	impose0   "  ?id "  praBAvaSAlI )" crlf))
)

;"imposing","Adj","1.praBAvaSAlI"
;Her presence is an imposing one.
;
(defrule impose1
(declare (salience 4900))
(id-root ?id impose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impose.clp 	impose1   "  ?id "  lAgU_kara )" crlf))
)

;"impose","V","1.lAgU karanA"
;I have never imposed myself on others.
;
;