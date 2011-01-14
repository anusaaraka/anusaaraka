
(defrule accent0
(declare (salience 5000))
(id-root ?id accent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svara_kA_caDZAva_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accent.clp 	accent0   "  ?id "  svara_kA_caDZAva_uwAra )" crlf))
)

;"accent","N","1.svara_kA_caDZAva_uwAra"
;I the word `remain',the accent is on the second syllable.
;
(defrule accent1
(declare (salience 4900))
(id-root ?id accent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svara_uccAraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accent.clp 	accent1   "  ?id "  svara_uccAraNa_kara )" crlf))
)

;"accent","V","1.svara_uccAraNa_karanA"
;His English was slow && heavily accented.
;
