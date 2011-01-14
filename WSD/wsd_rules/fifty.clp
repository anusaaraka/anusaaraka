
(defrule fifty0
(declare (salience 5000))
(id-root ?id fifty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pacAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fifty.clp 	fifty0   "  ?id "  pacAsa )" crlf))
)

;"fifty","N","1.pacAsa"
(defrule fifty1
(declare (salience 4900))
(id-root ?id fifty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pacAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fifty.clp 	fifty1   "  ?id "  pacAsa )" crlf))
)

;"fifty","Pron","1.pacAsa"
;There were fifty pessengers in the bus.
;
