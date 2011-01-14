
(defrule become0
(declare (salience 5000))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id becoming )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  become.clp  	become0   "  ?id "  yukwa )" crlf))
)

;"becoming","Adj","1.yukwa/anurUpa"
;She has a becoming hairstyle.
;
(defrule become1
(declare (salience 4900))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 friend)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp 	become1   "  ?id "  bana )" crlf))
)


(defrule become2
(declare (salience 4800))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp 	become2   "  ?id "  ho )" crlf))
)

;default_sense && category=verb	bana	0
;"become","V","1.bananA"
;I wish to become a translator.
;--"2.PabanA/uciwa_honA"
;Foul language doesn't become her.
;
;




;Modified by Meena(23.3.10) ;added "professional" in the list
;The upper middle-class tend to become the professionals .
;Added by sheetal(4-12-2009).
(defrule become3
(declare (salience 4850))
(id-root ?id become)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 problem|professional)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  become.clp    become3   "  ?id "  bana )" crlf))
)
; The sleeping of students is becoming a big problem .
