
(defrule cable0
(declare (salience 5000))
(id-root ?id cable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kebala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cable.clp 	cable0   "  ?id "  kebala )" crlf))
)

;"cable","N","1.kebala"
;Floods can cause damage to underground cables.
;
(defrule cable1
(declare (salience 4900))
(id-root ?id cable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAra_xvArA_samAcAra_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cable.clp 	cable1   "  ?id "  wAra_xvArA_samAcAra_Beja )" crlf))
)

;"cable","V","1.wAra_xvArA_samAcAra_BejanA"
;She cabled her friend that she would arrive on 20th January.
;
