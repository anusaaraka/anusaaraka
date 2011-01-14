
(defrule fleck0
(declare (salience 5000))
(id-root ?id fleck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciwwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fleck.clp 	fleck0   "  ?id "  ciwwI )" crlf))
)

;"fleck","N","1.ciwwI"
;There is a fleck of dust on your coat.
;
(defrule fleck1
(declare (salience 4900))
(id-root ?id fleck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xabbe_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fleck.clp 	fleck1   "  ?id "  Xabbe_dAla )" crlf))
)

;"fleck","V","1.Xabbe_dAlanA"
;While painting the house, he got flecked his clothes with paint.
;
