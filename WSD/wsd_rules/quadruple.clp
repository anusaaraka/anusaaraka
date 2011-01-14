
(defrule quadruple0
(declare (salience 5000))
(id-root ?id quadruple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOgunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quadruple.clp 	quadruple0   "  ?id "  cOgunA )" crlf))
)

;"quadruple","Adj","1.cOgunA/cAragunA"
;The music contain quadruple measure.
;
(defrule quadruple1
(declare (salience 4900))
(id-root ?id quadruple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOgunI_saMKyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quadruple.clp 	quadruple1   "  ?id "  cOgunI_saMKyA )" crlf))
)

;"quadruple","N","1.cOgunI_saMKyA"
;One of the pups in the quadruple looked different.
;
(defrule quadruple2
(declare (salience 4800))
(id-root ?id quadruple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOgunA_karanA_yA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quadruple.clp 	quadruple2   "  ?id "  cOgunA_karanA_yA_ho )" crlf))
)

;"quadruple","VTI","1.cOgunA_karanA_yA_ho"
;His stock earning quadruple.
;
