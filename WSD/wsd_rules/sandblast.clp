
(defrule sandblast0
(declare (salience 5000))
(id-root ?id sandblast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rewa_kA_JoMkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sandblast.clp 	sandblast0   "  ?id "  rewa_kA_JoMkA )" crlf))
)

;"sandblast","N","1.rewa_kA_JoMkA"
;blast of wind laden with sand.
;
(defrule sandblast1
(declare (salience 4900))
(id-root ?id sandblast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rewa_kA_JoMkA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sandblast.clp 	sandblast1   "  ?id "  rewa_kA_JoMkA_mAra )" crlf))
)

;"sandblast","V","1.rewa_kA_JoMkA_mAranA"
;Grind with a sandblast.
;Sandblast the facade of the building.
;
