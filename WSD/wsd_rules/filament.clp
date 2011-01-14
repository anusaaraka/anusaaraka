;Added by Meena(8.03.10)
;Thomas Edison tried two thousand different materials in search of a filament for the light bulb.
(defrule filament0
(declare (salience 4900))
(id-root ?id filament)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-det_viSeRaNa  ?id ?id1)(viSeRya-viSeRaNa  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PilAmeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  filament.clp     filament0   "  ?id "  PilAmeMta )" crlf))
)


