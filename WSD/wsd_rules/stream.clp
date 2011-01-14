
(defrule stream0
(declare (salience 5000))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JaranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream0   "  ?id "  JaranA )" crlf))
)

(defrule stream1
(declare (salience 4900))
(id-root ?id stream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XArA_rUpa_meM_baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stream.clp 	stream1   "  ?id "  XArA_rUpa_meM_baha )" crlf))
)

;"stream","V","1.XArA rUpa meM bahanA"
;His life was streamed with difficulties && hardships.
;
;