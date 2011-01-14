
(defrule swing0
(declare (salience 5000))
(id-root ?id swing)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id swinging )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id JUlawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  swing.clp  	swing0   "  ?id "  JUlawA_huA )" crlf))
)

;"swinging","Adj","1.JUlawA_huA"
;
;
(defrule swing1
(declare (salience 4900))
(id-root ?id swing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swing.clp 	swing1   "  ?id "  JUla )" crlf))
)

(defrule swing2
(declare (salience 4800))
(id-root ?id swing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swing.clp 	swing2   "  ?id "  JUma )" crlf))
)

;"swing","N","1.JUma"
;Girls walk with slight swing.
;--"2.JUlA"
;The children are playing on the swings.
;
;
