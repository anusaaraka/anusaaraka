; Added by human being
(defrule billion0
(declare (salience 5000))
(id-root ?id billion)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id billions)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id abja))
(assert (id-wsd_number ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  billion.clp  	billion0   "  ?id "  abja )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  billion.clp    billion0   "  ?id " p )" crlf))
)

(defrule billion1
(declare (salience 4900))
(id-root ?id billion)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id abjoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  billion.clp 	billion1   "  ?id "  abjoM )" crlf))
)

; It is made up of millions of cells.
; Added by human being
(defrule billion2
(declare (salience 4800))
(id-root ?id billion)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id abja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  billion.clp 	billion2   "  ?id "  abja )" crlf))
)

