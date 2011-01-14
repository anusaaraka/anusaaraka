
(defrule temper0
(declare (salience 5000))
(id-root ?id temper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manoxaSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  temper.clp 	temper0   "  ?id "  manoxaSA )" crlf))
)

;"temper","N","1.manoxaSA"
;He lost his temper when the dual started.
;
(defrule temper1
(declare (salience 4900))
(id-root ?id temper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lacIlA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  temper.clp 	temper1   "  ?id "  lacIlA_banA )" crlf))
)

;"temper","VT","1.lacIlA_banAnA{XAwu_iwyAxi_ko}"
;Steel is tempered by constantly heating in the fire .
;--"2.kama_karanA"
;His punishment was tempered by pardon.
;
