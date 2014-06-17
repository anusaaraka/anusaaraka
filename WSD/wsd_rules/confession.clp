;@@@ Added by Preeti(4-4-14)
;His confession was extracted under torture. [Oxford Advanced Learner's Dictionary]
;usakI svIkqwi yAwanA kA Baya xIKAkara lI gayI WI.
(defrule confession0
(id-root ?id confession)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confession.clp 	confession0   "  ?id "  svIkqwi )" crlf))
)

;@@@ Added by Preeti(4-4-14)
;The priest heard his confession. [Cambridge Learner’s Dictionary][Cambridge Learner’s Dictionary]
;pAxarI ne usakA pApa svIkaraNa sunA.
(defrule confession1
(declare (salience 1000))
(id-root ?id confession)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 hear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pApa_svIkaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confession.clp 	confession1   "  ?id "  aparaXa_svIkaraNa )" crlf))
)

;@@@ Added by Preeti(4-4-14)
;Have you been to confession recently? [Cambridge Learner’s Dictionary]
;kyA Apa hAla mez pApa svIkaraNa ke liye gaye We?
(defrule confession2
(declare (salience 1000))
(id-root ?id confession)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pApa_svIkaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confession.clp 	confession2   "  ?id "  pApa_svIkaraNa )" crlf))
)

;@@@ Added by Preeti(4-4-14)
;I have a confession to make - I lied about my age. [Oxford Advanced Learner's Dictionary]
;mEM svIkAra karawA hUz - mEMne apanI umra ke bAre meM JUTa bolA.
(defrule confession3
(declare (salience 1000))
(id-root ?id confession)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(saMjFA-to_kqxanwa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confession.clp 	confession3   "  ?id "  svIkAra )" crlf))
)

