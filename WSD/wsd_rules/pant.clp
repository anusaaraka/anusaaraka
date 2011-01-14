
(defrule pant0
(declare (salience 5000))
(id-root ?id pant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_CotA_SvAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pant.clp 	pant0   "  ?id "  eka_CotA_SvAsa )" crlf))
)

;"pant","N","1.eka_CotA_SvAsa"
;We never take pants while running.
;
(defrule pant1
(declare (salience 4900))
(id-root ?id pant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAzPa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pant.clp 	pant1   "  ?id "  hAzPa )" crlf))
)

;"pant","V","1.hAzPanA"
;As we heard the panting of  tigers in jungle, we ran away.
;
