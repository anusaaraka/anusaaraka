
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
;Added by Prachi Rathore[23-11-13]
;The course is intended for intermediate-level students.
;कोर्स इंटरमीडिएट के विध्यार्थी के स्तर के आधार पर नियोजित किया गया है.
(defrule intend2
(declare (salience 5000))
(id-root ?id intend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyojiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intend.clp 	intend2   "  ?id "  niyojiwa_kara )" crlf))
)

;Added by Prachi Rathore[23-11-13]
;It was intended as a compliment, honestly!
;सच में ,यह प्रशंसा के इरादे से किया गया  था .
(defrule intend3
(declare (salience 5000))
(id-root ?id intend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id irAxe_se_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intend.clp 	intend3   "  ?id "  irAxe_se_kara )" crlf))
)
