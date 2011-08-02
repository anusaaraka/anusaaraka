
;Added by Meena(29.7.11)
;Pratt and Whitney is a unit of United Technologies Inc..
(defrule unit1
(declare (salience 3200))
(id-root ?id unit)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(not(id-root ?id1 length|volume|pressure|force|distance|mass|weight|velocity|acceleration|area)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unit.clp      unit1   "  ?id "  viBAga )" crlf)))

