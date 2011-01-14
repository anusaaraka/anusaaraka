
(defrule package0
(declare (salience 5000))
(id-root ?id package)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pulinxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  package.clp 	package0   "  ?id "  pulinxA )" crlf))
)

;"package","N","1.pulinxA"
(defrule package1
(declare (salience 4900))
(id-root ?id package)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaTarI_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  package.clp 	package1   "  ?id "  gaTarI_banA )" crlf))
)

;"package","V","1.gaTarI_banAnA"
;The items were packaged neatly.
;
