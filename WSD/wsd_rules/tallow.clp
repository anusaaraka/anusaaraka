
(defrule tallow0
(declare (salience 5000))
(id-root ?id tallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carbI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tallow.clp 	tallow0   "  ?id "  carbI )" crlf))
)

;"tallow","N","1.carbI"
;Tallow is used in cosmetic products.
;
(defrule tallow1
(declare (salience 4900))
(id-root ?id tallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carbI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tallow.clp 	tallow1   "  ?id "  carbI_lagA )" crlf))
)

;"tallow","VT","1.carbI_lagAnA"
;He has to tallow the candles.
;
