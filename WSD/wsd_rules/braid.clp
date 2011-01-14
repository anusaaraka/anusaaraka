
(defrule braid0
(declare (salience 5000))
(id-root ?id braid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id veNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  braid.clp 	braid0   "  ?id "  veNI )" crlf))
)

;"braid","N","1.veNI"
;She decorated her long braids with flowers.
;
(defrule braid1
(declare (salience 4900))
(id-root ?id braid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  braid.clp 	braid1   "  ?id "  bata )" crlf))
)

;"braid","VT","1.batanA/gUMWanA"
;Braid a collar
;Braid hair
;
