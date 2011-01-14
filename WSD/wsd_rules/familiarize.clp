
(defrule familiarize0
(declare (salience 5000))
(id-root ?id familiarize)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiarize.clp 	familiarize0   "  ?id "  pariciwa_kara )" crlf))
)

(defrule familiarize1
(declare (salience 4900))
(id-root ?id familiarize)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariciwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiarize.clp 	familiarize1   "  ?id "  pariciwa_ho )" crlf))
)

;"familiarize","VT","1.pariciwa_honA[karanA]"
;We familiarized ourselves with the new surroundings.
;
