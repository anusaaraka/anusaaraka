
(defrule wag0
(declare (salience 5000))
(id-root ?id wag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaToliyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wag.clp 	wag0   "  ?id "  TaToliyA )" crlf))
)

;"wag","N","1.TaToliyA"
;Children like the wag in the play
;
(defrule wag1
(declare (salience 4900))
(id-root ?id wag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wag.clp 	wag1   "  ?id "  hila )" crlf))
)

;"wag","VTI","1.hilanA"
;The dog wagged its tail
;
