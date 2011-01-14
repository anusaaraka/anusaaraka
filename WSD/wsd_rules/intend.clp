
(defrule intend0
(declare (salience 5000))
(id-root ?id intend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id intended )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uxXiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  intend.clp  	intend0   "  ?id "  uxXiRta )" crlf))
)

;"intended","Adj","1.uxXiRta"
;The professor completed the book intended for class 8th.
;
(defrule intend1
(declare (salience 4900))
(id-root ?id intend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id irAxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intend.clp 	intend1   "  ?id "  irAxA_kara )" crlf))
)

;default_sense && category=verb	irAxA_raKa	0
;"intend","VTI","1.irAxA_raKanA"
;I intend to complete this work by evening.
;--"2.nimiwwa_honA"
;Cars are intended for the scrapyard.
;
;