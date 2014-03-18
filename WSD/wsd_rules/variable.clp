;Added by Meena (18.02.10)
;The native speakers of English do not produce a variable mishmash of words . 
(defrule variable0
(declare (salience 5000))
(id-root ?id variable)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  variable.clp  variable0   "  ?id "  parivarwanIya )" crlf))
)



;Salience reduced by Meena(18.02.10)
(defrule variable1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id variable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  variable.clp 	variable0   "  ?id "  parivarwanaSIla )" crlf))
)

;"variable","Adj","1.parivarwanaSIla"
;Prices are variable in the supermarket
;


;Salience reduced by Meena(18.02.10)
(defrule variable2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id variable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwanaSIla_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  variable.clp 	variable2   "  ?id "  parivarwanaSIla_vaswu )" crlf))
)

;"variable","N","1.parivarwanaSIla_vaswu"
;Take `X' as a variable here.
;
