
(defrule outstretch0
(declare (salience 5000))
(id-root ?id outstretch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id outstretched )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id PElAyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  outstretch.clp  	outstretch0   "  ?id "  PElAyA_huA )" crlf))
)

;"outstretched","Adj","1.PElAyA huA"
;The child ran to her mama with her arms outstretched.
;
(defrule outstretch1
(declare (salience 4900))
(id-root ?id outstretch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outstretch.clp 	outstretch1   "  ?id "  PElA )" crlf))
)

;"outstretch","V","1.PElA{bAhara_ko}"
