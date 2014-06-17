;@@@ Added by Krithika 28/03/2014
; After her death, their lives changed forever.	[OALD]
; usakI mqwyu ke bAxa, unakA jIvana hameSA ke lie baxala gayA.
(defrule forever1
(declare (salience 5000))
(id-root ?id forever)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(kriyA-subject  ?id1 ?id2)
(id-root ?id2  ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hameSA_ke_lie))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forever.clp 	forever1  "  ?id "  hameSA_ke_lie )" crlf))
)
;_____________________________________________________________________________
;@@@ Added by Krithika 28/03/2014
; It takes her forever to get dressed.	[OALD]
; usako wEyAra hone meM bahuwa aXika samaya lagatA hE
(defrule forever2
(declare (salience 5000))
(id-root ?id forever)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(to-infinitive  ? ?id1)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forever.clp 	forever2  "  ?id "  bahuwa_aXika_samaya)" crlf))
)
;##########################Default rules################################
;@@@ Added by Krithika 28/03/2014
; I'll love you forever!	[OALD]
; mEM sadEva wumhe pyAra karuzgA
(defrule forever0
(id-root ?id forever)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sadEva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forever.clp 	forever0  "  ?id "  sadEva )" crlf))
)
;########################Additional examples #############################
; The King was very happy and thought that at long last this vexing problem had been solved forever.
; Just keep telling yourself that it won't last forever.
; She's forever going on about how poor they are.
