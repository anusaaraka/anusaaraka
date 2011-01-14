
(defrule badger0
(declare (salience 5000))
(id-root ?id badger)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bijjU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  badger.clp 	badger0   "  ?id "  bijjU )" crlf))
)

;"badger","N","1.bijjU"
;Badgers move in the night.
;bijjU rAwa meM GUmawe hEM.
;
(defrule badger1
(declare (salience 4900))
(id-root ?id badger)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICaNa__daPO))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  badger.clp 	badger1   "  ?id "  pICaNa__daPO )" crlf))
)

;"badger","VT","1.pICaNa__daPO"
;Tom has been badgering his father to buy him a Camera.
;tOma kEmarA xilAne ke lie apane piwA ke pICe padZA hE.
;
