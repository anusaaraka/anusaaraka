
(defrule saint0
(declare (salience 5000))
(id-root ?id saint)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sainted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAXu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  saint.clp  	saint0   "  ?id "  sAXu )" crlf))
)

;"sainted","Adj","1.sAXu/sanwa"
;How is my sainted sister.
;
(defrule saint1
(declare (salience 4900))
(id-root ?id saint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAXu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  saint.clp 	saint1   "  ?id "  sAXu )" crlf))
)

;"saint","N","1.sAXu/sanwa"
;Swami Vivekanand was a great saint.
;
;