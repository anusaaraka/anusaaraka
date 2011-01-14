
(defrule devastate0
(declare (salience 5000))
(id-root ?id devastate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id devastating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ujAdZane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  devastate.clp  	devastate0   "  ?id "  ujAdZane_vAlA )" crlf))
)

;"devastating","Adj","1.ujAdZane_vAlA"
;Orissa has been hit by devastating cyclonic storm.
;
(defrule devastate1
(declare (salience 4900))
(id-root ?id devastate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ujAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  devastate.clp 	devastate1   "  ?id "  ujAdZa )" crlf))
)

;"devastate","VT","1.ujAdZanA"
;Cyclone has devastated many places of Orissa.
;
;
