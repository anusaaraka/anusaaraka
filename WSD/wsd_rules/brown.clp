
(defrule brown0
(declare (salience 5000))
(id-root ?id brown)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brown.clp 	brown0   "  ?id "  BUrA )" crlf))
)

;"brown","Adj","1.BUrA"
;Rajini was wearing a brown sweater.
;
(defrule brown1
(declare (salience 4900))
(id-root ?id brown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brown.clp 	brown1   "  ?id "  BUrA )" crlf))
)

;"brown","N","1.BUrA"
;His shirt has shades of brown.
;
