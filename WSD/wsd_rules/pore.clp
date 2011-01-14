
(defrule pore0
(declare (salience 5000))
(id-root ?id pore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA_Cexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pore.clp 	pore0   "  ?id "  CotA_Cexa )" crlf))
)

;"pore","N","1.CotA_Cexa"
;The pores in the soil helps to pass the oxyzen to the roots of the plants.
;
(defrule pore1
(declare (salience 4900))
(id-root ?id pore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariSIlana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pore.clp 	pore1   "  ?id "  pariSIlana_kara )" crlf))
)

;"pore","V","1.pariSIlana_karanA"
;She was poring over the photograph to find out the strange person in that.
;
