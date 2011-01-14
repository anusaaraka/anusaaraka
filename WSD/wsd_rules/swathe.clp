
(defrule swathe0
(declare (salience 5000))
(id-root ?id swathe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swathe.clp 	swathe0   "  ?id "  pattI )" crlf))
)

;"swathe","N","1.pattI"
;A swathe of daffodils.
;
(defrule swathe1
(declare (salience 4900))
(id-root ?id swathe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swathe.clp 	swathe1   "  ?id "  bAzXa )" crlf))
)

;"swathe","V","1.bAzXanA/lapetanA"
;Thick bandages swathed his head.
;
