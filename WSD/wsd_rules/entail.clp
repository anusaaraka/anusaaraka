
(defrule entail0
(declare (salience 5000))
(id-root ?id entail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apekRA_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entail.clp 	entail0   "  ?id "  apekRA_karanA )" crlf))
)

;"entail","N","1.apekRA_karanA"
;What does this move entail?
;
(defrule entail1
(declare (salience 4900))
(id-root ?id entail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaSyaka_banA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entail.clp 	entail1   "  ?id "  AvaSyaka_banA_xe )" crlf))
)

;"entail","VT","1.AvaSyaka_banA_xenA"
;Success in any sphere of life entails hardwork.
;
