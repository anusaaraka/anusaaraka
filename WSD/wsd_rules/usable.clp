
;Added by sheetal(09-09-09)
(defrule usable0
(declare (salience 5000))
(id-root ?id usable)
?mng <- (meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id upayogI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*"   usable.clp     usable0   " ?id "  upayogI )" crlf))
)
;To pretend that our program is usable in its current form would be silly .
