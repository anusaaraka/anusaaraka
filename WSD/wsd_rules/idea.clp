;She is full of bright ideas .
;vaha camakIle vicAroM se BarA #huA hE

;Added by sheetal (10-09-09).
(defrule sh-idea0
(declare (salience 5000))
(id-root ?id idea)
?mng <- (meaning_to_be_decided ?id)
(id-word ?id1 bright)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idea.clp    sh-idea0   " ?id "  vicAra )" crlf))
)

;Added by sheetal (10-09-09).
(defrule sh-idea2
(declare (salience 4800))
(id-root ?id idea)
?mng <- (meaning_to_be_decided ?id)
(or (id-word =(- ?id 1) no|any)(id-word ?id1 cost))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  idea.clp       sh-idea2   "  ?id "  jAnakArI )" crlf))
)
;Do you have any idea of what he looks like?
;Can you give me an idea of the cost ?

