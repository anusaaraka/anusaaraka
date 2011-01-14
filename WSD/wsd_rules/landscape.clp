
(defrule landscape0
(declare (salience 5000))
(id-root ?id landscape)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id landscaping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BUxqSya_nirmANa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  landscape.clp  	landscape0   "  ?id "  BUxqSya_nirmANa )" crlf))
)

;"landscaping","N","1.BUxqSya nirmANa"
;
(defrule landscape1
(declare (salience 4900))
(id-root ?id landscape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAkqwika_xqSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  landscape.clp 	landscape1   "  ?id "  prAkqwika_xqSya )" crlf))
)

;"landscape","N","1.prAkqwika_xqSya"
;I always enjoy landscapes near the sea.
;
(defrule landscape2
(declare (salience 4800))
(id-root ?id landscape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUxqSya_kA_nirmANa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  landscape.clp 	landscape2   "  ?id "  BUxqSya_kA_nirmANa_kara )" crlf))
)

;"landscape","V","1.BUxqSya_kA_nirmANa_karanA"
;I have to landscape my new garden.
;
