;@@@ Added by Nandini
;The team won and the fans went mad.[oxford advanced learner's dictionary]
;tIma ne jIwA Ora cAhanevAle uwwejiwa_ho gaye.
(defrule mad1
(declare (salience 100))
(id-root ?id mad)
?mng <-(meaning_to_be_decided ?id)
;(id-root =(- ?id 1) go)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 fan)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mad.clp 	mad1   "  ?id "  uwwejiwa )" crlf))
)

;@@@ Added by Nandini
;She's mad at me for being late. [oxford advanced learner's dictionary]
;vaha xera hone ke liye muJapara gussA hE.
(defrule mad2
(declare (salience 150))
(id-root ?id mad)
?mng <-(meaning_to_be_decided ?id)
;(subject-subject_samAnAXikaraNa  ? ?id)
(viSeRya-for_saMbanXI  ?id ?id2)
(id-word ?id2 late)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gussA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mad.clp 	mad2   "  ?id "  gussA )" crlf))
)

;@@@ Added by Nandini (27-11-13)
;Sometimes mad thoughts come to our mind.
;kaBI kaBI bewuke vicAra hamAre mana meM Awe hE.
(defrule mad3
(declare (salience 80))
(id-root ?id mad)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 idea|thought)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  bewukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mad.clp 	mad3   "  ?id "  bewukA )" crlf))
)


;@@@ Added by Nandini (27-11-13)
;I will go mad if I have to wait much longer.
;mEM pAgala_ho jAUzgA yaxi muJe bahuwa aXika samaya prawIkRA karanI hE.
(defrule mad4
(declare (salience 4480))
(id-root ?id mad)
(id-root =(- ?id 1) go)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng  =(- ?id 1) ?id pAgala_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  mad.clp 	mad4   " (- ?id 1)"  "?id  " pAgala_ho_jA )" crlf))
)

;-------------------default rule----------
;He is a mad person.;English and Hindi traslation added by Nandini(29-11-13)
;vaha pAgala AxamI hE.
(defrule mad0
;(declare (salience 5000)) ;Comented by Nandini
(declare (salience 50))
(id-root ?id mad)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mad.clp 	mad0   "  ?id "  pAgala )" crlf))
)

;------------------------------------------
;He got mad and walked out.
;vaha pAgala ho gayA Ora calA gayA.
;(defrule mad1
;(declare (salience 4900))
;(id-root ?id mad)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat ?id adjective|adjective_comparative|adjective_superlative)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id pAgala))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mad.clp 	;mad1   "  ?id "  pAgala )" crlf))
;)

;"mad","Adj","1.pAgala"
;He went completely mad.
;--"2.uwwejiwa"
;On hearing the arrival of her father, she ran  like  mad.
;--"gussA"
;The Principal was mad at the children for playing the practical joke on the new teaher.
;
;---------Additional-examples-------
;It was a mad idea.
;The crowd made a mad rush for the exit.
;Only a mad dash got them to the meeting on time. 
;The team won and the fans went mad.
;He got mad and walked out.
;That noise is driving me mad.
;He'll go mad when he sees the damage.
;They realized that he had gone mad.
;Inventors are not mad scientists.
;She seemed to have gone stark raving mad.
;A revolver is the only way to stop a mad dog.

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_mad3
(declare (salience 80))
(id-root ?id mad)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 idea|thought)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  bewukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " mad.clp   sub_samA_mad3   "   ?id " bewukA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_mad3
(declare (salience 80))
(id-root ?id mad)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 idea|thought)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  bewukA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " mad.clp   obj_samA_mad3   "   ?id " bewukA )" crlf))
)
