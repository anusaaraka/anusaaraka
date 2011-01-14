
(defrule coat0
(declare (salience 5000))
(id-root ?id coat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id coating )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id parawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  coat.clp  	coat0   "  ?id "  parawa )" crlf))
)

(defrule coat1
(declare (salience 4900))
(id-root ?id coat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kota))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coat.clp 	coat1   "  ?id "  kota )" crlf))
)

(defrule coat2
(declare (salience 4800))
(id-root ?id coat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lepa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coat.clp 	coat2   "  ?id "  lepa )" crlf))
)

;"coat","V","1.lepanA"
;I ate biscuits coated with chocolate.
;
;
