;@@@ Added by Preeti(24-2-14)
;
(defrule cape1
(declare (salience 1000))
(id-root ?id cape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ? ?id) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwarIpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cape.clp 	cape1   "  ?id "  aMwarIpa )" crlf))
)



;@@@ Added by Preeti(24-2-14)
;St Nicholas is in a green cape lined with gold. [http://sentence.yourdictionary.com]
;sanwa nicholas sunerI reKA vAlI eka hare binA_bAzha_ke labAxe meM hE.
(defrule cape0
(id-root ?id cape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_bAzha_kA_labAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cape.clp 	cape0   "  ?id "  binA_bAzha_kA_labAxA )" crlf))
)
