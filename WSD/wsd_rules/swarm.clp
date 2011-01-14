
(defrule swarm0
(declare (salience 5000))
(id-root ?id swarm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BinaBinAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swarm.clp 	swarm0   "  ?id "  BinaBinAnA )" crlf))
)

(defrule swarm1
(declare (salience 4900))
(id-root ?id swarm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JuMda_meM_cakkara_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swarm.clp 	swarm1   "  ?id "  JuMda_meM_cakkara_kAta )" crlf))
)

;"swarm","V","1.JuMda_meM_cakkara_kAtanA"
;The bees are swarming around the bee-hive.
;This market is swarming with people.
;
;