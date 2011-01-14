
(defrule heed0
(declare (salience 5000))
(id-root ?id heed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAvaXAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heed.clp 	heed0   "  ?id "  sAvaXAnI )" crlf))
)

;"heed","N","1.sAvaXAnI"
;dAktara kI salAha ke anusAra usane xavAI KAne meM'heed'raKI.
;
(defrule heed1
(declare (salience 4900))
(id-root ?id heed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heed.clp 	heed1   "  ?id "  XyAna_xe )" crlf))
)

;"heed","V","1.XyAna_xenA"
;usane apane guru kI sIKa kI ora'heed'nahIM xiyA.
;
