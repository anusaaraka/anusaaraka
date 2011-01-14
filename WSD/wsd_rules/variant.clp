
(defrule variant0
(declare (salience 5000))
(id-root ?id variant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Binna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  variant.clp 	variant0   "  ?id "  Binna )" crlf))
)

;"variant","Adj","1.Binna"
;Variant suits are available in the show room
;
(defrule variant1
(declare (salience 4900))
(id-root ?id variant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BinnarUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  variant.clp 	variant1   "  ?id "  BinnarUpa )" crlf))
)

;"variant","N","1.BinnarUpa"
;The school has many variants
;
