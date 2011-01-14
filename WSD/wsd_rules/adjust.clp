
;Added by Meena(24.02.10)
;The camel can adjust its body temperature according to the external temperature.
(defrule adjust0
(declare (salience 5000))
(id-root ?id adjust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id  ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatA_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  adjust.clp       adjust0   "  ?id "  GatA_baDZA )" crlf))
)

