
(defrule provincial0
(declare (salience 5000))
(id-root ?id provincial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAnwIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provincial.clp 	provincial0   "  ?id "  prAnwIya )" crlf))
)

;"provincial","Adj","1.prAnwIya"
;Provincial taxes are very less in some provinces.
;--"2.saMkIrNa"
;Provincial attitudes will not help to become gentle.
;
(defrule provincial1
(declare (salience 4900))
(id-root ?id provincial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAnwavAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  provincial.clp 	provincial1   "  ?id "  prAnwavAsI )" crlf))
)

;"provincial","N","1.prAnwavAsI"
;Provincial taxes are higher on certain commodities.
;
