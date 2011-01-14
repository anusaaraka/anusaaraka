
(defrule shovel0
(declare (salience 5000))
(id-root ?id shovel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id belacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shovel.clp 	shovel0   "  ?id "  belacA )" crlf))
)

;"shovel","N","1.belacA/bela"
;The laborers use shovel to dig a pit or a big hole in the ground.
;
(defrule shovel1
(declare (salience 4900))
(id-root ?id shovel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id belace_se_uTAnA_yA_haTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shovel.clp 	shovel1   "  ?id "  belace_se_uTAnA_yA_haTA )" crlf))
)

;"shovel","V","1.belace_se_uTAnA_yA_haTAnA"
;To clear the road the workers kept on shoveling the snow.
;
