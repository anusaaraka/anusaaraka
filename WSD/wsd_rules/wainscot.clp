
(defrule wainscot0
(declare (salience 5000))
(id-root ?id wainscot)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wainscoting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id waKwabanxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wainscot.clp  	wainscot0   "  ?id "  waKwabanxI )" crlf))
)

;"wainscoting","N","1.waKwabanxI"
(defrule wainscot1
(declare (salience 4900))
(id-root ?id wainscot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waKwabanxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wainscot.clp 	wainscot1   "  ?id "  waKwabanxI )" crlf))
)

;"wainscot","N","1.waKwabanxI"
;
;