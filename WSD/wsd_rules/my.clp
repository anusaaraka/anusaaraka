
(defrule my0
(declare (salience 5000))
(id-root ?id my)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  my.clp 	my0   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  my.clp        my0   "  ?id " kA )" crlf))
)

;"my","Pron","1.merA"
