
(defrule pocket0
(declare (salience 5000))
(id-root ?id pocket)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jeba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pocket.clp 	pocket0   "  ?id "  jeba )" crlf))
)

(defrule pocket1
(declare (salience 4900))
(id-root ?id pocket)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jeba_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pocket.clp 	pocket1   "  ?id "  jeba_meM_raKa )" crlf))
)

;"pocket","V","1.jeba meM raKanA"
;I recieved the routine letter from him && pocketed it without reading.
;
;