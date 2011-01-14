
(defrule revolutionary0
(declare (salience 5000))
(id-root ?id revolutionary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id krAnwikArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revolutionary.clp 	revolutionary0   "  ?id "  krAnwikArI )" crlf))
)

;"revolutionary","Adj","1.krAnwikArI"
;Some people pasted revolutionary posters on the walls       
;
(defrule revolutionary1
(declare (salience 4900))
(id-root ?id revolutionary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id krAnwikArI_manuRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revolutionary.clp 	revolutionary1   "  ?id "  krAnwikArI_manuRya )" crlf))
)

;"revolutionary","N","1.krAnwikArI_manuRya"
;Mr.L.K.Advani is a revolutionary man.
;
