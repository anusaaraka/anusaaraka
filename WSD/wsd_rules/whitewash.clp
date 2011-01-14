
(defrule whitewash0
(declare (salience 5000))
(id-root ?id whitewash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPexI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whitewash.clp 	whitewash0   "  ?id "  saPexI )" crlf))
)

;"whitewash","N","1.saPexI"
;Whitewash has given a new look to our house.
;
(defrule whitewash1
(declare (salience 4900))
(id-root ?id whitewash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPexI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whitewash.clp 	whitewash1   "  ?id "  saPexI_kara )" crlf))
)

;"whitewash","VT","1.saPexI_karanA"
;They whitewashed the building recently.
;
