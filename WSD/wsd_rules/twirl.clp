
(defrule twirl0
(declare (salience 5000))
(id-root ?id twirl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twirl.clp 	twirl0   "  ?id "  GumAva )" crlf))
)

;"twirl","N","1.GumAva"
;There was a twirl in the whirlpool.
;--"2.GasIta"
;His signature has a twirl at the end.
;
(defrule twirl1
(declare (salience 4900))
(id-root ?id twirl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twirl.clp 	twirl1   "  ?id "  GumA )" crlf))
)

;"twirl","VT","1.GumAnA"
;The band master twirled the wand && marched forward.
;--"2.cakkara_KAnA"
;The dog twirled around the garden.
;
