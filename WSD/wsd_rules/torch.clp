
(defrule torch0
(declare (salience 5000))
(id-root ?id torch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id toYrca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  torch.clp 	torch0   "  ?id "  toYrca )" crlf))
)

;"torch","N","1.toYrca"
;Torch is handy when there is a power failure.
;--"2.maSAla"
;Tribals living in the forests use torch to scare the wild animals.
;
(defrule torch1
(declare (salience 4900))
(id-root ?id torch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aga_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  torch.clp 	torch1   "  ?id "  Aga_lagA )" crlf))
)

;"torch","VT","1.Aga_lagAnA"
;The entire hamlet was torched by their enemies.
;
