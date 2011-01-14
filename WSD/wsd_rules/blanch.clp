
(defrule blanch0
(declare (salience 5000))
(id-root ?id blanch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id blanched )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id PIkA_padZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  blanch.clp  	blanch0   "  ?id "  PIkA_padZA )" crlf))
)

;"blanched","Adj","1.PIkA_padZA"
(defrule blanch1
(declare (salience 4900))
(id-root ?id blanch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIkA_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blanch.clp 	blanch1   "  ?id "  PIkA_padZa )" crlf))
)

;"blanch","V","1.PIkA_padZa"
