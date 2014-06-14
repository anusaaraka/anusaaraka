;@@@ Added by Nandini(23-11-13)
;Their comments have not materially affected our plans.[oxford advanced learner's dictionary]
(defrule materially1
(declare (salience 100))
(id-root ?id materially)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ? ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gamBIra_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  materially.clp       materially1   "  ?id " gamBIra_rUpa_se )" crlf)) 
)

;===============default rule================
;@@@ Added by Nandini(23-11-13)
;Materially they are no better off. [oxford advanced lerner dictionary]
(defrule materially0
(declare (salience 50))
(id-root ?id materially)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ? ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng	 ?id 	BOwika_xquRtI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  materially.clp       materially0   "  ?id "	 BOwika_xquRtI_se )" crlf)) 
)
