(defrule send1
(declare (salience 4900))
(id-root ?id send)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id sent)
(id-root ?id1 ?)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Beja))
(assert (id-wsd_root ?id send))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  send.clp    send1   "  ?id "  Beja )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  send.clp    send1   "  ?id " send )" crlf))
)


















