
(defrule convince0
(declare (salience 5000))
(id-root ?id convince)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id convincing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id niScayAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  convince.clp  	convince0   "  ?id "  niScayAwmaka )" crlf))
)

;"convincing","Adj","1.niScayAwmaka"
;Her coach was pleased by her convincing victory.
;Her arguments were convincing.
;
(defrule convince1
(declare (salience 4900))
(id-root ?id convince)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvAsa_karavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convince.clp 	convince1   "  ?id "  viSvAsa_karavA )" crlf))
)

;"convince","V","1.viSvAsa_karavA{pramANa_Axi_xvArA}"
(defrule convince2
(declare (salience 4800))
(id-root ?id convince)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convince.clp 	convince2   "  ?id "  samaJA_xe )" crlf))
)

;"convince","VT","1.samaJA_xenA"
;He had finally convinced several customers of the advantages of his product
;--"2.xqDZa_mawa_honA"
;I am convinced of her sincerity.
;
