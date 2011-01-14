
(defrule toot0
(declare (salience 5000))
(id-root ?id toot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BoMpU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toot.clp 	toot0   "  ?id "  BoMpU )" crlf))
)

;"toot","N","1.BoMpU"
;The sound is coming from the toot.
;
(defrule toot1
(declare (salience 4900))
(id-root ?id toot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BoMpU_bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toot.clp 	toot1   "  ?id "  BoMpU_bajA )" crlf))
)

;"toot","VT","1.BoMpU_bajAnA"
;The boy tooted the horn.
;
