
(defrule fourteenth0
(declare (salience 5000))
(id-root ?id fourteenth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOxahavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fourteenth.clp 	fourteenth0   "  ?id "  cOxahavAz )" crlf))
)

;"fourteenth","Det","1.cOxahavAz"
;The help arrived on the fourteenth day.
;
(defrule fourteenth1
(declare (salience 4900))
(id-root ?id fourteenth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOxahavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fourteenth.clp 	fourteenth1   "  ?id "  cOxahavAz )" crlf))
)

;"fourteenth","N","1.cOxahavAz"
;The help arrived on the fourteenth day.
;
