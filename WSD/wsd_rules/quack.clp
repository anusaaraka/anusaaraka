
(defrule quack0
(declare (salience 5000))
(id-root ?id quack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIma_hakIma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quack.clp 	quack0   "  ?id "  nIma_hakIma )" crlf))
)

;"quack","N","1.nIma_hakIma"
;There are many quacks these days who practise medicine.
;--"2.bawaKa_kI_bolI"
;One could hear the quacks of the ducks from a distance.
;
(defrule quack1
(declare (salience 4900))
(id-root ?id quack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawaKa_kI_bolI_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quack.clp 	quack1   "  ?id "  bawaKa_kI_bolI_bola )" crlf))
)

;"quack","VI","1.bawaKa_kI_bolI_bolanA"
;The ducks quacked                                              
;
