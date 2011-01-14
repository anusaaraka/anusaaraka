
(defrule spout0
(declare (salience 5000))
(id-root ?id spout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spout.clp 	spout0   "  ?id "  nala )" crlf))
)

;"spout","N","1.nala"
;The spout gets blocked with some dust in it.
;
(defrule spout1
(declare (salience 4900))
(id-root ?id spout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vega_se_PUharA_CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spout.clp 	spout1   "  ?id "  vega_se_PUharA_CodZa )" crlf))
)

;"spout","V","1.vega_se_PUharA_CodZanA"
;The gardener spoouts the water to the grass.
;
