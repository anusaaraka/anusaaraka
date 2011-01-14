
(defrule spank0
(declare (salience 5000))
(id-root ?id spank)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id spanking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pitAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  spank.clp  	spank0   "  ?id "  pitAI )" crlf))
)

;"spanking","N","1.pitAI"
;The boy got a sound spanking.
;
(defrule spank1
(declare (salience 4900))
(id-root ?id spank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Wappada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spank.clp 	spank1   "  ?id "  Wappada )" crlf))
)

;"spank","N","1.Wappada"
;The angry brother gave a spank to his younger brother.
;
;