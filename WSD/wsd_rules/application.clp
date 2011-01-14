
(defrule application0
(declare (salience 5000))
(id-root ?id application)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  application.clp 	application0   "  ?id "  upayoga )" crlf))
)

;These are some of the applications of space science.
(defrule application1
(declare (salience 4900))
(id-root ?id application)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  application.clp 	application1   "  ?id "  prayoga )" crlf))
)

;Added by sheetal
;Please enclose a curriculum vitae with your letter of application .
(defrule application2
(declare (salience 4950))
(id-root ?id application)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  letter)
(viSeRya-of_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  application.clp       application2   "  ?id "  - )" crlf))
)


;default_sense && category=noun	prArWanA_pawra	0
;"application","N","1.prArWanA_pawra"
;Application forms are available with the booking clerk from 11.00 to 16.00 hr.
;Avoid frequent application of the brakes .
;--"2.prayoga"
;The application of 'BURNOL' on burns is in common use nowadays .
;Street application of traffic rules avoid so many accidents .
;
;
