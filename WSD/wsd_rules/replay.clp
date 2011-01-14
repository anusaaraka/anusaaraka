
(defrule replay0
(declare (salience 5000))
(id-root ?id replay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xubArA_Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  replay.clp 	replay0   "  ?id "  xubArA_Kela )" crlf))
)

;"replay","N","1.xubArA_Kela"
;A slow motion replay of a goal being scored.
;
(defrule replay1
(declare (salience 4900))
(id-root ?id replay)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xubArA_KelanA_yA_xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  replay.clp 	replay1   "  ?id "  xubArA_KelanA_yA_xiKA )" crlf))
)

;"replay","V","1.xubArA_KelanA_yA_xiKAnA"
;Replay a drawn match.
;
