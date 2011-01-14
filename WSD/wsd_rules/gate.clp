
(defrule gate0
(declare (salience 5000))
(id-root ?id gate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xvAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gate.clp 	gate0   "  ?id "  xvAra )" crlf))
)

;"gate","N","1.xvAra"
;The gate of the fort is made of iron && wood.
;
(defrule gate1
(declare (salience 4900))
(id-root ?id gate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gate.clp 	gate1   "  ?id "  baMxa_kara )" crlf))
)

;"gate","V","1.baMxa_karanA"
;Th students who boycotted the classes were gated.
;
