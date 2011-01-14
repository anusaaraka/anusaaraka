
(defrule overpower0
(declare (salience 5000))
(id-root ?id overpower)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id overpowering )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id niyanwraNa_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  overpower.clp  	overpower0   "  ?id "  niyanwraNa_kA )" crlf))
)

;"overpowering","Adj","1.niyanwraNa_kA"
;The military of the bigger country against the smaller neighbouring
;country was overpowering
;
(defrule overpower1
(declare (salience 4900))
(id-root ?id overpower)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyanwraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overpower.clp 	overpower1   "  ?id "  niyanwraNa_kara )" crlf))
)

;"overpower","VT","1.niyanwraNa_karanA"
;The police overpowered the thief when he showed resistence
;
;