
(defrule whistle0
(declare (salience 5000))
(id-root ?id whistle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sItI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whistle.clp 	whistle0   "  ?id "  sItI )" crlf))
)

;"whistle","N","1.sItI"
;She has a whistle in her hand.
;
(defrule whistle1
(declare (salience 4900))
(id-root ?id whistle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sItI_bajAkara_bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whistle.clp 	whistle1   "  ?id "  sItI_bajAkara_bulA )" crlf))
)

;"whistle","VTI","1.sItI_bajAkara_bulAnA"
;He whistled the whole song.
;
