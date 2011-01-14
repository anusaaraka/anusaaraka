
(defrule depose0
(declare (salience 5000))
(id-root ?id depose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAkRI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depose.clp 	depose0   "  ?id "  sAkRI_xe )" crlf))
)

;"depose","VI","1.sAkRI_xenA"
;I can depose when time arises
;
(defrule depose1
(declare (salience 4900))
(id-root ?id depose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxacyuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depose.clp 	depose1   "  ?id "  paxacyuwa_kara )" crlf))
)

;"depose","VT","1.paxacyuwa_karanA"
;The people depose political parties with wrong motives.
;
