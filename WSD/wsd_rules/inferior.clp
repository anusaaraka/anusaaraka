
(defrule inferior0
(declare (salience 5000))
(id-root ?id inferior)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikqRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inferior.clp 	inferior0   "  ?id "  nikqRta )" crlf))
)

(defrule inferior1
(declare (salience 4900))
(id-root ?id inferior)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXInasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inferior.clp 	inferior1   "  ?id "  aXInasWa )" crlf))
)

;"inferior","N","1.aXInasWa"
;Ravi is Ram's inferior.
;
;
