;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12/03/2014
;A long and bitter dispute.[oald]
;एक लम्बा और कटु विवाद
(defrule bitter2
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 dispute)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitter.clp 	bitter2   "  ?id " katu  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12/03/2014
;She is very bitter about losing her job.[oald]
;वह अपनी नौकरी खोने को लेकर बहुत दुखी और क्रोधित है.
(defrule bitter3
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?sub ?id)
(kriyA-subject  ?kri ?sub)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKI_Ora_kroXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitter.clp 	bitter3   "  ?id " xuKI_Ora_kroXiwa  )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12/03/2014
;Bitter cold.[oald]
;बहुत अधिक ठन्डा
(defrule bitter4
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 cold)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitter.clp 	bitter4   "  ?id "  bahuwa_aXika )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12/03/2014
;Bitter wind.[oald]
;बर्फीली हवा
(defrule bitter5
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 wind)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barPIlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitter.clp 	bitter5   "  ?id " barPIlI  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12/03/2014
;It's really bitter out today.[oald]
;आज बाहर सचमुच बहुत ठन्डा है 
(defrule bitter6
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-out_saMbanXI  ?id ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_TandA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitter.clp 	bitter6   "  ?id "  bahuwa_TandA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12/03/2014
;They were prepared to fight to the bitter end for their rights.[oald]
;वे अपने अधिकारों के लिए बुरे अंत तक लड़ने के लिए तैयार थे.
(defrule bitter7
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-to_saMbanXI  ?kri ?id1)
(id-word ?id1 end)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitter.clp 	bitter7   "  ?id " burA  )" crlf))
)


;************************DEFAULT RULES******************************

;(the meaning 'kadZuA' has been modified as 'kadavA' by Sukhada. 08-07-11)
(defrule bitter0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitter.clp 	bitter0   "  ?id "  kadavA )" crlf))
)

;Ex. Losing to a younger player was a bitter pill to swallow. (the meaning 'kadZuvA' has been modified as 'kadavA' by Sukhada. 08-06-11)
(defrule bitter1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitter.clp 	bitter1   "  ?id "  kadavA )" crlf))
)

;"bitter","Adj","1.kadZuvA"
;The bitter truth is difficult to swallow.
;--"2.Sokamaya"
;All the relatives shed bitter tears on his sudden death.
;--"3.kaTora"
;A bitter struggle
;Bitter cold
;
;
;**************************EXAMPLES************************

;A long and bitter dispute.
;She is very bitter about losing her job.
;To weep bitter tears.
;To shed bitter tears.
;Losing the match was a bitter disappointment for the team.
;I've learnt from bitter experience not to trust what he says.
;Black coffee leaves a bitter taste in the mouth.
;Bitter cold.
;A bitter wind.
;It's really bitter out today.
;The election defeat was a bitter pill for the party to swallow.
;They were prepared to fight to the bitter end for their rights.
;Gin with a dash of bitters.
;A pint of bitter, please.

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bitter2
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 dispute)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bitter.clp   sub_samA_bitter2   "   ?id " katu )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bitter2
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 dispute)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bitter.clp   obj_samA_bitter2   "   ?id " katu )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bitter4
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 cold)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bitter.clp   sub_samA_bitter4   "   ?id " bahuwa_aXika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bitter4
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 cold)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bitter.clp   obj_samA_bitter4   "   ?id " bahuwa_aXika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bitter5
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 wind)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barPIlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bitter.clp   sub_samA_bitter5   "   ?id " barPIlI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bitter5
(declare (salience 3000))
(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 wind)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barPIlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bitter.clp   obj_samA_bitter5   "   ?id " barPIlI )" crlf))
)
