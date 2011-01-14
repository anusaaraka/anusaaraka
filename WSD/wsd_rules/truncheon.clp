
(defrule truncheon0
(declare (salience 5000))
(id-root ?id truncheon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  truncheon.clp 	truncheon0   "  ?id "  CadZI )" crlf))
)

;"truncheon","N","1.CadZI"
;The police were using truncheons to disperse the mob.
;
(defrule truncheon1
(declare (salience 4900))
(id-root ?id truncheon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id daMde_se_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  truncheon.clp 	truncheon1   "  ?id "  daMde_se_mAra )" crlf))
)

;"truncheon","VT","1.daMde_se_mAranA"
;Truncheon the snake hard.
;
