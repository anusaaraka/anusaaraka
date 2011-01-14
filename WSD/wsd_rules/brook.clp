
(defrule brook0
(declare (salience 5000))
(id-root ?id brook)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotI_naxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brook.clp 	brook0   "  ?id "  CotI_naxI )" crlf))
)

;"brook","N","1.CotI_naxI"
;There are lovely lilies near the brook.
;
(defrule brook1
(declare (salience 4900))
(id-root ?id brook)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brook.clp 	brook1   "  ?id "  saha )" crlf))
)

;"brook","VT","1.sahanA"
;The teacher does not brook any nonsense.
;
