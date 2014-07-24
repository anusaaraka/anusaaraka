;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 5-dec-2013.  meaning changed from 'abja' to 'araba' as suggested by Chaitanya sir
; Added by human being
(defrule billion0
(declare (salience 5000))
(id-root ?id billion)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id billions)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id araba))
(assert (id-wsd_number ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  billion.clp  	billion0   "  ?id "  araba )" crlf)
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

;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 5-dec-2013.  meaning changed from 'abja' to 'araba' as suggested by Chaitanya sir
; It is made up of millions of cells.
; Added by human being
(defrule billion2
(declare (salience 4800))
(id-root ?id billion)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id araba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  billion.clp 	billion2   "  ?id "  araba )" crlf))
)

