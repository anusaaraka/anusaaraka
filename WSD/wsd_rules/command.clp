
(defrule command0
(declare (salience 5000))
(id-root ?id command)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id commanding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SakwiSAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  command.clp  	command0   "  ?id "  SakwiSAlI )" crlf))
)

;In his comanding voice
(defrule command1
(declare (salience 4900))
(id-root ?id command)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAsana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  command.clp 	command1   "  ?id "  SAsana )" crlf))
)

(defrule command2
(declare (salience 4800))
(id-root ?id command)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAsana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  command.clp 	command2   "  ?id "  SAsana_kara )" crlf))
)

;"command","VT","1.SAsana_karanA"
;The general commanded a huge army
;--"2.mAzganA"
;This speaker commands a high fee
;
;
