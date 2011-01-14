
(defrule ice0
(declare (salience 5000))
(id-root ?id ice)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id icing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AisiMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  ice.clp  	ice0   "  ?id "  AisiMga )" crlf))
)

;"icing","N","1.AisiMga"
;Icing makes cake attractive.
;
(defrule ice1
(declare (salience 4900))
(id-root ?id ice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baraPZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ice.clp 	ice1   "  ?id "  baraPZa )" crlf))
)

;"ice","N","1.baraPZa"
;We put ice in juice to chill it.
;
;