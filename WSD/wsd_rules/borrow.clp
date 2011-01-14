
(defrule borrow0
(declare (salience 5000))
(id-root ?id borrow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id borrowing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id qNa_lenA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  borrow.clp  	borrow0   "  ?id "  qNa_lenA )" crlf))
)

;"borrowing","N","1.qNa_lenA"
;The word'maidan'is an example of borrowing from Hindi to English.
;
(defrule borrow1
(declare (salience 4900))
(id-root ?id borrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uXAra_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  borrow.clp 	borrow1   "  ?id "  uXAra_le )" crlf))
)

;default_sense && category=verb	uXAra_le	0
;"borrow","V","1.uXAra_lenA"
;Can I borrow some money from you?
;--"2.uXAra_liyA_huA"  
;They have borrowed music from other composers.
;
;
