;@@@ Added by Nandini (24-08-13)
;This is a strong building.
;yaha eka majabUwa imArawa hE.
(defrule strong0
(declare (salience 2750))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majZabUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong0   "  ?id "  majZabUwa )" crlf))
)

;viSeRya=emotion && category=a	saSakwa	6.86738608048501
; Changed by Amba
; modified by Nandini (24-08-13)
;She was not a strong swimmer.  (oxford advanced dictionary)
;vaha eka saSakwa wErAka nahIM WI.
(defrule strong1
(declare (salience 2000))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saSakwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong1   "  ?id "  saSakwa )" crlf))
)

;@@@ Added by Nandini (24-08-13)
;Are you feeling stronger now after your rest? (oxford advanced dictionary)
;kyA Apa Apake viSrAma ke bAxa aba aXika svasWa mahasUsa_kara rahe hEM?
(defrule strong2
(declare (salience 2500))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(kriyA-object  ?kri ?id)
(kriyA-subject ?kri ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong2   "  ?id "  Sakwi )" crlf))
)


;Added by Aditya and Hardik(23-06-2013),IIT(BHU) batch 2012-2017.
;My mother always prefers strong coffee.
;merI mAz hameSA kadaka koYPI pasanxa karawI hE.
(defrule strong4
(declare (salience 2300))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-word ?id1 coffee|tea|color|drink|acid|base)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong4   "  ?id "  kadZaka )" crlf))
)

;@@@ Added by Nandini (24-08-13)
;Stay indoors in the middle of the day, when the sun is strongest. (oxford advanced dictionary)
;maXyanha meM jaba sUrya sabase aXika weZja howA hE Gara_ke_BIwara rahiye. 
(defrule strong5
(declare (salience 3150))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-word ?id1 sun|fire|wind)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong5   "  ?id "   wejZa )" crlf))
)

;@@@ Added by Nandini (24-08-13)
;Among all she is the strongest contestant.
;saba meM vaha sabase aXika prabala prawiyogI hE.
(defrule strong6
(declare (salience 2600))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
(viSeRya-viSeRaNa  ?id1 ?id)
(subject-subject_samAnAXikaraNa  ? ?id1)
(viSeRya-among_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prabala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong6   "  ?id "  prabala )" crlf))
)

;He hurt me with his strong words.
;usane apane wIKe SabxoM se  muJe xuKI kiyA.
;We should not say strong words for any person.
;hameM nahIM kahane cAhie wIKe Sabxa kisI vyakwi ke lie.
(defrule strong7
(declare (salience 2800))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 word|question|language)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong7   "  ?id "  wIKA )" crlf))
)

;He is strong in maths.
;vaha hisAba meM weja hE.
(defrule strong9
(declare (salience 3100))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ? ?id)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong9   "  ?id "  wejZa )" crlf))
)

;I don't think her heart is very strong .
;muJe nahIM lagawA hE ki usakA hqxaya awyanwa svasWa hE.
(defrule strong10
(declare (salience 3200))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 heart)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong10   "  ?id "  svasWa )" crlf))
)

;He is strong enough to lift the weight on his own. 
;muJe nahIM lagawA hE ki usakA hqxaya awyanwa saSakwa hE.
;He is strong enough to lift a car. 
;vaha gAdI uTAne ke lie kAPI saSakwa hE.
(defrule strong11
(declare (salience 3300))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id ?)
(saMjFA-to_kqxanwa  ?id ?)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saSakwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong11   "  ?id "  saSakwa )" crlf))
)

;@@@ Added by Nandini 13-9-13
;She looked very strong even after defeat .
;vaha hAra ke bAxa BI awyanwa xqDZa xiKI.
(defrule strong12
(declare (salience 3400))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id ?)
;(subject-subject_samAnAXikaraNa  ? ?id)
(kriyA-kriyA_viSeRaNa  ?id ?)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong12   "  ?id "  xqDZa )" crlf))
)

;Its smell was very strong.
;usakI ganXa awyanwa weja WI.
(defrule strong13
(declare (salience 3500))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 smell)
(kriyA-subject  ?kri ?id1)
(viSeRya-viSeRaka  ?id ?)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong13   "  ?id "  weja )" crlf))
)

;@@@ Added by Nandini 14-9-13
;We have strong commitment to treating customers fairly.
;grAhakoM se nyAyapUrvaka vyavahAra karane kA hamArA xqDa vAxA hE.
;I have very strong determination about my work.
(defrule strong14
(declare (salience 3600))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 commitment|determination)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong14   "  ?id "  xqDZa )" crlf))
)



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_strong0
(declare (salience 2750))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majZabUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " strong.clp   sub_samA_strong0   "   ?id " majZabUwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_strong0
(declare (salience 2750))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majZabUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " strong.clp   obj_samA_strong0   "   ?id " majZabUwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_strong7
(declare (salience 2800))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 word|question|language)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " strong.clp   sub_samA_strong7   "   ?id " wIKA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_strong7
(declare (salience 2800))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 word|question|language)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " strong.clp   obj_samA_strong7   "   ?id " wIKA )" crlf))
)
