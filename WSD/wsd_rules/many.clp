
(defrule many0
(declare (salience 5000))
(id-root ?id many)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) how )
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) kiwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  many.clp 	many0   "  ?id " "(- ?id 1)" kiwanA )" crlf)
)
)

;How many people know it?
;My many female friends were angered by the hearings .
;Modified by Sheetal(5-03-10)
(defrule many1
(declare (salience 4900))
(id-root ?id many)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_sA));Modified bahuwa_se as bahuwa_sA
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  many.clp 	many1   "  ?id "  bahuwa_sA )" crlf))
)

;@@@ Added by Shirisha Manju 3-5-14  Suggested by Sukhada
;My many female friends were angered by the hearings.
;merI bahuwa sArI swrI miwra sunavAI se kroXiwa huIM.
;I saw many fairies in my dream. 
;mEM mere svapna meM bahuwa sArI pariyoM se milA.
(defrule many_with_animate
(declare (salience 4850))
(id-root ?id many)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_sArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  many.clp     many_with_animate "  ?id"  bahuwa_sArA )" crlf)
)
)


;$$$ Modified by Shirisha Manju 30-4-14 Suggested by Chaitanya Sir
;Modified meaning 'bahuwa_sArA' as 'bahuwa'
;Many years ago there lived a king.
(defrule many2
(declare (salience 4800))
(id-root ?id many)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  many.clp      many2   "  ?id "  bahuwa )" crlf)
)
)

;"many","Det","1.bahuwa_se"
;--"2.aneka"
;There were too many guests in the party.
;


;Ex. How many people were there?
(defrule many3
(declare (salience 4800))
(id-word ?id many)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa ?id ?how)
(id-word ?how how)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiwanA))
(assert (id-wsd_number ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  many.clp      many3   "  ?id "  kiwanA )" crlf))
)



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_many_with_animate
(declare (salience 4850))
(id-root ?id many)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_sArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sub_samA_many_with_animate" ?id" bahuwa_sArA )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_many_with_animate
(declare (salience 4850))
(id-root ?id many)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_sArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " obj_samA_many_with_animate" ?id" bahuwa_sArA )" crlf)
)
)
