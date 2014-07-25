(defrule lesson0
(declare (salience 5000))
(id-root ?id lesson)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id lessons)          
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pATa))
;(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lesson.clp  	lesson0   "  ?id "  pATa )" crlf))
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  lesson.clp     ;lesson0   "  ?id " s )" crlf))
)
; They developed these lessons to run on 486.



(defrule lesson1
(declare (salience 4900))
(id-root ?id lesson)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lesson.clp 	lesson1   "  ?id "  SikRA )" crlf))
)

;@@@   --- Added by Nandini(15-4-14)
;Our first lesson on Tuesdays is French. [oald]
(defrule lesson2
(declare (salience 4950))
(id-root ?id lesson)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pATa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lesson.clp 	lesson2   "  ?id "  pATa )" crlf))
)



;default_sense && category=noun	pATa	0
;"lesson","N","1.pATa"
;The fifth lesson of the book is on Indian History.
;--"2.sIKa"
;It has been a lesson to me.
;I have learnt my lesson.
;
;
