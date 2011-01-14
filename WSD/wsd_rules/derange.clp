
(defrule derange0
(declare (salience 5000))
(id-root ?id derange)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id deranged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pAgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  derange.clp  	derange0   "  ?id "  pAgala )" crlf))
)

;"deranged","Adj","1.pAgala"
;He is completely deranged.
;
(defrule derange1
(declare (salience 4900))
(id-root ?id derange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZabadZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  derange.clp 	derange1   "  ?id "  gadZabadZa_kara )" crlf))
)

;"derange","VT","1.gadZabadZa_karanA"
;He has tried to derange the whole system.
;
;
