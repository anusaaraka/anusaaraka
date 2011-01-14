
(defrule dupe0
(declare (salience 5000))
(id-root ?id dupe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BolA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dupe.clp 	dupe0   "  ?id "  BolA )" crlf))
)

;"dupe","N","1.BolA/sIXA/XoKA_KAne_vAlA"
(defrule dupe1
(declare (salience 4900))
(id-root ?id dupe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Taga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dupe.clp 	dupe1   "  ?id "  Taga )" crlf))
)

;"dupe","VT","1.TaganA/XoKA_xenA"
;The immigrant was duped because he trusted everyone
;
