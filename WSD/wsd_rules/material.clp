


;Added by Meena(9.3.10)
;Thomas Edison tried two thousand different materials in search of a filament for the light bulb . 
(defrule material0
(declare (salience 5000))
(id-root ?id material)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  material.clp       material0   "  ?id "  paxArWa )" crlf))
)

