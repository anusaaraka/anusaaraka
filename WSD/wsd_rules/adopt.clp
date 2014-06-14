
;$$$ Modified by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 21-jan-2014
;To adopt a resolution.[oald]
;एक संकल्प को अपनाना
;The council is expected to adopt the new policy at its next meeting.[oald]
(defrule adopt0
(declare (salience 5000))
(id-root ?id adopt)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 policy|resolution); added resolution in the list
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adopt.clp 	adopt0   "  ?id "  apanA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 21-jan-2014
;Adopt a child.[oald]
;बच्चा गोद लो
;She was forced to have her baby adopted.[oald]
;उसे बच्चा गोद लेने के लिये मजबूर किया गया था
(defrule adopt2
(declare (salience 5000))
(id-root ?id adopt)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object ?id ?id1)(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id))
(id-word ?id1 baby|child)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id goxa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adopt.clp 	adopt2   "  ?id "  goxa_le )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 21-jan-2014
;She was adopted as parliamentary candidate for Wood Green.[oald]
;उसे वुड ग्रीन के संसदीय उम्मीदवार के रूप में चुना गया था.
(defrule adopt3
(declare (salience 5000))
(id-root ?id adopt)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI  ?id ?id1)
;(id-word ?id1 candidate) ; uncomment this line if any conflict is found
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adopt.clp 	adopt3   "  ?id "  cuna )" crlf))
)


;**********************DEFAULT RULES********************************

;$$$ Modified by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 21-jan-2014
(defrule adopt1
(declare (salience 0)) ; salience reduced by Garima Singh
(id-root ?id adopt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apanA));meaning changed from 'goxa_le' to 'apanA' by Garima Singh
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adopt.clp 	adopt1   "  ?id "  apanA )" crlf))
)

;"adopt","V","1.goxa_lenA"
;Many orphans are adopted by childless couples.
;--"2.grahaNa_karanA"
;We must adopt only good values from other cultures.
;--"3.svIkAra_karanA"
;He was recently adopted as a government candidate.
;--"4.mAnanA"
;He adopted our rules.
;
;
;LEVEL 
;
;
;Headword : adopt
;
;Examples --
;
;"adopt","V","1.goxa_lenA"-kisI ko apanAnA-apanAnA
;Many orphans are adopted by childless couples.
;bahuwa se anAWa niHsaMwAna xaMpawI xvArA goxa liye jAwe hEM
;
;--"2.grahaNa_karanA"-apanAnA
;We must adopt only good values from other cultures.
;hameM xUsarI saMskqwiyoM se sirPa acCe nEwika mUlyoM ko grahaNa karanA cAhiye
;
;--"3.svIkAra_karanA"-svIkAra kiyA-apanA liyA-apanAnA 
;He was recently adopted as a government candidate.
;use hAla hI me sarakArI prawyASI ke rUpa meM svIkAra kiyA gayA.
;
;--"4.mAnanA"-apanA liyA-apanAnA
;He adopted our rules.
;usane hamAre niyamoM ko mAna liyA
;
;
;         nota:--Upara xiye gaye 'adopt'Sabxa ke liye kriyA ke saBI vAkyoM kA 
;             arWa kevala eka Sabxa 'apanAnA'se spaRta ho rahA hE.awaH isake liye
;          sUwra nimna prakAra xe sakawe hEM
;     
;sUwra : apanAnA`    
;
;
