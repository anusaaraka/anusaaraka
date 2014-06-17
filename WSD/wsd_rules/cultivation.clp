;@@@ Added by Preeti(9-4-14)
;Cultivation of crops probably began twelve thousand years ago in the Middle East. [yourdictionary.com]
;maXya pUrva meM PasaloM kI KewI samBavawaH  bAraha hajAra varRa pahale Suru huI WI.
(defrule cultivation0
(id-root ?id cultivation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KewI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cultivation.clp 	cultivation0   "  ?id " KewI )" crlf))
)

;@@@ Added by Preeti(9-4-14)
;The cultivation of a good relationship with local firms helped him. [Oxford Advanced Learner's Dictionary]
;sWAnIya vyApArika kampaniyoM se acCe sambanXa ke saMvarXana ne usakI sahAyawA kI.
(defrule cultivation1
(declare (salience 1000))
(id-root ?id cultivation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 relationship|quality|skill)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMvarXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cultivation.clp 	cultivation1   "  ?id "  saMvarXana )" crlf))
)
