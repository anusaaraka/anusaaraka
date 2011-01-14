
(defrule fallow0
(declare (salience 5000))
(id-root ?id fallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_lAla_yA_pIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fallow.clp 	fallow0   "  ?id "  kuCa_lAla_yA_pIlA )" crlf))
)

;"fallow","Adj","1.kuCa_lAla_yA_pIlA"
;There are lots of fallow farmland in Punjab.
;
(defrule fallow1
(declare (salience 4900))
(id-root ?id fallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fallow.clp 	fallow1   "  ?id "  parawI )" crlf))
)

;"fallow","N","1.parawI{BUmi}"
;There are many fallows in our country.
;
(defrule fallow2
(declare (salience 4800))
(id-root ?id fallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jowa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fallow.clp 	fallow2   "  ?id "  jowa )" crlf))
)

;"fallow","VT","1.jowanA"
;The farmer fallowed the farmland.
;
