(defrule participant0
(declare (salience 5000))
(id-root ?id participant)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga_lene_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(rule_name-id-root_mng 	participant0   "  ?id "  BAga_lene_vAlA )" crlf))
)


