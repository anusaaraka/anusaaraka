
(defrule informant0
(declare (salience 5000))
(id-root ?id informant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  informant.clp 	informant0   "  ?id "  sUcaka )" crlf))
)

;"informant","Adj","1.sUcaka"
;He passed on the news to us but could not say who his informant was.
;
(defrule informant1
(declare (salience 4900))
(id-root ?id informant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcanA_xenevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  informant.clp 	informant1   "  ?id "  sUcanA_xenevAlA )" crlf))
)

;"informant","N","1.sUcanA_xenevAlA"
