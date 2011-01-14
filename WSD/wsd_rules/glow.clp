
(defrule glow0
(declare (salience 5000))
(id-root ?id glow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xIpwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glow.clp 	glow0   "  ?id "  xIpwi )" crlf))
)

;"glow","N","1.xIpwi"
;I could see the glow on her face due to happiness.
;
(defrule glow1
(declare (salience 4900))
(id-root ?id glow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glow.clp 	glow1   "  ?id "  camaka )" crlf))
)

;"glow","VI","1.camakanA"
;The bulb is glowing.
;
