(defrule uplink0
(declare (salience 4900))
(id-root ?id uplink)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apaliMka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uplink.clp    uplink0   "  ?id "  apaliMka_kara )" crlf))
)

