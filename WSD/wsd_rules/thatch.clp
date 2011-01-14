
(defrule thatch0
(declare (salience 5000))
(id-root ?id thatch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cappara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thatch.clp 	thatch0   "  ?id "  Cappara )" crlf))
)

;"thatch","N","1.Cappara"
;The huts were made of thatch in the hermitage.
;
(defrule thatch1
(declare (salience 4900))
(id-root ?id thatch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cappara_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thatch.clp 	thatch1   "  ?id "  Cappara_dAla )" crlf))
)

;"thatch","VT","1.Cappara_dAlanA"
;Straw is used to thatch the roof.
;
