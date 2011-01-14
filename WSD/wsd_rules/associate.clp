;Added by Meena(29.8.09)
;venus was a major Roman goddess , associated with love and beauty.
(defrule associate0
(declare (salience 4900))
(id-root ?id associate)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject ?id ?id1)
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id judA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  associate.clp   associate0   "  ?id "  judA_ho )" crlf))
)

