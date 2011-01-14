
(defrule violet0
(declare (salience 5000))
(id-root ?id violet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bEMganI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  violet.clp 	violet0   "  ?id "  bEMganI )" crlf))
)

;"violet","Adj","1.bEMganI"
;--"2.bEMganI_raMga_kA"
;He gave her a vilet dress.
;
(defrule violet1
(declare (salience 4900))
(id-root ?id violet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  violet.clp 	violet1   "  ?id "  PUla )" crlf))
)

;"violet","N","1.PUla{bEMganI}"
;--"2.eka_prakAra_kA_PUla"
;Vilets were blooming in the garden.
;
