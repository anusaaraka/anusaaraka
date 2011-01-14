;Added by human
(defrule ten0
(declare (salience 5000))
(id-root ?id ten)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tens)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xasoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  ten.clp  	ten0   "  ?id "  xasoM )" crlf))
)

;
;
(defrule ten1
(declare (salience 4900))
(id-root ?id ten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ten.clp 	ten1   "  ?id "  xasa )" crlf))
)

;"ten","Det","1.xasa"
;It is a ten gallon barrel.
;
(defrule ten2
(declare (salience 4800))
(id-root ?id ten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ten.clp 	ten2   "  ?id "  xasa )" crlf))
)

;"ten","N","1.xasa"
;It is a ten gallon barrel.
;
