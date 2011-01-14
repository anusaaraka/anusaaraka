
(defrule feather0
(declare (salience 5000))
(id-root ?id feather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feather.clp 	feather0   "  ?id "  paMKa )" crlf))
)

;"feather","N","1.paMKa/para"
;Birds use their feathers for balance while in flight.
;
(defrule feather1
(declare (salience 4900))
(id-root ?id feather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paroM_se_Daka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feather.clp 	feather1   "  ?id "  paroM_se_Daka )" crlf))
)

;"feather","V","1.paroM_se_DakanA"
