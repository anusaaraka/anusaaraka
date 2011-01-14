
(defrule flock0
(declare (salience 5000))
(id-root ?id flock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaxxoM_me_Barane_kI_mulAyama_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flock.clp 	flock0   "  ?id "  gaxxoM_me_Barane_kI_mulAyama_vaswu )" crlf))
)

;"flock","N","1.gaxxoM_me_Barane_kI_mulAyama_vaswu"
;He recently bought flock cushions.
;--"1.JuMda"
;He has a large flock of sheep at his farm.
;--"2.saxasya"
;The priest keeps his flock toghther on all major issues.
;
(defrule flock1
(declare (salience 4900))
(id-root ?id flock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JuMda_meM_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flock.clp 	flock1   "  ?id "  JuMda_meM_A )" crlf))
)

;"flock","V","1.JuMda_meM_AnA"
;A large number of persons flocked near the open air stage to have a clear view of the drama being enacted.
;At this place people flock around to admire the view.
;
