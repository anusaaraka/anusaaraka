
;Added by sheetal(5-01-10).
(defrule marker0
(declare (salience 5000))
(id-root ?id marker)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArkar_pEna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  marker.clp   marker0   "  ?id "  mArkar_pEna )" crlf))
)
;You must outline the important sentences with a marker .


