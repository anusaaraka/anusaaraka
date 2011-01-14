
(defrule undesirable0
(declare (salience 5000))
(id-root ?id undesirable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avAzCanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  undesirable.clp 	undesirable0   "  ?id "  avAzCanIya )" crlf))
)

;"undesirable","Adj","1.avAzCanIya"
;Political interference in defence matters is highly undesirable.
;
(defrule undesirable1
(declare (salience 4900))
(id-root ?id undesirable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Apawwijanaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  undesirable.clp 	undesirable1   "  ?id "  Apawwijanaka )" crlf))
)

;"undesirable","N","1.Apawwijanaka"
;Drunkards,vagrants && other undesirables create nuisance.
;
