
(defrule refrain0
(declare (salience 5000))
(id-root ?id refrain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refrain.clp 	refrain0   "  ?id "  sWAyI )" crlf))
)

;"refrain","N","1.sWAyI{gAne_kA}"
;The lead singer sang the verses && the others joined in for the refrain.
;
(defrule refrain1
(declare (salience 4900))
(id-root ?id refrain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refrain.clp 	refrain1   "  ?id "  roka )" crlf))
)

;"refrain","V","1.rokanA{na_karanA}"
(defrule refrain2
(declare (salience 4800))
(id-root ?id refrain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(assert (id-H_vib_mng ?id na_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refrain.clp 	refrain2   "  ?id "  roka )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  refrain.clp   refrain2   "  ?id " na_karanA )" crlf))
)

;"refrain","VTI","1.rokanA{na_karanA}"
;Passengers are requested to refrain from smoking.
;
