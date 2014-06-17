;@@@ Added by Preeti(3-4-14)
;Jackson is a common English name. [Oxford Advanced Learner's Dictionary]
;jEkasana eka sAmAnya afgrejI nAma hE.
(defrule common0
(id-root ?id common)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " common.clp 	common0  "  ?id "  sAmAnya )" crlf))
)


;@@@ Added by Preeti(3-4-14)
;We are working together for a common purpose. [Oxford Advanced Learner's Dictionary]
;hama eka samAna uxxeSya ke liye eka sAWa kAma_kara rahe hEM.
(defrule common1
(declare (salience 1000))
(id-root ?id common)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 interest|purpose|feature|cause|theme)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " common.clp 	common1  "  ?id "  samAna )" crlf))
)


;@@@ Added by Preeti(3-4-14)
;We went for a walk on the common. [Oxford Advanced Learner's Dictionary]
;hama sArvajanika_sWala para sEra ke liye gaye. (Parsar problem)
(defrule common2
(id-root ?id common)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sArvajanika_sWala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " common.clp 	common2  "  ?id "  sArvajanika_sWala )" crlf))
)

;@@@ Added by Preeti(3-4-14)
;Common in women, possibly due to hormone fluctuations.[yourdictionary.com]
;swriyoM meM Ama_bAwa hE, samBavawaH - hAramona asWirawAz ke kAraNa.
(defrule common3
(declare (salience 1000))
(id-root ?id common)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ama_bAwa_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " common.clp 	common3  "  ?id "  Ama_bAwa_hE )" crlf))
)
;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_common1
(declare (salience 1000))
(id-root ?id common)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 interest|purpose|feature|cause|theme)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " common.clp   sub_samA_common1   "   ?id " samAna )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_common1
(declare (salience 1000))
(id-root ?id common)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 interest|purpose|feature|cause|theme)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " common.clp   obj_samA_common1   "   ?id " samAna )" crlf))
)
