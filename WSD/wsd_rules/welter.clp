
(defrule welter0
(declare (salience 5000))
(id-root ?id welter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAla_mela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  welter.clp 	welter0   "  ?id "  GAla_mela )" crlf))
)

;"welter","N","1.GAla_mela"
;The man put forward a welter of information.
;
(defrule welter1
(declare (salience 4900))
(id-root ?id welter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lota))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  welter.clp 	welter1   "  ?id "  lota )" crlf))
)

;"welter","VT","1.lotanA"
;The dog weltered in the marsh.
;
