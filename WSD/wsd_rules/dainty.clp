
(defrule dainty0
(declare (salience 5000))
(id-root ?id dainty)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rucira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dainty.clp 	dainty0   "  ?id "  rucira )" crlf))
)

;"dainty","Adj","1.rucira/suhAvanA"
;A dainty teacup
;A dainty dish to set before a kind man.
;
(defrule dainty1
(declare (salience 4900))
(id-root ?id dainty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rucira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dainty.clp 	dainty1   "  ?id "  rucira )" crlf))
)

;"dainty","N","1.rucira/svAxiRta_vaswu/prasAxa"
;We couldnt get our eyes off the dainty porcelain vases.
;
