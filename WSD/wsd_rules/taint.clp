
(defrule taint0
(declare (salience 5000))
(id-root ?id taint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mElApana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taint.clp 	taint0   "  ?id "  mElApana )" crlf))
)

;"taint","N","1.mElApana"
;The food is free from taint.
;
(defrule taint1
(declare (salience 4900))
(id-root ?id taint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xURiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taint.clp 	taint1   "  ?id "  xURiwa_kara )" crlf))
)

;"taint","VTI","1.xURiwa_karanA"
;The chemical wastes from the industries taint the surroundings.
;
