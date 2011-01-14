

;Added by MeenA(3.02.10)
;The sky is wreathed with clouds.
(defrule wreathe0
(declare (salience 6000))
(id-root ?id wreathe)
?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) with)
;(kriyA-with_saMbanXI  ?id  ?id1)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp    wreathe0   "  ?id "  Gira )" crlf))
)

