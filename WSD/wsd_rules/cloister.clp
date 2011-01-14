
(defrule cloister0
(declare (salience 5000))
(id-root ?id cloister)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id cloistered )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ekAnwavAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cloister.clp  	cloister0   "  ?id "  ekAnwavAsI )" crlf))
)

;"cloistered","Adj","1.ekAnwavAsI"
;The nuns live a cloistered life.
;
(defrule cloister1
(declare (salience 4900))
(id-root ?id cloister)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekAnwasWala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cloister.clp 	cloister1   "  ?id "  ekAnwasWala )" crlf))
)

;"cloister","N","1.ekAnwasWala"
;The convent is a calm cloister.
;
;
