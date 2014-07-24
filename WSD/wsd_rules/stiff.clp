;@@@ Added by jagriti(3.2.2014)
;The manager of the five star hotels is very stiff.
;पाँच तारा होटल का प्रबन्धक अत्यन्त हठीला है .
;I found the manager very stiff. [rajpal]
; मुझे अत्यन्त हठीला प्रबन्धक मिला है .  
(defrule stiff0
(declare (salience 5000))
(id-root ?id stiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id)(object-object_samAnAXikaraNa ?id1 ?id))
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haTIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stiff.clp 	stiff0   "  ?id "  haTIlA )" crlf))
)

;@@@ Added by jagriti(3.2.2014)
;The job is stiff,you must take care.[rajpal]
;काम कठिन है,आपको सावधानी रखनी चाहिए . 
(defrule stiff1
(declare (salience 4900))
(id-root ?id stiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id)(object-object_samAnAXikaraNa ?id1 ?id))
(id-root ?id1 examination|climb|job|question|paper|work|exam|competition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stiff.clp 	stiff1   "  ?id "  kaTina )" crlf))
)

;@@@ Added by jagriti(3.2.2014)
;We had to pay a stiff membership fee to join the health club.[cambridge dict]
;हमें स्वास्थ्य क्लब में जाने के लिए एक भारी सदस्यता शुल्क देना पडा .
(defrule stiff2
(declare (salience 4800))
(id-root ?id stiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-root ?id1 price|fee)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stiff.clp 	stiff2   "  ?id "  BArI )" crlf))
)

;@@@ Added by jagriti(3.2.2014)
;A stiff breeze/wind.
(defrule stiff3
(declare (salience 4700))
(id-root ?id stiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-root ?id1 wind|breeze)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joraxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stiff.clp 	stiff3   "  ?id "  joraxAra )" crlf))
)


;.......default rule..............
(defrule stiff4
(declare (salience 100))
(id-root ?id stiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stiff.clp 	stiff4   "  ?id "  kadZA )" crlf))
)

;"stiff","Adj","1.kadZA"
;The wire is too stiff to be bent.
;--"2.kaTina"
;The examination paper was too stiff to be solved by the students.
;--"3.haTIlA"
;The manager of the five star hotels is very stiff.
;--"4.BArI_kImawa"
;The diamond necklace is too stiff to be bought by a common man.
;
(defrule stiff5
(declare (salience 100))
(id-root ?id stiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stiff.clp 	stiff5   "  ?id "  lASa )" crlf))
)

;"stiff","N","1.lASa"
;It was a very pathetic sight when Rajan's stiff was lying in the coffin for the funeral.
;
