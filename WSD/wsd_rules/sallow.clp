
(defrule sallow0
(declare (salience 5000))
(id-root ?id sallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sallow.clp 	sallow0   "  ?id "  pIlA )" crlf))
)

;"sallow","Adj","1.pIlA"
;She seemed to be sallow && drawn
;
(defrule sallow1
(declare (salience 4900))
(id-root ?id sallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bexamajanUM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sallow.clp 	sallow1   "  ?id "  bexamajanUM )" crlf))
)

;"sallow","N","1.bexamajanUM"
;I planted two sallow trees in my garden.
;
