
(defrule eighty0
(declare (salience 5000))
(id-root ?id eighty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id assI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eighty.clp 	eighty0   "  ?id "  assI )" crlf))
)

;"eighty","Det","1.assI"
;There are eighty verses in the book.
;
(defrule eighty1
(declare (salience 4900))
(id-root ?id eighty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id assI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eighty.clp 	eighty1   "  ?id "  assI )" crlf))
)

;"eighty","N","1.assI"
;There are eighty verses in the book.
;
